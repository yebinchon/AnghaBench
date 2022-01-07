
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int result ;


 scalar_t__ EINTR ;
 scalar_t__ ENOENT ;
 int LINE_MAX ;
 int O_RDONLY ;
 int O_WRONLY ;
 int PATH_MAX ;
 int USAGE_STR ;
 int W_OK ;
 int access (char*,int ) ;
 int assert (int) ;
 char* dirname (char*) ;
 int err (int,char*,...) ;
 scalar_t__ errno ;
 int errx (int,char*,...) ;
 int eventfd (int ,int ) ;
 int open (char*,int ) ;
 int printf (char*,char*,char*) ;
 int puts (char*) ;
 int read (int,int *,int) ;
 int snprintf (char*,int,char*,...) ;
 scalar_t__ strlen (char*) ;
 int write (int,char*,scalar_t__) ;

int main(int argc, char **argv)
{
 int efd = -1;
 int cfd = -1;
 int event_control = -1;
 char event_control_path[PATH_MAX];
 char line[LINE_MAX];
 int ret;

 if (argc != 3)
  errx(1, "%s", USAGE_STR);

 cfd = open(argv[1], O_RDONLY);
 if (cfd == -1)
  err(1, "Cannot open %s", argv[1]);

 ret = snprintf(event_control_path, PATH_MAX, "%s/cgroup.event_control",
   dirname(argv[1]));
 if (ret >= PATH_MAX)
  errx(1, "Path to cgroup.event_control is too long");

 event_control = open(event_control_path, O_WRONLY);
 if (event_control == -1)
  err(1, "Cannot open %s", event_control_path);

 efd = eventfd(0, 0);
 if (efd == -1)
  err(1, "eventfd() failed");

 ret = snprintf(line, LINE_MAX, "%d %d %s", efd, cfd, argv[2]);
 if (ret >= LINE_MAX)
  errx(1, "Arguments string is too long");

 ret = write(event_control, line, strlen(line) + 1);
 if (ret == -1)
  err(1, "Cannot write to cgroup.event_control");

 while (1) {
  uint64_t result;

  ret = read(efd, &result, sizeof(result));
  if (ret == -1) {
   if (errno == EINTR)
    continue;
   err(1, "Cannot read from eventfd");
  }
  assert(ret == sizeof(result));

  ret = access(event_control_path, W_OK);
  if ((ret == -1) && (errno == ENOENT)) {
   puts("The cgroup seems to have removed.");
   break;
  }

  if (ret == -1)
   err(1, "cgroup.event_control is not accessible any more");

  printf("%s %s: crossed\n", argv[1], argv[2]);
 }

 return 0;
}

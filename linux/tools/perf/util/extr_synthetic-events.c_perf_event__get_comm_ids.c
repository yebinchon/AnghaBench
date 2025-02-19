
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef int pid_t ;
typedef int filename ;
typedef int bf ;


 int O_RDONLY ;
 int PATH_MAX ;
 int atoi (char*) ;
 int close (int) ;
 int memcpy (char*,char*,size_t) ;
 int open (char*,int ) ;
 int pr_debug (char*,...) ;
 int pr_warning (char*,int) ;
 size_t read (int,char*,int) ;
 char* skip_spaces (char*) ;
 int snprintf (char*,int,char*,int) ;
 char* strchr (char*,char) ;
 size_t strlen (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static int perf_event__get_comm_ids(pid_t pid, char *comm, size_t len,
        pid_t *tgid, pid_t *ppid)
{
 char filename[PATH_MAX];
 char bf[4096];
 int fd;
 size_t size = 0;
 ssize_t n;
 char *name, *tgids, *ppids;

 *tgid = -1;
 *ppid = -1;

 snprintf(filename, sizeof(filename), "/proc/%d/status", pid);

 fd = open(filename, O_RDONLY);
 if (fd < 0) {
  pr_debug("couldn't open %s\n", filename);
  return -1;
 }

 n = read(fd, bf, sizeof(bf) - 1);
 close(fd);
 if (n <= 0) {
  pr_warning("Couldn't get COMM, tigd and ppid for pid %d\n",
      pid);
  return -1;
 }
 bf[n] = '\0';

 name = strstr(bf, "Name:");
 tgids = strstr(bf, "Tgid:");
 ppids = strstr(bf, "PPid:");

 if (name) {
  char *nl;

  name = skip_spaces(name + 5);
  nl = strchr(name, '\n');
  if (nl)
   *nl = '\0';

  size = strlen(name);
  if (size >= len)
   size = len - 1;
  memcpy(comm, name, size);
  comm[size] = '\0';
 } else {
  pr_debug("Name: string not found for pid %d\n", pid);
 }

 if (tgids) {
  tgids += 5;
  *tgid = atoi(tgids);
 } else {
  pr_debug("Tgid: string not found for pid %d\n", pid);
 }

 if (ppids) {
  ppids += 5;
  *ppid = atoi(ppids);
 } else {
  pr_debug("PPid: string not found for pid %d\n", pid);
 }

 return 0;
}

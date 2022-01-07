
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int O_CREAT ;
 int O_RDWR ;
 int fprintf (int ,char*,...) ;
 int open (char const*,int,int) ;
 int perror (char*) ;
 int read (int,char*,int) ;
 int stderr ;

int main(int argc, char **argv)
{
 const char *path;
 char buf[4];
 int fd, rc;

 if (argc < 2) {
  fprintf(stderr, "usage: %s <path>\n", argv[0]);
  return EXIT_FAILURE;
 }

 path = argv[1];


 fd = open(path, O_RDWR | O_CREAT, 0600);
 if (fd < 0) {
  perror("open(O_WRONLY)");
  return EXIT_FAILURE;
 }

 rc = read(fd, buf, sizeof(buf));
 if (rc != 0) {
  fprintf(stderr, "Reading a new var should return EOF\n");
  return EXIT_FAILURE;
 }

 return EXIT_SUCCESS;
}

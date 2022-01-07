
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;


 int O_RDONLY ;
 int close (int) ;
 scalar_t__ fstat (int,struct stat*) ;
 char* malloc (int) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int read (int,char*,int) ;

__attribute__((used)) static char *read_file(char *file_name, int *size)
{
 struct stat st;
 char *buf;
 int fd;

 fd = open(file_name, O_RDONLY);
 if (fd < 0) {
  perror(file_name);
  return ((void*)0);
 }
 if (fstat(fd, &st)) {
  perror("Could not determine file size");
  close(fd);
  return ((void*)0);
 }
 *size = st.st_size;
 buf = malloc(*size);
 if (!buf) {
  perror("Allocating memory failed");
  close(fd);
  return ((void*)0);
 }
 if (read(fd, buf, *size) != *size) {
  perror("File read failed");
  close(fd);
  return ((void*)0);
 }
 close(fd);
 return buf;
}

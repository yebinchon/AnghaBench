
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;


 void* MAP_FAILED ;
 int MAP_SHARED ;
 int O_RDWR ;
 int PROT_READ ;
 int PROT_WRITE ;
 int close (int) ;
 scalar_t__ fstat (int,struct stat*) ;
 void* mmap (int *,int,int,int ,int,int ) ;
 int open (char*,int ) ;
 int perror (char*) ;

__attribute__((used)) static void *map_file(char *file_name, int *size)
{
 struct stat st;
 void *map;
 int fd;

 fd = open(file_name, O_RDWR);
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
 map = mmap(((void*)0), *size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);
 if (map == MAP_FAILED) {
  perror("Mapping to memory failed");
  close(fd);
  return ((void*)0);
 }
 close(fd);
 return map;
}

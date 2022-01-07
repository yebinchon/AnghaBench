
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 void* MAP_FAILED ;
 int MAP_SHARED ;
 int O_RDWR ;
 int PCIIOC_MMAP_IS_MEM ;
 int PROT_READ ;
 int PROT_WRITE ;
 int close (int) ;
 scalar_t__ fnmatch (char*,char*,int ) ;
 int ioctl (int,int ) ;
 void* mmap (int *,size_t,int,int ,int,int ) ;
 int munmap (void*,size_t) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int sum ;

__attribute__((used)) static int map_mem(char *path, off_t offset, size_t length, int touch)
{
 int fd, rc;
 void *addr;
 int *c;

 fd = open(path, O_RDWR);
 if (fd == -1) {
  perror(path);
  return -1;
 }

 if (fnmatch("/proc/bus/pci/*", path, 0) == 0) {
  rc = ioctl(fd, PCIIOC_MMAP_IS_MEM);
  if (rc == -1)
   perror("PCIIOC_MMAP_IS_MEM ioctl");
 }

 addr = mmap(((void*)0), length, PROT_READ|PROT_WRITE, MAP_SHARED, fd, offset);
 if (addr == MAP_FAILED)
  return 1;

 if (touch) {
  c = (int *) addr;
  while (c < (int *) (addr + length))
   sum += *c++;
 }

 rc = munmap(addr, length);
 if (rc == -1) {
  perror("munmap");
  return -1;
 }

 close(fd);
 return 0;
}

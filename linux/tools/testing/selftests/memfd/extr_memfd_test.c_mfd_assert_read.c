
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int buf ;


 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int abort () ;
 int mfd_def_size ;
 void* mmap (int *,int ,int,int ,int,int ) ;
 int munmap (void*,int ) ;
 int printf (char*) ;
 int read (int,char*,int) ;

__attribute__((used)) static void mfd_assert_read(int fd)
{
 char buf[16];
 void *p;
 ssize_t l;

 l = read(fd, buf, sizeof(buf));
 if (l != sizeof(buf)) {
  printf("read() failed: %m\n");
  abort();
 }


 p = mmap(((void*)0),
   mfd_def_size,
   PROT_READ,
   MAP_PRIVATE,
   fd,
   0);
 if (p == MAP_FAILED) {
  printf("mmap() failed: %m\n");
  abort();
 }
 munmap(p, mfd_def_size);


 p = mmap(((void*)0),
   mfd_def_size,
   PROT_READ | PROT_WRITE,
   MAP_PRIVATE,
   fd,
   0);
 if (p == MAP_FAILED) {
  printf("mmap() failed: %m\n");
  abort();
 }
 munmap(p, mfd_def_size);
}

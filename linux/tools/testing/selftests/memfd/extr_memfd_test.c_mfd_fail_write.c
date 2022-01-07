
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 scalar_t__ EPERM ;
 int FALLOC_FL_KEEP_SIZE ;
 int FALLOC_FL_PUNCH_HOLE ;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int abort () ;
 int fallocate (int,int,int ,int ) ;
 int mfd_def_size ;
 void* mmap (int *,int ,int,int ,int,int ) ;
 int mprotect (void*,int ,int) ;
 int printf (char*,...) ;
 scalar_t__ write (int,char*,int) ;

__attribute__((used)) static void mfd_fail_write(int fd)
{
 ssize_t l;
 void *p;
 int r;


 l = write(fd, "data", 4);
 if (l != -EPERM) {
  printf("expected EPERM on write(), but got %d: %m\n", (int)l);
  abort();
 }


 p = mmap(((void*)0),
   mfd_def_size,
   PROT_READ | PROT_WRITE,
   MAP_SHARED,
   fd,
   0);
 if (p != MAP_FAILED) {
  printf("mmap() didn't fail as expected\n");
  abort();
 }


 p = mmap(((void*)0),
   mfd_def_size,
   PROT_WRITE,
   MAP_SHARED,
   fd,
   0);
 if (p != MAP_FAILED) {
  printf("mmap() didn't fail as expected\n");
  abort();
 }



 p = mmap(((void*)0),
   mfd_def_size,
   PROT_READ,
   MAP_SHARED,
   fd,
   0);
 if (p != MAP_FAILED) {
  r = mprotect(p, mfd_def_size, PROT_READ | PROT_WRITE);
  if (r >= 0) {
   printf("mmap()+mprotect() didn't fail as expected\n");
   abort();
  }
 }


 r = fallocate(fd,
        FALLOC_FL_PUNCH_HOLE | FALLOC_FL_KEEP_SIZE,
        0,
        mfd_def_size);
 if (r >= 0) {
  printf("fallocate(PUNCH_HOLE) didn't fail as expected\n");
  abort();
 }
}

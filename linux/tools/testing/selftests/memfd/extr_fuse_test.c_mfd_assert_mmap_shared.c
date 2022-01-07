
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int abort () ;
 int mfd_def_size ;
 void* mmap (int *,int ,int,int ,int,int ) ;
 int printf (char*) ;

__attribute__((used)) static void *mfd_assert_mmap_shared(int fd)
{
 void *p;

 p = mmap(((void*)0),
   mfd_def_size,
   PROT_READ | PROT_WRITE,
   MAP_SHARED,
   fd,
   0);
 if (p == MAP_FAILED) {
  printf("mmap() failed: %m\n");
  abort();
 }

 return p;
}

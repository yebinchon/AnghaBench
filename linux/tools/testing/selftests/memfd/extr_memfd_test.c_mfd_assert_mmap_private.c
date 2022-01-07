
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int abort () ;
 int mfd_def_size ;
 void* mmap (int *,int ,int ,int ,int,int ) ;
 int printf (char*) ;

__attribute__((used)) static void *mfd_assert_mmap_private(int fd)
{
 void *p;

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

 return p;
}

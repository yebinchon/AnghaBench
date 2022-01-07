
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int close (int) ;
 int printf (char*,char const*,unsigned int) ;
 int sys_memfd_create (char const*,unsigned int) ;

__attribute__((used)) static void mfd_fail_new(const char *name, unsigned int flags)
{
 int r;

 r = sys_memfd_create(name, flags);
 if (r >= 0) {
  printf("memfd_create(\"%s\", %u) succeeded, but failure expected\n",
         name, flags);
  close(r);
  abort();
 }
}

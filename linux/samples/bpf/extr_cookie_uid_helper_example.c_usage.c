
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static int usage(void)
{
 printf("Usage: ./run_cookie_uid_helper_example.sh"
  " bpfObjName -option\n"
  "	-t	traffic monitor test\n"
  "	-s	getsockopt cookie test\n");
 return 1;
}

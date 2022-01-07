
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_md {int dummy; } ;
typedef int __u32 ;



__attribute__((used)) static bool __is_valid_xdp_access(int off, int size)
{
 if (off < 0 || off >= sizeof(struct xdp_md))
  return 0;
 if (off % size != 0)
  return 0;
 if (size != sizeof(__u32))
  return 0;

 return 1;
}

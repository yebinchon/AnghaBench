
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_region {int dummy; } ;


 int EINVAL ;
 int ERANGE ;
 int ffs (unsigned long) ;
 int hweight16 (unsigned long) ;
 unsigned long simple_strtoul (char*,char**,int ) ;

__attribute__((used)) static int o2hb_read_block_input(struct o2hb_region *reg,
     const char *page,
     unsigned long *ret_bytes,
     unsigned int *ret_bits)
{
 unsigned long bytes;
 char *p = (char *)page;

 bytes = simple_strtoul(p, &p, 0);
 if (!p || (*p && (*p != '\n')))
  return -EINVAL;


 if (bytes > 4096 || bytes < 512)
  return -ERANGE;
 if (hweight16(bytes) != 1)
  return -EINVAL;

 if (ret_bytes)
  *ret_bytes = bytes;
 if (ret_bits)
  *ret_bits = ffs(bytes) - 1;

 return 0;
}

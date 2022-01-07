
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUMP_PREFIX_OFFSET ;
 int KERN_ALERT ;
 int print_hex_dump (int ,char*,int ,int,int,void*,int,int) ;

void
xfs_hex_dump(void *p, int length)
{
 print_hex_dump(KERN_ALERT, "", DUMP_PREFIX_OFFSET, 16, 1, p, length, 1);
}

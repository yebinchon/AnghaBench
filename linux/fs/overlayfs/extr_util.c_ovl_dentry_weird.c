
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_flags; } ;


 int DCACHE_MANAGE_TRANSIT ;
 int DCACHE_NEED_AUTOMOUNT ;
 int DCACHE_OP_COMPARE ;
 int DCACHE_OP_HASH ;

bool ovl_dentry_weird(struct dentry *dentry)
{
 return dentry->d_flags & (DCACHE_NEED_AUTOMOUNT |
      DCACHE_MANAGE_TRANSIT |
      DCACHE_OP_HASH |
      DCACHE_OP_COMPARE);
}

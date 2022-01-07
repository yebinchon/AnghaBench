
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_flags; } ;


 int DCACHE_OP_REAL ;
 int DCACHE_OP_REVALIDATE ;
 int DCACHE_OP_WEAK_REVALIDATE ;

bool ovl_dentry_remote(struct dentry *dentry)
{
 return dentry->d_flags &
  (DCACHE_OP_REVALIDATE | DCACHE_OP_WEAK_REVALIDATE |
   DCACHE_OP_REAL);
}

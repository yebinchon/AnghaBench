
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int d_genocide (struct dentry*) ;
 int shrink_dcache_parent (struct dentry*) ;

__attribute__((used)) static void sel_remove_entries(struct dentry *de)
{
 d_genocide(de);
 shrink_dcache_parent(de);
}

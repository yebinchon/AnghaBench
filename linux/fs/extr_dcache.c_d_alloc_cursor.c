
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_parent; int d_flags; int d_sb; } ;


 int DCACHE_DENTRY_CURSOR ;
 struct dentry* d_alloc_anon (int ) ;
 int dget (struct dentry*) ;

struct dentry *d_alloc_cursor(struct dentry * parent)
{
 struct dentry *dentry = d_alloc_anon(parent->d_sb);
 if (dentry) {
  dentry->d_flags |= DCACHE_DENTRY_CURSOR;
  dentry->d_parent = dget(parent);
 }
 return dentry;
}

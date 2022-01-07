
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* __d_alloc (struct super_block*,int *) ;

struct dentry *d_alloc_anon(struct super_block *sb)
{
 return __d_alloc(sb, ((void*)0));
}

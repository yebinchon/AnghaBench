
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kstatfs {int f_namelen; int f_bsize; int f_type; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {int s_magic; } ;


 int NAME_MAX ;
 int PAGE_SIZE ;

int simple_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 buf->f_type = dentry->d_sb->s_magic;
 buf->f_bsize = PAGE_SIZE;
 buf->f_namelen = NAME_MAX;
 return 0;
}

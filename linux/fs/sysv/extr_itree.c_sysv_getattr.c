
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int s_blocksize; } ;
struct path {TYPE_1__* dentry; } ;
struct kstat {int blocks; int blksize; int size; } ;
struct TYPE_2__ {struct super_block* d_sb; } ;


 int d_inode (TYPE_1__*) ;
 int generic_fillattr (int ,struct kstat*) ;
 int sysv_nblocks (struct super_block*,int ) ;

int sysv_getattr(const struct path *path, struct kstat *stat,
   u32 request_mask, unsigned int flags)
{
 struct super_block *s = path->dentry->d_sb;
 generic_fillattr(d_inode(path->dentry), stat);
 stat->blocks = (s->s_blocksize / 512) * sysv_nblocks(s, stat->size);
 stat->blksize = s->s_blocksize;
 return 0;
}

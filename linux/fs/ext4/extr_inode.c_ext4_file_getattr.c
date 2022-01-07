
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct path {int dentry; } ;
struct kstat {int blocks; int size; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_4__ {int i_reserved_data_blocks; } ;
struct TYPE_3__ {int s_blocksize_bits; } ;


 int EXT4_C2B (int ,int ) ;
 TYPE_2__* EXT4_I (struct inode*) ;
 int EXT4_SB (TYPE_1__*) ;
 struct inode* d_inode (int ) ;
 int ext4_getattr (struct path const*,struct kstat*,int ,unsigned int) ;
 int ext4_has_inline_data (struct inode*) ;
 scalar_t__ unlikely (int ) ;

int ext4_file_getattr(const struct path *path, struct kstat *stat,
        u32 request_mask, unsigned int query_flags)
{
 struct inode *inode = d_inode(path->dentry);
 u64 delalloc_blocks;

 ext4_getattr(path, stat, request_mask, query_flags);







 if (unlikely(ext4_has_inline_data(inode)))
  stat->blocks += (stat->size + 511) >> 9;
 delalloc_blocks = EXT4_C2B(EXT4_SB(inode->i_sb),
       EXT4_I(inode)->i_reserved_data_blocks);
 stat->blocks += delalloc_blocks << (inode->i_sb->s_blocksize_bits - 9);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void nilfs_cpfile_header ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int bh_offset (struct buffer_head*) ;

__attribute__((used)) static inline struct nilfs_cpfile_header *
nilfs_cpfile_block_get_header(const struct inode *cpfile,
         struct buffer_head *bh,
         void *kaddr)
{
 return kaddr + bh_offset(bh);
}

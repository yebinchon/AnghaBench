
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int b_page; } ;
typedef int ino_t ;


 int kunmap (int ) ;

__attribute__((used)) static inline void nilfs_ifile_unmap_inode(struct inode *ifile, ino_t ino,
        struct buffer_head *ibh)
{
 kunmap(ibh->b_page);
}

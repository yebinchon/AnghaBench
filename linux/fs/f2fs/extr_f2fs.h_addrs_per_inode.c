
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 unsigned int ALIGN_DOWN (unsigned int,int) ;
 unsigned int CUR_ADDRS_PER_INODE (struct inode*) ;
 unsigned int get_inline_xattr_addrs (struct inode*) ;

__attribute__((used)) static inline unsigned int addrs_per_inode(struct inode *inode)
{
 unsigned int addrs = CUR_ADDRS_PER_INODE(inode) -
    get_inline_xattr_addrs(inode);
 return ALIGN_DOWN(addrs, 1);
}

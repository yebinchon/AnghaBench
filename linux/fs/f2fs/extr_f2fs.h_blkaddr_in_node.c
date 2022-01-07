
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * addr; } ;
struct TYPE_3__ {int * i_addr; } ;
struct f2fs_node {TYPE_2__ dn; TYPE_1__ i; } ;
typedef int __le32 ;


 scalar_t__ RAW_IS_INODE (struct f2fs_node*) ;

__attribute__((used)) static inline __le32 *blkaddr_in_node(struct f2fs_node *node)
{
 return RAW_IS_INODE(node) ? node->i.i_addr : node->dn.addr;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct inode {int dummy; } ;


 int GOSSIP_SUPER_DEBUG ;
 int gossip_debug (int ,char*) ;
 int orangefs_inode_setattr (struct inode*) ;

__attribute__((used)) static int orangefs_write_inode(struct inode *inode,
    struct writeback_control *wbc)
{
 gossip_debug(GOSSIP_SUPER_DEBUG, "orangefs_write_inode\n");
 return orangefs_inode_setattr(inode);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_data; int i_lru; int i_wb_list; int i_io_list; int i_devices; int i_hash; } ;


 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int __address_space_init_once (int *) ;
 int i_size_ordered_init (struct inode*) ;
 int memset (struct inode*,int ,int) ;

void inode_init_once(struct inode *inode)
{
 memset(inode, 0, sizeof(*inode));
 INIT_HLIST_NODE(&inode->i_hash);
 INIT_LIST_HEAD(&inode->i_devices);
 INIT_LIST_HEAD(&inode->i_io_list);
 INIT_LIST_HEAD(&inode->i_wb_list);
 INIT_LIST_HEAD(&inode->i_lru);
 __address_space_init_once(&inode->i_data);
 i_size_ordered_init(inode);
}

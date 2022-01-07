
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_transaction_handle {int dummy; } ;
struct inode {int i_size; } ;


 int reiserfs_update_sd_size (struct reiserfs_transaction_handle*,struct inode*,int ) ;

__attribute__((used)) static inline void reiserfs_update_sd(struct reiserfs_transaction_handle *th,
          struct inode *inode)
{
 reiserfs_update_sd_size(th, inode, inode->i_size);
}

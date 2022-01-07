
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct treepath {int dummy; } ;
struct reiserfs_transaction_handle {int dummy; } ;
struct inode {int dummy; } ;
typedef int sector_t ;
struct TYPE_3__ {int preallocate; int formatted_node; int block; struct inode* inode; struct treepath* path; struct reiserfs_transaction_handle* th; } ;
typedef TYPE_1__ reiserfs_blocknr_hint_t ;
typedef int b_blocknr_t ;


 int reiserfs_allocate_blocknrs (TYPE_1__*,int *,int,int ) ;

__attribute__((used)) static inline int reiserfs_new_unf_blocknrs2(struct reiserfs_transaction_handle
          *th, struct inode *inode,
          b_blocknr_t * new_blocknrs,
          struct treepath *path,
          sector_t block)
{
 reiserfs_blocknr_hint_t hint = {
  .th = th,
  .path = path,
  .inode = inode,
  .block = block,
  .formatted_node = 0,
  .preallocate = 1
 };
 return reiserfs_allocate_blocknrs(&hint, new_blocknrs, 1, 0);
}

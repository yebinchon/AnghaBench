
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct TYPE_2__ {int i_flags; } ;


 TYPE_1__* REISERFS_I (struct inode*) ;
 int i_data_log ;
 scalar_t__ reiserfs_data_log (int ) ;

__attribute__((used)) static inline int reiserfs_file_data_log(struct inode *inode)
{
 if (reiserfs_data_log(inode->i_sb) ||
     (REISERFS_I(inode)->i_flags & i_data_log))
  return 1;
 return 0;
}

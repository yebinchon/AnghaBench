
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct writeback_control {scalar_t__ sync_mode; } ;
struct inode {int i_mode; } ;
struct TYPE_4__ {scalar_t__ cp_task; } ;
struct TYPE_3__ {scalar_t__ min_seq_blocks; } ;


 TYPE_2__* F2FS_I (struct inode*) ;
 int F2FS_I_SB (struct inode*) ;
 scalar_t__ IS_NOQUOTA (struct inode*) ;
 TYPE_1__* SM_I (int ) ;
 int S_ISREG (int ) ;
 scalar_t__ WB_SYNC_ALL ;
 scalar_t__ get_dirty_pages (struct inode*) ;

__attribute__((used)) static inline bool __should_serialize_io(struct inode *inode,
     struct writeback_control *wbc)
{
 if (!S_ISREG(inode->i_mode))
  return 0;
 if (IS_NOQUOTA(inode))
  return 0;

 if (F2FS_I(inode)->cp_task)
  return 0;
 if (wbc->sync_mode != WB_SYNC_ALL)
  return 1;
 if (get_dirty_pages(inode) >= SM_I(F2FS_I_SB(inode))->min_seq_blocks)
  return 1;
 return 0;
}

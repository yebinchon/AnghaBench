
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ next_index; } ;


 TYPE_1__* JFS_IP (struct inode*) ;
 scalar_t__ MAX_INLINE_DIRTABLE_ENTRY ;

__attribute__((used)) static inline int jfs_dirtable_inline(struct inode *inode)
{
 return (JFS_IP(inode)->next_index <= (MAX_INLINE_DIRTABLE_ENTRY + 1));
}

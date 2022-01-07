
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct TYPE_2__ {scalar_t__ log; } ;


 TYPE_1__* JFS_SBI (int ) ;

__attribute__((used)) static inline int isReadOnly(struct inode *inode)
{
 if (JFS_SBI(inode->i_sb)->log)
  return 0;
 return 1;
}

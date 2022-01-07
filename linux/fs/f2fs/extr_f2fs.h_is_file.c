
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int i_advise; } ;


 TYPE_1__* F2FS_I (struct inode*) ;

__attribute__((used)) static inline int is_file(struct inode *inode, int type)
{
 return F2FS_I(inode)->i_advise & type;
}

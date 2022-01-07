
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ k_objectid; } ;


 TYPE_1__* INODE_PKEY (struct inode*) ;
 int dquot_initialize (struct inode*) ;
 int inode_init_owner (struct inode*,struct inode*,int ) ;

__attribute__((used)) static int new_inode_init(struct inode *inode, struct inode *dir, umode_t mode)
{




 INODE_PKEY(inode)->k_objectid = 0;





 inode_init_owner(inode, dir, mode);
 return dquot_initialize(inode);
}

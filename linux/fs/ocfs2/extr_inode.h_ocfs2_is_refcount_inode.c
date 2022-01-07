
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int ip_dyn_features; } ;


 int OCFS2_HAS_REFCOUNT_FL ;
 TYPE_1__* OCFS2_I (struct inode*) ;

__attribute__((used)) static inline bool ocfs2_is_refcount_inode(struct inode *inode)
{
 return (OCFS2_I(inode)->ip_dyn_features & OCFS2_HAS_REFCOUNT_FL);
}

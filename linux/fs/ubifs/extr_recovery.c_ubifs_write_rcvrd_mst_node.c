
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ubifs_info {TYPE_2__* rcvrd_mst_node; TYPE_1__* mst_node; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int flags; } ;


 int UBIFS_MST_DIRTY ;
 int cpu_to_le32 (int ) ;
 int kfree (TYPE_2__*) ;
 int write_rcvrd_mst_node (struct ubifs_info*,TYPE_2__*) ;

int ubifs_write_rcvrd_mst_node(struct ubifs_info *c)
{
 int err;

 if (!c->rcvrd_mst_node)
  return 0;
 c->rcvrd_mst_node->flags |= cpu_to_le32(UBIFS_MST_DIRTY);
 c->mst_node->flags |= cpu_to_le32(UBIFS_MST_DIRTY);
 err = write_rcvrd_mst_node(c, c->rcvrd_mst_node);
 if (err)
  return err;
 kfree(c->rcvrd_mst_node);
 c->rcvrd_mst_node = ((void*)0);
 return 0;
}

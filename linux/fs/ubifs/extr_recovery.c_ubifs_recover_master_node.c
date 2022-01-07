
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sqnum; } ;
struct ubifs_mst_node {TYPE_1__ ch; int flags; } ;
struct ubifs_info {int mst_node_alsz; int leb_size; struct ubifs_mst_node* mst_node; scalar_t__ max_sqnum; struct ubifs_mst_node* rcvrd_mst_node; scalar_t__ ro_mount; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int UBIFS_MST_DIRTY ;
 scalar_t__ UBIFS_MST_LNUM ;
 int UBIFS_MST_NODE_SZ ;
 int UBIFS_MST_RCVRY ;
 int cpu_to_le32 (int ) ;
 int dbg_rcvry (char*) ;
 int get_master_node (struct ubifs_info*,scalar_t__,void**,struct ubifs_mst_node**,void**) ;
 struct ubifs_mst_node* kmalloc (int const,int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int memcpy (struct ubifs_mst_node*,struct ubifs_mst_node*,int ) ;
 scalar_t__ ubifs_compare_master_node (struct ubifs_info*,struct ubifs_mst_node*,struct ubifs_mst_node*) ;
 int ubifs_dump_node (struct ubifs_info*,struct ubifs_mst_node*) ;
 int ubifs_err (struct ubifs_info*,char*) ;
 int ubifs_msg (struct ubifs_info*,char*,scalar_t__) ;
 int vfree (void*) ;
 int write_rcvrd_mst_node (struct ubifs_info*,struct ubifs_mst_node*) ;

int ubifs_recover_master_node(struct ubifs_info *c)
{
 void *buf1 = ((void*)0), *buf2 = ((void*)0), *cor1 = ((void*)0), *cor2 = ((void*)0);
 struct ubifs_mst_node *mst1 = ((void*)0), *mst2 = ((void*)0), *mst;
 const int sz = c->mst_node_alsz;
 int err, offs1, offs2;

 dbg_rcvry("recovery");

 err = get_master_node(c, UBIFS_MST_LNUM, &buf1, &mst1, &cor1);
 if (err)
  goto out_free;

 err = get_master_node(c, UBIFS_MST_LNUM + 1, &buf2, &mst2, &cor2);
 if (err)
  goto out_free;

 if (mst1) {
  offs1 = (void *)mst1 - buf1;
  if ((le32_to_cpu(mst1->flags) & UBIFS_MST_RCVRY) &&
      (offs1 == 0 && !cor1)) {




   dbg_rcvry("recovery recovery");
   mst = mst1;
  } else if (mst2) {
   offs2 = (void *)mst2 - buf2;
   if (offs1 == offs2) {

    if (ubifs_compare_master_node(c, mst1, mst2))
     goto out_err;
    mst = mst1;
   } else if (offs2 + sz == offs1) {

    if (cor1)
     goto out_err;
    mst = mst1;
   } else if (offs1 == 0 &&
       c->leb_size - offs2 - sz < sz) {

    if (cor1)
     goto out_err;
    mst = mst1;
   } else
    goto out_err;
  } else {





   if (offs1 != 0 || cor1)
    goto out_err;
   mst = mst1;
  }
 } else {
  if (!mst2)
   goto out_err;




  offs2 = (void *)mst2 - buf2;
  if (offs2 + sz + sz <= c->leb_size)
   goto out_err;
  mst = mst2;
 }

 ubifs_msg(c, "recovered master node from LEB %d",
    (mst == mst1 ? UBIFS_MST_LNUM : UBIFS_MST_LNUM + 1));

 memcpy(c->mst_node, mst, UBIFS_MST_NODE_SZ);

 if (c->ro_mount) {

  c->rcvrd_mst_node = kmalloc(sz, GFP_KERNEL);
  if (!c->rcvrd_mst_node) {
   err = -ENOMEM;
   goto out_free;
  }
  memcpy(c->rcvrd_mst_node, c->mst_node, UBIFS_MST_NODE_SZ);
  c->mst_node->flags |= cpu_to_le32(UBIFS_MST_DIRTY);
 } else {

  c->max_sqnum = le64_to_cpu(mst->ch.sqnum) - 1;
  err = write_rcvrd_mst_node(c, c->mst_node);
  if (err)
   goto out_free;
 }

 vfree(buf2);
 vfree(buf1);

 return 0;

out_err:
 err = -EINVAL;
out_free:
 ubifs_err(c, "failed to recover master node");
 if (mst1) {
  ubifs_err(c, "dumping first master node");
  ubifs_dump_node(c, mst1);
 }
 if (mst2) {
  ubifs_err(c, "dumping second master node");
  ubifs_dump_node(c, mst2);
 }
 vfree(buf2);
 vfree(buf1);
 return err;
}

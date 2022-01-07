
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct genl_family {int id; int n_mcgrps; int * attrbuf; scalar_t__ mcgrp_offset; int * mcgrps; scalar_t__ maxattr; int parallel_ops; int name; } ;


 int CTRL_CMD_NEWFAMILY ;
 int CTRL_CMD_NEWMCAST_GRP ;
 int EEXIST ;
 int ENOMEM ;
 int GENL_ID_CTRL ;
 int GENL_ID_PMCRAID ;
 int GENL_ID_VFS_DQUOT ;
 int GENL_MAX_ID ;
 int GENL_START_ALLOC ;
 int GFP_KERNEL ;
 struct genl_family genl_ctrl ;
 int genl_ctrl_event (int ,struct genl_family*,int *,scalar_t__) ;
 int genl_fam_idr ;
 scalar_t__ genl_family_find_byname (int ) ;
 int genl_lock_all () ;
 int genl_unlock_all () ;
 int genl_validate_assign_mc_groups (struct genl_family*) ;
 int genl_validate_ops (struct genl_family*) ;
 int idr_alloc_cyclic (int *,struct genl_family*,int,int,int ) ;
 int idr_remove (int *,int) ;
 int kfree (int *) ;
 int * kmalloc_array (scalar_t__,int,int ) ;
 scalar_t__ strcmp (int ,char*) ;

int genl_register_family(struct genl_family *family)
{
 int err, i;
 int start = GENL_START_ALLOC, end = GENL_MAX_ID;

 err = genl_validate_ops(family);
 if (err)
  return err;

 genl_lock_all();

 if (genl_family_find_byname(family->name)) {
  err = -EEXIST;
  goto errout_locked;
 }
 if (family == &genl_ctrl) {

  start = end = GENL_ID_CTRL;
 } else if (strcmp(family->name, "pmcraid") == 0) {
  start = end = GENL_ID_PMCRAID;
 } else if (strcmp(family->name, "VFS_DQUOT") == 0) {
  start = end = GENL_ID_VFS_DQUOT;
 }

 if (family->maxattr && !family->parallel_ops) {
  family->attrbuf = kmalloc_array(family->maxattr + 1,
      sizeof(struct nlattr *),
      GFP_KERNEL);
  if (family->attrbuf == ((void*)0)) {
   err = -ENOMEM;
   goto errout_locked;
  }
 } else
  family->attrbuf = ((void*)0);

 family->id = idr_alloc_cyclic(&genl_fam_idr, family,
          start, end + 1, GFP_KERNEL);
 if (family->id < 0) {
  err = family->id;
  goto errout_free;
 }

 err = genl_validate_assign_mc_groups(family);
 if (err)
  goto errout_remove;

 genl_unlock_all();


 genl_ctrl_event(CTRL_CMD_NEWFAMILY, family, ((void*)0), 0);
 for (i = 0; i < family->n_mcgrps; i++)
  genl_ctrl_event(CTRL_CMD_NEWMCAST_GRP, family,
    &family->mcgrps[i], family->mcgrp_offset + i);

 return 0;

errout_remove:
 idr_remove(&genl_fam_idr, family->id);
errout_free:
 kfree(family->attrbuf);
errout_locked:
 genl_unlock_all();
 return err;
}

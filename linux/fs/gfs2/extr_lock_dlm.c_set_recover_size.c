
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lm_lockstruct {int ls_recover_size; int* ls_recover_submit; int* ls_recover_result; int ls_recover_spin; scalar_t__ ls_lvb_bits; } ;
struct gfs2_sbd {struct lm_lockstruct sd_lockstruct; } ;
struct dlm_slot {int slot; } ;


 int ENOMEM ;
 int GDLM_LVB_SIZE ;
 int GFP_NOFS ;
 scalar_t__ RECOVER_SIZE_INC ;
 int* kcalloc (int,int,int ) ;
 int kfree (int*) ;
 scalar_t__ kzalloc (int ,int ) ;
 int memcpy (int*,int*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int set_recover_size(struct gfs2_sbd *sdp, struct dlm_slot *slots,
       int num_slots)
{
 struct lm_lockstruct *ls = &sdp->sd_lockstruct;
 uint32_t *submit = ((void*)0);
 uint32_t *result = ((void*)0);
 uint32_t old_size, new_size;
 int i, max_jid;

 if (!ls->ls_lvb_bits) {
  ls->ls_lvb_bits = kzalloc(GDLM_LVB_SIZE, GFP_NOFS);
  if (!ls->ls_lvb_bits)
   return -ENOMEM;
 }

 max_jid = 0;
 for (i = 0; i < num_slots; i++) {
  if (max_jid < slots[i].slot - 1)
   max_jid = slots[i].slot - 1;
 }

 old_size = ls->ls_recover_size;
 new_size = old_size;
 while (new_size < max_jid + 1)
  new_size += RECOVER_SIZE_INC;
 if (new_size == old_size)
  return 0;

 submit = kcalloc(new_size, sizeof(uint32_t), GFP_NOFS);
 result = kcalloc(new_size, sizeof(uint32_t), GFP_NOFS);
 if (!submit || !result) {
  kfree(submit);
  kfree(result);
  return -ENOMEM;
 }

 spin_lock(&ls->ls_recover_spin);
 memcpy(submit, ls->ls_recover_submit, old_size * sizeof(uint32_t));
 memcpy(result, ls->ls_recover_result, old_size * sizeof(uint32_t));
 kfree(ls->ls_recover_submit);
 kfree(ls->ls_recover_result);
 ls->ls_recover_submit = submit;
 ls->ls_recover_result = result;
 ls->ls_recover_size = new_size;
 spin_unlock(&ls->ls_recover_spin);
 return 0;
}

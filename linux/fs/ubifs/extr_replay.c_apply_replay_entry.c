
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {scalar_t__ need_recovery; } ;
struct replay_entry {int new_size; scalar_t__ deletion; int key; int hash; int len; int offs; int lnum; int nm; int sqnum; } ;
typedef int ino_t ;




 int dbg_mntk (int *,char*,int ,int ,int ,scalar_t__,int ) ;
 int inode_still_linked (struct ubifs_info*,struct replay_entry*) ;
 scalar_t__ is_hash_key (struct ubifs_info*,int *) ;
 int key_inum (struct ubifs_info*,int *) ;
 int key_type (struct ubifs_info*,int *) ;
 int trun_remove_range (struct ubifs_info*,struct replay_entry*) ;
 int ubifs_recover_size_accum (struct ubifs_info*,int *,scalar_t__,int ) ;
 int ubifs_tnc_add (struct ubifs_info*,int *,int ,int ,int ,int ) ;
 int ubifs_tnc_add_nm (struct ubifs_info*,int *,int ,int ,int ,int ,int *) ;
 int ubifs_tnc_remove (struct ubifs_info*,int *) ;
 int ubifs_tnc_remove_ino (struct ubifs_info*,int ) ;
 int ubifs_tnc_remove_nm (struct ubifs_info*,int *,int *) ;

__attribute__((used)) static int apply_replay_entry(struct ubifs_info *c, struct replay_entry *r)
{
 int err;

 dbg_mntk(&r->key, "LEB %d:%d len %d deletion %d sqnum %llu key ",
   r->lnum, r->offs, r->len, r->deletion, r->sqnum);

 if (is_hash_key(c, &r->key)) {
  if (r->deletion)
   err = ubifs_tnc_remove_nm(c, &r->key, &r->nm);
  else
   err = ubifs_tnc_add_nm(c, &r->key, r->lnum, r->offs,
            r->len, r->hash, &r->nm);
 } else {
  if (r->deletion)
   switch (key_type(c, &r->key)) {
   case 129:
   {
    ino_t inum = key_inum(c, &r->key);

    if (inode_still_linked(c, r)) {
     err = 0;
     break;
    }

    err = ubifs_tnc_remove_ino(c, inum);
    break;
   }
   case 128:
    err = trun_remove_range(c, r);
    break;
   default:
    err = ubifs_tnc_remove(c, &r->key);
    break;
   }
  else
   err = ubifs_tnc_add(c, &r->key, r->lnum, r->offs,
         r->len, r->hash);
  if (err)
   return err;

  if (c->need_recovery)
   err = ubifs_recover_size_accum(c, &r->key, r->deletion,
             r->new_size);
 }

 return err;
}

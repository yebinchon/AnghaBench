
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ubifs_info {TYPE_1__* mst_node; } ;
struct TYPE_2__ {int hash_lpt; } ;


 int EPERM ;
 int UBIFS_HASH_ARR_SZ ;
 int ubifs_authenticated (struct ubifs_info*) ;
 scalar_t__ ubifs_check_hash (struct ubifs_info*,int ,int *) ;
 int ubifs_err (struct ubifs_info*,char*) ;
 int ubifs_lpt_calc_hash (struct ubifs_info*,int *) ;

__attribute__((used)) static int lpt_check_hash(struct ubifs_info *c)
{
 int err;
 u8 hash[UBIFS_HASH_ARR_SZ];

 if (!ubifs_authenticated(c))
  return 0;

 err = ubifs_lpt_calc_hash(c, hash);
 if (err)
  return err;

 if (ubifs_check_hash(c, c->mst_node->hash_lpt, hash)) {
  err = -EPERM;
  ubifs_err(c, "Failed to authenticate LPT");
 } else {
  err = 0;
 }

 return err;
}

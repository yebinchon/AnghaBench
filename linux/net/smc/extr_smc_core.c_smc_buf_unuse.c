
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct smc_link_group {int rmbs_lock; int * lnk; int is_smcd; } ;
struct smc_connection {TYPE_2__* rmb_desc; TYPE_1__* sndbuf_desc; } ;
struct TYPE_5__ {int list; scalar_t__ used; int regerr; } ;
struct TYPE_4__ {scalar_t__ used; } ;


 size_t SMC_SINGLE_LINK ;
 int list_del (int *) ;
 int smc_buf_free (struct smc_link_group*,int,TYPE_2__*) ;
 int smc_llc_do_delete_rkey (int *,TYPE_2__*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void smc_buf_unuse(struct smc_connection *conn,
     struct smc_link_group *lgr)
{
 if (conn->sndbuf_desc)
  conn->sndbuf_desc->used = 0;
 if (conn->rmb_desc) {
  if (!conn->rmb_desc->regerr) {
   if (!lgr->is_smcd) {

    smc_llc_do_delete_rkey(
      &lgr->lnk[SMC_SINGLE_LINK],
      conn->rmb_desc);
   }
   conn->rmb_desc->used = 0;
  } else {

   write_lock_bh(&lgr->rmbs_lock);
   list_del(&conn->rmb_desc->list);
   write_unlock_bh(&lgr->rmbs_lock);

   smc_buf_free(lgr, 1, conn->rmb_desc);
  }
 }
}

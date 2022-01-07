
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mr_table {int mfc_hash; int ipmr_expire_timer; } ;


 int MRT6_FLUSH_MFC ;
 int MRT6_FLUSH_MFC_STATIC ;
 int MRT6_FLUSH_MIFS ;
 int MRT6_FLUSH_MIFS_STATIC ;
 int del_timer_sync (int *) ;
 int kfree (struct mr_table*) ;
 int mroute_clean_tables (struct mr_table*,int) ;
 int rhltable_destroy (int *) ;

__attribute__((used)) static void ip6mr_free_table(struct mr_table *mrt)
{
 del_timer_sync(&mrt->ipmr_expire_timer);
 mroute_clean_tables(mrt, MRT6_FLUSH_MIFS | MRT6_FLUSH_MIFS_STATIC |
     MRT6_FLUSH_MFC | MRT6_FLUSH_MFC_STATIC);
 rhltable_destroy(&mrt->mfc_hash);
 kfree(mrt);
}

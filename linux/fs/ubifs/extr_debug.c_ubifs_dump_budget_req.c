
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_budget_req {int dd_growth; int data_growth; int idx_growth; int mod_dent; int new_dent; int dirtied_page; int new_page; int dirtied_ino_d; int new_ino_d; int dirtied_ino; int new_ino; } ;


 int dbg_lock ;
 int pr_err (char*,int ,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ubifs_dump_budget_req(const struct ubifs_budget_req *req)
{
 spin_lock(&dbg_lock);
 pr_err("Budgeting request: new_ino %d, dirtied_ino %d\n",
        req->new_ino, req->dirtied_ino);
 pr_err("\tnew_ino_d   %d, dirtied_ino_d %d\n",
        req->new_ino_d, req->dirtied_ino_d);
 pr_err("\tnew_page    %d, dirtied_page %d\n",
        req->new_page, req->dirtied_page);
 pr_err("\tnew_dent    %d, mod_dent     %d\n",
        req->new_dent, req->mod_dent);
 pr_err("\tidx_growth  %d\n", req->idx_growth);
 pr_err("\tdata_growth %d dd_growth     %d\n",
        req->data_growth, req->dd_growth);
 spin_unlock(&dbg_lock);
}

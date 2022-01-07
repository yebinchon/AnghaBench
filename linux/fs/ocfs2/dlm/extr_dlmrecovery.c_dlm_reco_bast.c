
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {int name; int node_num; } ;


 int mlog (int ,char*,int ,int ) ;

__attribute__((used)) static void dlm_reco_bast(void *astdata, int blocked_type)
{
 struct dlm_ctxt *dlm = astdata;
 mlog(0, "bast for recovery lock fired!, this=%u, dlm=%s\n",
      dlm->node_num, dlm->name);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domain_join_ctxt {int live_map; } ;
struct dlm_ctxt {int spinlock; int live_nodes_map; } ;
typedef enum dlm_query_join_response_code { ____Placeholder_dlm_query_join_response_code } dlm_query_join_response_code ;


 int JOIN_DISALLOW ;
 int memcmp (int ,int ,int) ;
 int mlog (int ,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int dlm_should_restart_join(struct dlm_ctxt *dlm,
       struct domain_join_ctxt *ctxt,
       enum dlm_query_join_response_code response)
{
 int ret;

 if (response == JOIN_DISALLOW) {
  mlog(0, "Latest response of disallow -- should restart\n");
  return 1;
 }

 spin_lock(&dlm->spinlock);


 ret = memcmp(ctxt->live_map, dlm->live_nodes_map,
       sizeof(dlm->live_nodes_map));
 spin_unlock(&dlm->spinlock);

 if (ret)
  mlog(0, "Node maps changed -- should restart\n");

 return ret;
}

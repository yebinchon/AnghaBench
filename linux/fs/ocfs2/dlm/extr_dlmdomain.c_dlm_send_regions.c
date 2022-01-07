
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_query_region {int qr_node; int qr_numregions; char* qr_regions; int qr_namelen; int qr_domain; } ;
struct dlm_ctxt {int node_num; int name; } ;


 int DLM_MOD_KEY ;
 int DLM_QUERY_REGION ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ML_ERROR ;
 int O2HB_MAX_REGION_NAME_LEN ;
 int O2NM_MAX_NODES ;
 int O2NM_MAX_REGIONS ;
 int find_next_bit (unsigned long*,int,int) ;
 int kfree (struct dlm_query_region*) ;
 struct dlm_query_region* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int mlog (int ,char*,int,...) ;
 int mlog_errno (int) ;
 int o2hb_get_all_regions (char*,int ) ;
 scalar_t__ o2hb_global_heartbeat_active () ;
 int o2net_send_message (int ,int ,struct dlm_query_region*,int,int,int*) ;
 int strlen (int ) ;

__attribute__((used)) static int dlm_send_regions(struct dlm_ctxt *dlm, unsigned long *node_map)
{
 struct dlm_query_region *qr = ((void*)0);
 int status, ret = 0, i;
 char *p;

 if (find_next_bit(node_map, O2NM_MAX_NODES, 0) >= O2NM_MAX_NODES)
  goto bail;

 qr = kzalloc(sizeof(struct dlm_query_region), GFP_KERNEL);
 if (!qr) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto bail;
 }

 qr->qr_node = dlm->node_num;
 qr->qr_namelen = strlen(dlm->name);
 memcpy(qr->qr_domain, dlm->name, qr->qr_namelen);

 if (o2hb_global_heartbeat_active())
  qr->qr_numregions = o2hb_get_all_regions(qr->qr_regions,
        O2NM_MAX_REGIONS);

 p = qr->qr_regions;
 for (i = 0; i < qr->qr_numregions; ++i, p += O2HB_MAX_REGION_NAME_LEN)
  mlog(0, "Region %.*s\n", O2HB_MAX_REGION_NAME_LEN, p);

 i = -1;
 while ((i = find_next_bit(node_map, O2NM_MAX_NODES,
      i + 1)) < O2NM_MAX_NODES) {
  if (i == dlm->node_num)
   continue;

  mlog(0, "Sending regions to node %d\n", i);

  ret = o2net_send_message(DLM_QUERY_REGION, DLM_MOD_KEY, qr,
      sizeof(struct dlm_query_region),
      i, &status);
  if (ret >= 0)
   ret = status;
  if (ret) {
   mlog(ML_ERROR, "Region mismatch %d, node %d\n",
        ret, i);
   break;
  }
 }

bail:
 kfree(qr);
 return ret;
}

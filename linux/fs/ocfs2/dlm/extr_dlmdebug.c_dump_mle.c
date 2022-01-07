
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_master_list_entry {scalar_t__ type; int master; int new_master; int node_map; int response_map; int vote_map; int maybe_map; int mle_refs; int inuse; int hb_events; int mnamelen; int mname; } ;


 scalar_t__ DLM_MLE_BLOCK ;
 scalar_t__ DLM_MLE_MASTER ;
 int O2NM_MAX_NODES ;
 int kref_read (int *) ;
 int list_empty (int *) ;
 scalar_t__ snprintf (char*,int,char*,...) ;
 scalar_t__ stringify_lockname (int ,int ,char*,int) ;
 scalar_t__ stringify_nodemap (int ,int ,char*,int) ;

__attribute__((used)) static int dump_mle(struct dlm_master_list_entry *mle, char *buf, int len)
{
 int out = 0;
 char *mle_type;

 if (mle->type == DLM_MLE_BLOCK)
  mle_type = "BLK";
 else if (mle->type == DLM_MLE_MASTER)
  mle_type = "MAS";
 else
  mle_type = "MIG";

 out += stringify_lockname(mle->mname, mle->mnamelen, buf + out, len - out);
 out += snprintf(buf + out, len - out,
   "\t%3s\tmas=%3u\tnew=%3u\tevt=%1d\tuse=%1d\tref=%3d\n",
   mle_type, mle->master, mle->new_master,
   !list_empty(&mle->hb_events),
   !!mle->inuse,
   kref_read(&mle->mle_refs));

 out += snprintf(buf + out, len - out, "Maybe=");
 out += stringify_nodemap(mle->maybe_map, O2NM_MAX_NODES,
     buf + out, len - out);
 out += snprintf(buf + out, len - out, "\n");

 out += snprintf(buf + out, len - out, "Vote=");
 out += stringify_nodemap(mle->vote_map, O2NM_MAX_NODES,
     buf + out, len - out);
 out += snprintf(buf + out, len - out, "\n");

 out += snprintf(buf + out, len - out, "Response=");
 out += stringify_nodemap(mle->response_map, O2NM_MAX_NODES,
     buf + out, len - out);
 out += snprintf(buf + out, len - out, "\n");

 out += snprintf(buf + out, len - out, "Node=");
 out += stringify_nodemap(mle->node_map, O2NM_MAX_NODES,
     buf + out, len - out);
 out += snprintf(buf + out, len - out, "\n");

 out += snprintf(buf + out, len - out, "\n");

 return out;
}

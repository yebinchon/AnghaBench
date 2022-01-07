
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nodes; int preferred_node; } ;
struct mempolicy {int flags; unsigned short mode; TYPE_1__ v; } ;
typedef int nodemask_t ;




 unsigned short MPOL_F_LOCAL ;
 int MPOL_F_MORON ;
 unsigned short MPOL_F_RELATIVE_NODES ;
 unsigned short MPOL_F_STATIC_NODES ;

 unsigned short MPOL_LOCAL ;
 unsigned short MPOL_MODE_FLAGS ;

 int NODE_MASK_NONE ;
 int WARN_ON_ONCE (int) ;
 struct mempolicy default_policy ;
 int node_set (int ,int ) ;
 int nodemask_pr_args (int *) ;
 int nodes_empty (int ) ;
 char** policy_modes ;
 int scnprintf (char*,int,char*,int ) ;
 int snprintf (char*,int,char*,...) ;

void mpol_to_str(char *buffer, int maxlen, struct mempolicy *pol)
{
 char *p = buffer;
 nodemask_t nodes = NODE_MASK_NONE;
 unsigned short mode = 130;
 unsigned short flags = 0;

 if (pol && pol != &default_policy && !(pol->flags & MPOL_F_MORON)) {
  mode = pol->mode;
  flags = pol->flags;
 }

 switch (mode) {
 case 130:
  break;
 case 128:
  if (flags & MPOL_F_LOCAL)
   mode = MPOL_LOCAL;
  else
   node_set(pol->v.preferred_node, nodes);
  break;
 case 131:
 case 129:
  nodes = pol->v.nodes;
  break;
 default:
  WARN_ON_ONCE(1);
  snprintf(p, maxlen, "unknown");
  return;
 }

 p += snprintf(p, maxlen, "%s", policy_modes[mode]);

 if (flags & MPOL_MODE_FLAGS) {
  p += snprintf(p, buffer + maxlen - p, "=");




  if (flags & MPOL_F_STATIC_NODES)
   p += snprintf(p, buffer + maxlen - p, "static");
  else if (flags & MPOL_F_RELATIVE_NODES)
   p += snprintf(p, buffer + maxlen - p, "relative");
 }

 if (!nodes_empty(nodes))
  p += scnprintf(p, buffer + maxlen - p, ":%*pbl",
          nodemask_pr_args(&nodes));
}

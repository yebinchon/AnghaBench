
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_dir_entry {int dummy; } ;
struct TYPE_2__ {int proc_net_sctp; } ;
struct net {TYPE_1__ sctp; } ;


 int pr_warn (char*) ;
 struct proc_dir_entry* proc_create_seq (char*,int ,int ,int *) ;
 int sctp_objcnt_seq_ops ;

void sctp_dbg_objcnt_init(struct net *net)
{
 struct proc_dir_entry *ent;

 ent = proc_create_seq("sctp_dbg_objcnt", 0,
     net->sctp.proc_net_sctp, &sctp_objcnt_seq_ops);
 if (!ent)
  pr_warn("sctp_dbg_objcnt: Unable to create /proc entry.\n");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int8_t ;
struct seq_net_private {int dummy; } ;
struct proc_dir_entry {int dummy; } ;
struct nf_mttg_trav {int dummy; } ;
struct net {int proc_net; int user_ns; } ;
typedef int kuid_t ;
typedef int kgid_t ;
typedef int buf ;


 size_t ARRAY_SIZE (int *) ;
 int EINVAL ;
 int FORMAT_MATCHES ;
 int FORMAT_TABLES ;
 int FORMAT_TARGETS ;
 int XT_FUNCTION_MAXNAMELEN ;
 scalar_t__ gid_valid (int ) ;
 int make_kgid (int ,int ) ;
 int make_kuid (int ,int ) ;
 struct proc_dir_entry* proc_create_net_data (char*,int,int ,int *,int,void*) ;
 struct proc_dir_entry* proc_create_seq_private (char*,int,int ,int *,int,void*) ;
 int proc_set_user (struct proc_dir_entry*,int ,int ) ;
 int remove_proc_entry (char*,int ) ;
 int strlcat (char*,int ,int) ;
 int strlcpy (char*,int ,int) ;
 scalar_t__ uid_valid (int ) ;
 int xt_match_seq_ops ;
 int * xt_prefix ;
 int xt_table_seq_ops ;
 int xt_target_seq_ops ;

int xt_proto_init(struct net *net, u_int8_t af)
{







 if (af >= ARRAY_SIZE(xt_prefix))
  return -EINVAL;
 return 0;
}

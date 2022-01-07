
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int dummy; } ;
struct net {int user_ns; int proc_net; } ;
struct ct_expect_iter_state {int dummy; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int ENOMEM ;
 int exp_seq_ops ;
 scalar_t__ gid_valid (int ) ;
 int make_kgid (int ,int ) ;
 int make_kuid (int ,int ) ;
 struct proc_dir_entry* proc_create_net (char*,int,int ,int *,int) ;
 int proc_set_user (struct proc_dir_entry*,int ,int ) ;
 scalar_t__ uid_valid (int ) ;

__attribute__((used)) static int exp_proc_init(struct net *net)
{
 return 0;
}

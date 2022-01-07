
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_ct_pptp_master {struct nf_conn** keymap; } ;
struct nf_conn {int list; } ;
typedef enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;


 int IP_CT_DIR_MAX ;
 int IP_CT_DIR_ORIGINAL ;
 int keymap_lock ;
 int kfree_rcu (struct nf_conn*,int ) ;
 int list_del_rcu (int *) ;
 struct nf_ct_pptp_master* nfct_help_data (struct nf_conn*) ;
 int pr_debug (char*,struct nf_conn*) ;
 int rcu ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void nf_ct_gre_keymap_destroy(struct nf_conn *ct)
{
 struct nf_ct_pptp_master *ct_pptp_info = nfct_help_data(ct);
 enum ip_conntrack_dir dir;

 pr_debug("entering for ct %p\n", ct);

 spin_lock_bh(&keymap_lock);
 for (dir = IP_CT_DIR_ORIGINAL; dir < IP_CT_DIR_MAX; dir++) {
  if (ct_pptp_info->keymap[dir]) {
   pr_debug("removing %p from list\n",
     ct_pptp_info->keymap[dir]);
   list_del_rcu(&ct_pptp_info->keymap[dir]->list);
   kfree_rcu(ct_pptp_info->keymap[dir], rcu);
   ct_pptp_info->keymap[dir] = ((void*)0);
  }
 }
 spin_unlock_bh(&keymap_lock);
}

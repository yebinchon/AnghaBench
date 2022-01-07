
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smack_known {int list; int smk_hashed; int smk_known; } ;
struct hlist_head {int dummy; } ;


 int SMACK_HASH_SLOTS ;
 unsigned int full_name_hash (int *,int ,int ) ;
 int hlist_add_head_rcu (int *,struct hlist_head*) ;
 int list_add_rcu (int *,int *) ;
 struct hlist_head* smack_known_hash ;
 int smack_known_list ;
 int strlen (int ) ;

void smk_insert_entry(struct smack_known *skp)
{
 unsigned int hash;
 struct hlist_head *head;

 hash = full_name_hash(((void*)0), skp->smk_known, strlen(skp->smk_known));
 head = &smack_known_hash[hash & (SMACK_HASH_SLOTS - 1)];

 hlist_add_head_rcu(&skp->smk_hashed, head);
 list_add_rcu(&skp->list, &smack_known_list);
}

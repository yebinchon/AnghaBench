
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int dummy; } ;
struct reiserfs_key {int k_objectid; } ;


 int JOURNAL_PER_BALANCE_CNT ;
 int journal_begin (struct reiserfs_transaction_handle*,struct super_block*,int ) ;
 int journal_end (struct reiserfs_transaction_handle*) ;
 int le32_to_cpu (int ) ;
 int reiserfs_delete_solid_item (struct reiserfs_transaction_handle*,int *,struct reiserfs_key*) ;
 int reiserfs_release_objectid (struct reiserfs_transaction_handle*,int ) ;

__attribute__((used)) static int remove_save_link_only(struct super_block *s,
     struct reiserfs_key *key, int oid_free)
{
 struct reiserfs_transaction_handle th;
 int err;


 err = journal_begin(&th, s, JOURNAL_PER_BALANCE_CNT);
 if (err)
  return err;

 reiserfs_delete_solid_item(&th, ((void*)0), key);
 if (oid_free)

  reiserfs_release_objectid(&th, le32_to_cpu(key->k_objectid));

 return journal_end(&th);
}

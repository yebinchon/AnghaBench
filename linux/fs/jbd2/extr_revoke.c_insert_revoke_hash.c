
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tid_t ;
struct list_head {int dummy; } ;
struct jbd2_revoke_record_s {unsigned long long blocknr; int hash; int sequence; } ;
struct TYPE_6__ {int j_revoke_lock; TYPE_1__* j_revoke; } ;
typedef TYPE_2__ journal_t ;
typedef int gfp_t ;
struct TYPE_5__ {struct list_head* hash_table; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int __GFP_NOFAIL ;
 size_t hash (TYPE_2__*,unsigned long long) ;
 int jbd2_revoke_record_cache ;
 scalar_t__ journal_oom_retry ;
 struct jbd2_revoke_record_s* kmem_cache_alloc (int ,int ) ;
 int list_add (int *,struct list_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int insert_revoke_hash(journal_t *journal, unsigned long long blocknr,
         tid_t seq)
{
 struct list_head *hash_list;
 struct jbd2_revoke_record_s *record;
 gfp_t gfp_mask = GFP_NOFS;

 if (journal_oom_retry)
  gfp_mask |= __GFP_NOFAIL;
 record = kmem_cache_alloc(jbd2_revoke_record_cache, gfp_mask);
 if (!record)
  return -ENOMEM;

 record->sequence = seq;
 record->blocknr = blocknr;
 hash_list = &journal->j_revoke->hash_table[hash(journal, blocknr)];
 spin_lock(&journal->j_revoke_lock);
 list_add(&record->hash, hash_list);
 spin_unlock(&journal->j_revoke_lock);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_journal_list {int j_refcount; int j_trans_id; } ;


 int kfree (struct reiserfs_journal_list*) ;
 int reiserfs_panic (struct super_block*,char*,char*,int ,int) ;

__attribute__((used)) static inline void put_journal_list(struct super_block *s,
        struct reiserfs_journal_list *jl)
{
 if (jl->j_refcount < 1) {
  reiserfs_panic(s, "journal-2", "trans id %u, refcount at %d",
          jl->j_trans_id, jl->j_refcount);
 }
 if (--jl->j_refcount == 0)
  kfree(jl);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct journal_head {struct journal_head* b_cpnext; struct journal_head* b_cpprev; } ;


 int __jbd2_journal_remove_checkpoint (struct journal_head*) ;
 int __try_to_free_cp_buf (struct journal_head*) ;
 scalar_t__ need_resched () ;

__attribute__((used)) static int journal_clean_one_cp_list(struct journal_head *jh, bool destroy)
{
 struct journal_head *last_jh;
 struct journal_head *next_jh = jh;
 int ret;

 if (!jh)
  return 0;

 last_jh = jh->b_cpprev;
 do {
  jh = next_jh;
  next_jh = jh->b_cpnext;
  if (!destroy)
   ret = __try_to_free_cp_buf(jh);
  else
   ret = __jbd2_journal_remove_checkpoint(jh) + 1;
  if (!ret)
   return 0;
  if (ret == 2)
   return 1;






  if (need_resched())
   return 0;
 } while (jh != last_jh);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_journal {int dummy; } ;


 int NAT_JOURNAL ;
 int SIT_JOURNAL ;
 scalar_t__ __has_cursum_space (struct f2fs_journal*,int,int) ;
 unsigned int le32_to_cpu (int ) ;
 int nats_in_cursum (struct f2fs_journal*) ;
 int nid_in_journal (struct f2fs_journal*,int) ;
 int segno_in_journal (struct f2fs_journal*,int) ;
 int sits_in_cursum (struct f2fs_journal*) ;
 int update_nats_in_cursum (struct f2fs_journal*,int) ;
 int update_sits_in_cursum (struct f2fs_journal*,int) ;

int f2fs_lookup_journal_in_cursum(struct f2fs_journal *journal, int type,
     unsigned int val, int alloc)
{
 int i;

 if (type == NAT_JOURNAL) {
  for (i = 0; i < nats_in_cursum(journal); i++) {
   if (le32_to_cpu(nid_in_journal(journal, i)) == val)
    return i;
  }
  if (alloc && __has_cursum_space(journal, 1, NAT_JOURNAL))
   return update_nats_in_cursum(journal, 1);
 } else if (type == SIT_JOURNAL) {
  for (i = 0; i < sits_in_cursum(journal); i++)
   if (le32_to_cpu(segno_in_journal(journal, i)) == val)
    return i;
  if (alloc && __has_cursum_space(journal, 1, SIT_JOURNAL))
   return update_sits_in_cursum(journal, 1);
 }
 return -1;
}

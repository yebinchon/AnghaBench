
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_journal {int dummy; } ;


 int MAX_NAT_JENTRIES (struct f2fs_journal*) ;
 int MAX_SIT_JENTRIES (struct f2fs_journal*) ;
 int NAT_JOURNAL ;

__attribute__((used)) static inline bool __has_cursum_space(struct f2fs_journal *journal,
       int size, int type)
{
 if (type == NAT_JOURNAL)
  return size <= MAX_NAT_JENTRIES(journal);
 return size <= MAX_SIT_JENTRIES(journal);
}

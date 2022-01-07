
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_journal {int n_nats; } ;


 int cpu_to_le16 (int) ;
 int nats_in_cursum (struct f2fs_journal*) ;

__attribute__((used)) static inline int update_nats_in_cursum(struct f2fs_journal *journal, int i)
{
 int before = nats_in_cursum(journal);

 journal->n_nats = cpu_to_le16(before + i);
 return before;
}

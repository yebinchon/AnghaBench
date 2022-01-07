
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int jiffies_64 ;
 int jiffies_lock ;
 unsigned int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned int) ;

u64 get_jiffies_64(void)
{
 unsigned int seq;
 u64 ret;

 do {
  seq = read_seqbegin(&jiffies_lock);
  ret = jiffies_64;
 } while (read_seqretry(&jiffies_lock, seq));
 return ret;
}

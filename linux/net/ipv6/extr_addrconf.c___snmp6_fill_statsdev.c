
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int atomic_long_t ;


 int BUG_ON (int) ;
 int ICMP6_MIB_MAX ;
 int atomic_long_read (int *) ;
 int memset (int *,int ,int) ;
 int put_unaligned (int,int *) ;

__attribute__((used)) static inline void __snmp6_fill_statsdev(u64 *stats, atomic_long_t *mib,
     int bytes)
{
 int i;
 int pad = bytes - sizeof(u64) * ICMP6_MIB_MAX;
 BUG_ON(pad < 0);


 put_unaligned(ICMP6_MIB_MAX, &stats[0]);
 for (i = 1; i < ICMP6_MIB_MAX; i++)
  put_unaligned(atomic_long_read(&mib[i]), &stats[i]);

 memset(&stats[ICMP6_MIB_MAX], 0, pad);
}

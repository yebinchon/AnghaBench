
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hws_trailer_entry {int clock_base; unsigned long long progusage2; int * progusage; } ;


 int S390_CPUMSF_PAGESZ ;
 int be64toh (int ) ;
 unsigned long long trailer_timestamp (struct hws_trailer_entry*,int) ;

__attribute__((used)) static unsigned long long get_trailer_time(const unsigned char *buf)
{
 struct hws_trailer_entry *te;
 unsigned long long aux_time, progusage2;
 bool clock_base;

 te = (struct hws_trailer_entry *)(buf + S390_CPUMSF_PAGESZ
           - sizeof(*te));


 clock_base = be64toh(te->progusage[0]) >> 63 & 0x1;
 progusage2 = be64toh(te->progusage[1]);




 if (!clock_base)
  return 0;





 aux_time = trailer_timestamp(te, clock_base) - progusage2;
 aux_time = (aux_time >> 9) * 125 + (((aux_time & 0x1ff) * 125) >> 9);
 return aux_time;
}

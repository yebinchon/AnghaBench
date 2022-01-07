
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct taskstats {int dummy; } ;


 size_t nla_total_size (int) ;
 size_t nla_total_size_64bit (int) ;

__attribute__((used)) static size_t taskstats_packet_size(void)
{
 size_t size;

 size = nla_total_size(sizeof(u32)) +
  nla_total_size_64bit(sizeof(struct taskstats)) +
  nla_total_size(0);

 return size;
}

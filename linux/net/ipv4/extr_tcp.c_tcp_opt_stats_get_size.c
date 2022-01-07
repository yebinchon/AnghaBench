
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;


 size_t nla_total_size (int) ;
 size_t nla_total_size_64bit (int) ;

__attribute__((used)) static size_t tcp_opt_stats_get_size(void)
{
 return
  nla_total_size_64bit(sizeof(u64)) +
  nla_total_size_64bit(sizeof(u64)) +
  nla_total_size_64bit(sizeof(u64)) +
  nla_total_size_64bit(sizeof(u64)) +
  nla_total_size_64bit(sizeof(u64)) +
  nla_total_size_64bit(sizeof(u64)) +
  nla_total_size_64bit(sizeof(u64)) +
  nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(u8)) +
  nla_total_size(sizeof(u8)) +
  nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(u8)) +
  nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(u32)) +
  nla_total_size_64bit(sizeof(u64)) +
  nla_total_size_64bit(sizeof(u64)) +
  nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(u32)) +
  0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;


 scalar_t__ nla_total_size (int) ;

__attribute__((used)) static size_t tls_get_info_size(const struct sock *sk)
{
 size_t size = 0;

 size += nla_total_size(0) +
  nla_total_size(sizeof(u16)) +
  nla_total_size(sizeof(u16)) +
  nla_total_size(sizeof(u16)) +
  nla_total_size(sizeof(u16)) +
  0;

 return size;
}

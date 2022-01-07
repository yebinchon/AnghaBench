
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct lwtunnel_state {int dummy; } ;


 int nla_total_size (int) ;
 int nla_total_size_64bit (int) ;

__attribute__((used)) static int ila_encap_nlsize(struct lwtunnel_state *lwtstate)
{
 return nla_total_size_64bit(sizeof(u64)) +
        nla_total_size(sizeof(u8)) +
        nla_total_size(sizeof(u8)) +
        nla_total_size(sizeof(u8)) +
        0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct lwtunnel_state {int dummy; } ;


 int MAX_PROG_NAME ;
 int nla_total_size (int) ;

__attribute__((used)) static int bpf_encap_nlsize(struct lwtunnel_state *lwtstate)
{
 int nest_len = nla_total_size(sizeof(struct nlattr)) +
         nla_total_size(MAX_PROG_NAME) +
         0;

 return nest_len +
        nest_len +
        nest_len +
        0;
}

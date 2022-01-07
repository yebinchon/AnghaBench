
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn {int status; } ;


 int IPS_OFFLOAD_BIT ;
 int ctnetlink_filter_match (struct nf_conn*,void*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ctnetlink_flush_iterate(struct nf_conn *ct, void *data)
{
 if (test_bit(IPS_OFFLOAD_BIT, &ct->status))
  return 0;

 return ctnetlink_filter_match(ct, data);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nf_conn {int mark; } ;
struct TYPE_2__ {int mask; int val; } ;
struct ctnetlink_filter {scalar_t__ family; TYPE_1__ mark; } ;


 scalar_t__ nf_ct_l3num (struct nf_conn*) ;

__attribute__((used)) static int ctnetlink_filter_match(struct nf_conn *ct, void *data)
{
 struct ctnetlink_filter *filter = data;

 if (filter == ((void*)0))
  goto out;





 if (filter->family && nf_ct_l3num(ct) != filter->family)
  goto ignore_entry;






out:
 return 1;

ignore_entry:
 return 0;
}

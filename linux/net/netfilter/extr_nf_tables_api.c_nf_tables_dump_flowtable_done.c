
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_flowtable_filter {struct nft_flowtable_filter* table; } ;
struct netlink_callback {struct nft_flowtable_filter* data; } ;


 int kfree (struct nft_flowtable_filter*) ;

__attribute__((used)) static int nf_tables_dump_flowtable_done(struct netlink_callback *cb)
{
 struct nft_flowtable_filter *filter = cb->data;

 if (!filter)
  return 0;

 kfree(filter->table);
 kfree(filter);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_set_dump_ctx {int dummy; } ;
struct netlink_callback {struct nft_set_dump_ctx* data; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct nft_set_dump_ctx* kmemdup (struct nft_set_dump_ctx*,int,int ) ;

__attribute__((used)) static int nf_tables_dump_set_start(struct netlink_callback *cb)
{
 struct nft_set_dump_ctx *dump_ctx = cb->data;

 cb->data = kmemdup(dump_ctx, sizeof(*dump_ctx), GFP_ATOMIC);

 return cb->data ? 0 : -ENOMEM;
}

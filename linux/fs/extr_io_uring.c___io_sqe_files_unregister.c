
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct io_ring_ctx {int nr_user_files; int * user_files; TYPE_1__* ring_sock; } ;
struct TYPE_2__ {struct sock* sk; } ;


 int fput (int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static void __io_sqe_files_unregister(struct io_ring_ctx *ctx)
{
 int i;

 for (i = 0; i < ctx->nr_user_files; i++)
  fput(ctx->user_files[i]);

}

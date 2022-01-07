
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* abort_parser ) (struct strparser*,int) ;} ;
struct strparser {TYPE_1__ cb; int * skb_head; } ;
struct TYPE_5__ {int error; } ;
typedef TYPE_2__ read_descriptor_t ;


 int kfree_skb (int *) ;
 int stub1 (struct strparser*,int) ;

__attribute__((used)) static void strp_parser_err(struct strparser *strp, int err,
       read_descriptor_t *desc)
{
 desc->error = err;
 kfree_skb(strp->skb_head);
 strp->skb_head = ((void*)0);
 strp->cb.abort_parser(strp, err);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {TYPE_1__* dev; scalar_t__ end; scalar_t__ tail; int data; int head; int len; } ;
struct TYPE_2__ {char* name; } ;


 int BUG () ;
 int pr_emerg (char*,char const*,void*,int ,unsigned int,int ,int ,unsigned long,unsigned long,char*) ;

__attribute__((used)) static void skb_panic(struct sk_buff *skb, unsigned int sz, void *addr,
        const char msg[])
{
 pr_emerg("%s: text:%p len:%d put:%d head:%p data:%p tail:%#lx end:%#lx dev:%s\n",
   msg, addr, skb->len, sz, skb->head, skb->data,
   (unsigned long)skb->tail, (unsigned long)skb->end,
   skb->dev ? skb->dev->name : "<NULL>");
 BUG();
}

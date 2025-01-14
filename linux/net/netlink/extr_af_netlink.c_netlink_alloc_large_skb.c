
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_shared_info {int dummy; } ;
struct sk_buff {int destructor; } ;


 int GFP_KERNEL ;
 unsigned int NLMSG_GOODSIZE ;
 unsigned int SKB_DATA_ALIGN (int) ;
 struct sk_buff* __build_skb (void*,unsigned int) ;
 struct sk_buff* alloc_skb (unsigned int,int ) ;
 int netlink_skb_destructor ;
 int vfree (void*) ;
 void* vmalloc (unsigned int) ;

__attribute__((used)) static struct sk_buff *netlink_alloc_large_skb(unsigned int size,
            int broadcast)
{
 struct sk_buff *skb;
 void *data;

 if (size <= NLMSG_GOODSIZE || broadcast)
  return alloc_skb(size, GFP_KERNEL);

 size = SKB_DATA_ALIGN(size) +
        SKB_DATA_ALIGN(sizeof(struct skb_shared_info));

 data = vmalloc(size);
 if (data == ((void*)0))
  return ((void*)0);

 skb = __build_skb(data, size);
 if (skb == ((void*)0))
  vfree(data);
 else
  skb->destructor = netlink_skb_destructor;

 return skb;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct can_frame {int can_id; } ;
typedef int canid_t ;



__attribute__((used)) static canid_t em_canid_get_id(struct sk_buff *skb)
{

 struct can_frame *cf = (struct can_frame *)skb->data;

 return cf->can_id;
}

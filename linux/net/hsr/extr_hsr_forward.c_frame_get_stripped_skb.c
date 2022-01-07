
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hsr_port {int dummy; } ;
struct hsr_frame_info {scalar_t__ skb_std; int skb_hsr; } ;


 int GFP_ATOMIC ;
 scalar_t__ create_stripped_skb (int ,struct hsr_frame_info*) ;
 struct sk_buff* skb_clone (scalar_t__,int ) ;

__attribute__((used)) static struct sk_buff *frame_get_stripped_skb(struct hsr_frame_info *frame,
           struct hsr_port *port)
{
 if (!frame->skb_std)
  frame->skb_std = create_stripped_skb(frame->skb_hsr, frame);
 return skb_clone(frame->skb_std, GFP_ATOMIC);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hsr_port {scalar_t__ type; } ;
struct hsr_frame_info {int skb_std; scalar_t__ skb_hsr; } ;


 int GFP_ATOMIC ;
 scalar_t__ HSR_PT_SLAVE_A ;
 scalar_t__ HSR_PT_SLAVE_B ;
 int WARN_ONCE (int,char*) ;
 struct sk_buff* create_tagged_skb (int ,struct hsr_frame_info*,struct hsr_port*) ;
 struct sk_buff* skb_clone (scalar_t__,int ) ;

__attribute__((used)) static struct sk_buff *frame_get_tagged_skb(struct hsr_frame_info *frame,
         struct hsr_port *port)
{
 if (frame->skb_hsr)
  return skb_clone(frame->skb_hsr, GFP_ATOMIC);

 if (port->type != HSR_PT_SLAVE_A && port->type != HSR_PT_SLAVE_B) {
  WARN_ONCE(1, "HSR: Bug: trying to create a tagged frame for a non-ring port");
  return ((void*)0);
 }

 return create_tagged_skb(frame->skb_std, frame, port);
}

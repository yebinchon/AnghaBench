
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct mesh_path {int sdata; int frame_queue; } ;


 int mesh_path_discard_frame (int ,struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;

void mesh_path_flush_pending(struct mesh_path *mpath)
{
 struct sk_buff *skb;

 while ((skb = skb_dequeue(&mpath->frame_queue)) != ((void*)0))
  mesh_path_discard_frame(mpath->sdata, skb);
}

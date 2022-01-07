
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ONCE (int,char*) ;
 int kfree_skb (void*) ;

__attribute__((used)) static int ieee80211_free_ack_frame(int id, void *p, void *data)
{
 WARN_ONCE(1, "Have pending ack frames!\n");
 kfree_skb(p);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_psock {int ingress_skb; } ;


 int __sk_psock_purge_ingress_msg (struct sk_psock*) ;
 int __skb_queue_purge (int *) ;

__attribute__((used)) static void sk_psock_zap_ingress(struct sk_psock *psock)
{
 __skb_queue_purge(&psock->ingress_skb);
 __sk_psock_purge_ingress_msg(psock);
}

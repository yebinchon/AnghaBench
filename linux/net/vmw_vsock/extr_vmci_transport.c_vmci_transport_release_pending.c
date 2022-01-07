
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int sock_put (struct sock*) ;

__attribute__((used)) static void vmci_transport_release_pending(struct sock *pending)
{
 sock_put(pending);
}

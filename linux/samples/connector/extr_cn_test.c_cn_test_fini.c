
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int val; } ;
struct TYPE_4__ {scalar_t__ sk_socket; } ;


 int cn_del_callback (TYPE_2__*) ;
 TYPE_2__ cn_test_id ;
 int cn_test_timer ;
 int del_timer_sync (int *) ;
 TYPE_1__* nls ;
 int sock_release (scalar_t__) ;

__attribute__((used)) static void cn_test_fini(void)
{
 del_timer_sync(&cn_test_timer);
 cn_del_callback(&cn_test_id);
 cn_test_id.val--;
 cn_del_callback(&cn_test_id);
 if (nls && nls->sk_socket)
  sock_release(nls->sk_socket);
}

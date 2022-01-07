
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct o2nm_node {int nd_item; } ;
struct o2net_sock_container {struct page* sc_page; int sc_idle_timeout; int sc_keepalive_work; int sc_shutdown_work; int sc_rx_work; int sc_connect_work; struct o2nm_node* sc_node; int sc_kref; } ;


 int GFP_NOFS ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 int kfree (struct o2net_sock_container*) ;
 int kref_init (int *) ;
 struct o2net_sock_container* kzalloc (int,int ) ;
 int mlog_errno (int) ;
 int o2net_debug_add_sc (struct o2net_sock_container*) ;
 int o2net_idle_timer ;
 int o2net_rx_until_empty ;
 int o2net_sc_connect_completed ;
 int o2net_sc_send_keep_req ;
 int o2net_shutdown_sc ;
 int o2nm_depend_item (int *) ;
 int o2nm_node_get (struct o2nm_node*) ;
 int o2nm_node_put (struct o2nm_node*) ;
 int sclog (struct o2net_sock_container*,char*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static struct o2net_sock_container *sc_alloc(struct o2nm_node *node)
{
 struct o2net_sock_container *sc, *ret = ((void*)0);
 struct page *page = ((void*)0);
 int status = 0;

 page = alloc_page(GFP_NOFS);
 sc = kzalloc(sizeof(*sc), GFP_NOFS);
 if (sc == ((void*)0) || page == ((void*)0))
  goto out;

 kref_init(&sc->sc_kref);
 o2nm_node_get(node);
 sc->sc_node = node;


 status = o2nm_depend_item(&node->nd_item);
 if (status) {
  mlog_errno(status);
  o2nm_node_put(node);
  goto out;
 }
 INIT_WORK(&sc->sc_connect_work, o2net_sc_connect_completed);
 INIT_WORK(&sc->sc_rx_work, o2net_rx_until_empty);
 INIT_WORK(&sc->sc_shutdown_work, o2net_shutdown_sc);
 INIT_DELAYED_WORK(&sc->sc_keepalive_work, o2net_sc_send_keep_req);

 timer_setup(&sc->sc_idle_timeout, o2net_idle_timer, 0);

 sclog(sc, "alloced\n");

 ret = sc;
 sc->sc_page = page;
 o2net_debug_add_sc(sc);
 sc = ((void*)0);
 page = ((void*)0);

out:
 if (page)
  __free_page(page);
 kfree(sc);

 return ret;
}

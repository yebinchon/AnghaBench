
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2tp_tunnel {int ref_count; } ;


 int l2tp_tunnel_free (struct l2tp_tunnel*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static inline void l2tp_tunnel_dec_refcount(struct l2tp_tunnel *tunnel)
{
 if (refcount_dec_and_test(&tunnel->ref_count))
  l2tp_tunnel_free(tunnel);
}

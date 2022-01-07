
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_neigh {int dummy; } ;
struct sock {int dummy; } ;


 struct sock* __x25_find_socket (unsigned int,struct x25_neigh*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int x25_list_lock ;

struct sock *x25_find_socket(unsigned int lci, struct x25_neigh *nb)
{
 struct sock *s;

 read_lock_bh(&x25_list_lock);
 s = __x25_find_socket(lci, nb);
 read_unlock_bh(&x25_list_lock);
 return s;
}

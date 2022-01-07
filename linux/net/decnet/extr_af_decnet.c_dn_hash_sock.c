
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct hlist_head {int dummy; } ;
struct dn_scp {int addrloc; } ;


 int BUG_ON (int ) ;
 struct dn_scp* DN_SK (struct sock*) ;
 int EADDRINUSE ;
 int EUSERS ;
 struct hlist_head* dn_find_list (struct sock*) ;
 int dn_hash_lock ;
 int port_alloc (struct sock*) ;
 int sk_add_node (struct sock*,struct hlist_head*) ;
 int sk_hashed (struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int dn_hash_sock(struct sock *sk)
{
 struct dn_scp *scp = DN_SK(sk);
 struct hlist_head *list;
 int rv = -EUSERS;

 BUG_ON(sk_hashed(sk));

 write_lock_bh(&dn_hash_lock);

 if (!scp->addrloc && !port_alloc(sk))
  goto out;

 rv = -EADDRINUSE;
 if ((list = dn_find_list(sk)) == ((void*)0))
  goto out;

 sk_add_node(sk, list);
 rv = 0;
out:
 write_unlock_bh(&dn_hash_lock);
 return rv;
}

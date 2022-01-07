
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_psock_link {int link_raw; TYPE_1__* map; } ;
struct TYPE_3__ {int map_type; } ;




 void sock_hash_delete_from_link (TYPE_1__*,struct sock*,int ) ;
 void sock_map_delete_from_link (TYPE_1__*,struct sock*,int ) ;

void sk_psock_unlink(struct sock *sk, struct sk_psock_link *link)
{
 switch (link->map->map_type) {
 case 128:
  return sock_map_delete_from_link(link->map, sk,
       link->link_raw);
 case 129:
  return sock_hash_delete_from_link(link->map, sk,
        link->link_raw);
 default:
  break;
 }
}

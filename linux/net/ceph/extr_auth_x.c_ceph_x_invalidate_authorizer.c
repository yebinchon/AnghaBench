
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_auth_client {int dummy; } ;


 int CEPH_ENTITY_TYPE_AUTH ;
 int invalidate_ticket (struct ceph_auth_client*,int) ;

__attribute__((used)) static void ceph_x_invalidate_authorizer(struct ceph_auth_client *ac,
      int peer_type)
{






 invalidate_ticket(ac, peer_type);
 invalidate_ticket(ac, CEPH_ENTITY_TYPE_AUTH);
}

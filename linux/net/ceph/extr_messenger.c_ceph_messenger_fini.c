
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_messenger {int net; } ;


 int put_net (int ) ;
 int read_pnet (int *) ;

void ceph_messenger_fini(struct ceph_messenger *msgr)
{
 put_net(read_pnet(&msgr->net));
}

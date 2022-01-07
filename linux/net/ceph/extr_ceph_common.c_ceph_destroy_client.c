
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stopping; } ;
struct ceph_client {int options; TYPE_1__ msgr; int monc; int osdc; } ;


 int atomic_set (int *,int) ;
 int ceph_debugfs_client_cleanup (struct ceph_client*) ;
 int ceph_destroy_options (int ) ;
 int ceph_messenger_fini (TYPE_1__*) ;
 int ceph_monc_stop (int *) ;
 int ceph_osdc_stop (int *) ;
 int dout (char*,struct ceph_client*) ;
 int kfree (struct ceph_client*) ;

void ceph_destroy_client(struct ceph_client *client)
{
 dout("destroy_client %p\n", client);

 atomic_set(&client->msgr.stopping, 1);


 ceph_osdc_stop(&client->osdc);
 ceph_monc_stop(&client->monc);
 ceph_messenger_fini(&client->msgr);

 ceph_debugfs_client_cleanup(client);

 ceph_destroy_options(client->options);

 kfree(client);
 dout("destroy_client %p done\n", client);
}

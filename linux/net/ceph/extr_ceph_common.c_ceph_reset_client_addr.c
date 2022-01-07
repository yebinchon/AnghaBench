
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_client {int osdc; int monc; int msgr; } ;


 int ceph_messenger_reset_nonce (int *) ;
 int ceph_monc_reopen_session (int *) ;
 int ceph_osdc_reopen_osds (int *) ;

void ceph_reset_client_addr(struct ceph_client *client)
{
 ceph_messenger_reset_nonce(&client->msgr);
 ceph_monc_reopen_session(&client->monc);
 ceph_osdc_reopen_osds(&client->osdc);
}

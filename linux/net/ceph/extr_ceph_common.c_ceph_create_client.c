
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_entity_addr {int dummy; } ;
struct ceph_options {struct ceph_entity_addr my_addr; } ;
struct ceph_client {int msgr; int monc; int osdc; struct ceph_options* options; int required_features; int supported_features; int * extra_mon_dispatch; scalar_t__ auth_err; int auth_wq; int mount_mutex; void* private; } ;


 int CEPH_FEATURES_REQUIRED_DEFAULT ;
 int CEPH_FEATURES_SUPPORTED_DEFAULT ;
 int CEPH_FEATURE_MSG_AUTH ;
 int ENOMEM ;
 struct ceph_client* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MYIP ;
 int NOMSGAUTH ;
 int ceph_messenger_fini (int *) ;
 int ceph_messenger_init (int *,struct ceph_entity_addr*) ;
 int ceph_monc_init (int *,struct ceph_client*) ;
 int ceph_monc_stop (int *) ;
 int ceph_osdc_init (int *,struct ceph_client*) ;
 scalar_t__ ceph_test_opt (struct ceph_client*,int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct ceph_client*) ;
 struct ceph_client* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int wait_for_random_bytes () ;

struct ceph_client *ceph_create_client(struct ceph_options *opt, void *private)
{
 struct ceph_client *client;
 struct ceph_entity_addr *myaddr = ((void*)0);
 int err;

 err = wait_for_random_bytes();
 if (err < 0)
  return ERR_PTR(err);

 client = kzalloc(sizeof(*client), GFP_KERNEL);
 if (client == ((void*)0))
  return ERR_PTR(-ENOMEM);

 client->private = private;
 client->options = opt;

 mutex_init(&client->mount_mutex);
 init_waitqueue_head(&client->auth_wq);
 client->auth_err = 0;

 client->extra_mon_dispatch = ((void*)0);
 client->supported_features = CEPH_FEATURES_SUPPORTED_DEFAULT;
 client->required_features = CEPH_FEATURES_REQUIRED_DEFAULT;

 if (!ceph_test_opt(client, NOMSGAUTH))
  client->required_features |= CEPH_FEATURE_MSG_AUTH;


 if (ceph_test_opt(client, MYIP))
  myaddr = &client->options->my_addr;

 ceph_messenger_init(&client->msgr, myaddr);


 err = ceph_monc_init(&client->monc, client);
 if (err < 0)
  goto fail;
 err = ceph_osdc_init(&client->osdc, client);
 if (err < 0)
  goto fail_monc;

 return client;

fail_monc:
 ceph_monc_stop(&client->monc);
fail:
 ceph_messenger_fini(&client->msgr);
 kfree(client);
 return ERR_PTR(err);
}

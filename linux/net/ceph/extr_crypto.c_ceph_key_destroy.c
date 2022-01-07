
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ceph_crypto_key** data; } ;
struct key {TYPE_1__ payload; } ;
struct ceph_crypto_key {int dummy; } ;


 int ceph_crypto_key_destroy (struct ceph_crypto_key*) ;
 int kfree (struct ceph_crypto_key*) ;

__attribute__((used)) static void ceph_key_destroy(struct key *key)
{
 struct ceph_crypto_key *ckey = key->payload.data[0];

 ceph_crypto_key_destroy(ckey);
 kfree(ckey);
}

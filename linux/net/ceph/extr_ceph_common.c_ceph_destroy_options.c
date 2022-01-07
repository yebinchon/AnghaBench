
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_options {struct ceph_options* mon_addr; struct ceph_options* key; struct ceph_options* name; } ;


 int ceph_crypto_key_destroy (struct ceph_options*) ;
 int dout (char*,struct ceph_options*) ;
 int kfree (struct ceph_options*) ;

void ceph_destroy_options(struct ceph_options *opt)
{
 dout("destroy_options %p\n", opt);
 kfree(opt->name);
 if (opt->key) {
  ceph_crypto_key_destroy(opt->key);
  kfree(opt->key);
 }
 kfree(opt->mon_addr);
 kfree(opt);
}

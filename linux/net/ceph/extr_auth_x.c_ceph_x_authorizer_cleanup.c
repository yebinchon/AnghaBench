
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_x_authorizer {int * buf; int session_key; } ;


 int ceph_buffer_put (int *) ;
 int ceph_crypto_key_destroy (int *) ;

__attribute__((used)) static void ceph_x_authorizer_cleanup(struct ceph_x_authorizer *au)
{
 ceph_crypto_key_destroy(&au->session_key);
 if (au->buf) {
  ceph_buffer_put(au->buf);
  au->buf = ((void*)0);
 }
}

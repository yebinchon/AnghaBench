
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ceph_x_authorizer {int dummy; } ;
struct ceph_authorizer {int dummy; } ;
struct ceph_auth_client {int dummy; } ;


 int decrypt_authorize_challenge (struct ceph_x_authorizer*,void*,int,int *) ;
 int encrypt_authorizer (struct ceph_x_authorizer*,int *) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int ceph_x_add_authorizer_challenge(struct ceph_auth_client *ac,
        struct ceph_authorizer *a,
        void *challenge_buf,
        int challenge_buf_len)
{
 struct ceph_x_authorizer *au = (void *)a;
 u64 server_challenge;
 int ret;

 ret = decrypt_authorize_challenge(au, challenge_buf, challenge_buf_len,
       &server_challenge);
 if (ret) {
  pr_err("failed to decrypt authorize challenge: %d", ret);
  return ret;
 }

 ret = encrypt_authorizer(au, &server_challenge);
 if (ret) {
  pr_err("failed to encrypt authorizer w/ challenge: %d", ret);
  return ret;
 }

 return 0;
}

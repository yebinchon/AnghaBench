
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ceph_x_encrypt_header {int dummy; } ;
struct ceph_x_authorizer {int session_key; } ;
struct ceph_x_authorize_challenge {int server_challenge; } ;


 int EINVAL ;
 int __ceph_x_decrypt (int *,void*,int) ;
 int le64_to_cpu (int ) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int decrypt_authorize_challenge(struct ceph_x_authorizer *au,
           void *challenge_buf,
           int challenge_buf_len,
           u64 *server_challenge)
{
 struct ceph_x_authorize_challenge *ch =
     challenge_buf + sizeof(struct ceph_x_encrypt_header);
 int ret;


 ret = __ceph_x_decrypt(&au->session_key, challenge_buf,
          challenge_buf_len);
 if (ret < 0)
  return ret;
 if (ret < sizeof(*ch)) {
  pr_err("bad size %d for ceph_x_authorize_challenge\n", ret);
  return -EINVAL;
 }

 *server_challenge = le64_to_cpu(ch->server_challenge);
 return 0;
}

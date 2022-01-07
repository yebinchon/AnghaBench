
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rds_sock {int dummy; } ;
struct TYPE_4__ {TYPE_1__* op_mmp_znotifier; } ;
struct rds_message {TYPE_2__ data; } ;
struct cmsghdr {scalar_t__ cmsg_len; } ;
struct TYPE_3__ {int z_cookie; } ;


 int * CMSG_DATA (struct cmsghdr*) ;
 scalar_t__ CMSG_LEN (int) ;
 int EINVAL ;

__attribute__((used)) static int rds_cmsg_zcopy(struct rds_sock *rs, struct rds_message *rm,
     struct cmsghdr *cmsg)
{
 u32 *cookie;

 if (cmsg->cmsg_len < CMSG_LEN(sizeof(*cookie)) ||
     !rm->data.op_mmp_znotifier)
  return -EINVAL;
 cookie = CMSG_DATA(cmsg);
 rm->data.op_mmp_znotifier->z_cookie = *cookie;
 return 0;
}

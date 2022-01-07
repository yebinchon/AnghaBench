
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msghdr {scalar_t__ msg_control; } ;
struct cmsghdr {int cmsg_type; int cmsg_level; int cmsg_len; } ;
typedef int cookie ;


 int CMSG_DATA (struct cmsghdr*) ;
 int CMSG_LEN (int) ;
 int RDS_CMSG_ZCOPY_COOKIE ;
 int SOL_RDS ;
 int errno ;
 int error (int,int ,char*) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static void add_zcopy_cookie(struct msghdr *msg, uint32_t cookie)
{
 struct cmsghdr *cm;

 if (!msg->msg_control)
  error(1, errno, "NULL cookie");
 cm = (void *)msg->msg_control;
 cm->cmsg_len = CMSG_LEN(sizeof(cookie));
 cm->cmsg_level = SOL_RDS;
 cm->cmsg_type = RDS_CMSG_ZCOPY_COOKIE;
 memcpy(CMSG_DATA(cm), &cookie, sizeof(cookie));
}

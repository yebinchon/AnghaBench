
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct o2net_msg {scalar_t__ data_len; int magic; void* status; void* sys_status; } ;
struct kvec {int iov_len; struct o2net_msg* iov_base; } ;
typedef enum o2net_system_error { ____Placeholder_o2net_system_error } o2net_system_error ;


 int BUG_ON (int) ;
 int O2NET_ERR_MAX ;
 int O2NET_MSG_STATUS_MAGIC ;
 int cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int) ;
 int msglog (struct o2net_msg*,char*,int) ;
 int o2net_send_tcp_msg (struct socket*,struct kvec*,int,int) ;

__attribute__((used)) static int o2net_send_status_magic(struct socket *sock, struct o2net_msg *hdr,
       enum o2net_system_error syserr, int err)
{
 struct kvec vec = {
  .iov_base = hdr,
  .iov_len = sizeof(struct o2net_msg),
 };

 BUG_ON(syserr >= O2NET_ERR_MAX);



 hdr->sys_status = cpu_to_be32(syserr);
 hdr->status = cpu_to_be32(err);
 hdr->magic = cpu_to_be16(O2NET_MSG_STATUS_MAGIC);
 hdr->data_len = 0;

 msglog(hdr, "about to send status magic %d\n", err);

 return o2net_send_tcp_msg(sock, &vec, 1, sizeof(struct o2net_msg));
}

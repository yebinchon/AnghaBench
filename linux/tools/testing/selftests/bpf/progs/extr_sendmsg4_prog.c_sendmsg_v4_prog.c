
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_sock_addr {scalar_t__ type; int msg_src_ip4; int user_ip4; scalar_t__ user_port; } ;


 int DST_IP4 ;
 int DST_PORT ;
 int DST_REWRITE_IP4 ;
 int DST_REWRITE_PORT4 ;
 scalar_t__ SOCK_DGRAM ;
 int SRC1_IP4 ;
 int SRC2_IP4 ;
 int SRC_REWRITE_IP4 ;
 int bpf_htonl (int ) ;
 scalar_t__ bpf_htons (int ) ;

int sendmsg_v4_prog(struct bpf_sock_addr *ctx)
{
 if (ctx->type != SOCK_DGRAM)
  return 0;


 if (ctx->msg_src_ip4 == bpf_htonl(SRC1_IP4) ||
     ctx->msg_src_ip4 == bpf_htonl(SRC2_IP4)) {
  ctx->msg_src_ip4 = bpf_htonl(SRC_REWRITE_IP4);
 } else {

  return 0;
 }


 if ((ctx->user_ip4 >> 24) == (bpf_htonl(DST_IP4) >> 24) &&
      ctx->user_port == bpf_htons(DST_PORT)) {
  ctx->user_ip4 = bpf_htonl(DST_REWRITE_IP4);
  ctx->user_port = bpf_htons(DST_REWRITE_PORT4);
 } else {

  return 0;
 }

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_sock_addr {scalar_t__ type; scalar_t__* msg_src_ip6; scalar_t__* user_ip6; int user_port; } ;


 int DST_REWRITE_IP6_0 ;
 int DST_REWRITE_IP6_1 ;
 int DST_REWRITE_IP6_2 ;
 int DST_REWRITE_IP6_3 ;
 int DST_REWRITE_PORT6 ;
 scalar_t__ SOCK_DGRAM ;
 int SRC_REWRITE_IP6_0 ;
 int SRC_REWRITE_IP6_1 ;
 int SRC_REWRITE_IP6_2 ;
 int SRC_REWRITE_IP6_3 ;
 scalar_t__ bpf_htonl (int) ;
 int bpf_htons (int ) ;

int sendmsg_v6_prog(struct bpf_sock_addr *ctx)
{
 if (ctx->type != SOCK_DGRAM)
  return 0;


 if (ctx->msg_src_ip6[3] == bpf_htonl(1) ||
     ctx->msg_src_ip6[3] == bpf_htonl(0)) {
  ctx->msg_src_ip6[0] = bpf_htonl(SRC_REWRITE_IP6_0);
  ctx->msg_src_ip6[1] = bpf_htonl(SRC_REWRITE_IP6_1);
  ctx->msg_src_ip6[2] = bpf_htonl(SRC_REWRITE_IP6_2);
  ctx->msg_src_ip6[3] = bpf_htonl(SRC_REWRITE_IP6_3);
 } else {

  return 0;
 }


 if (ctx->user_ip6[0] == bpf_htonl(0xFACEB00C)) {
  ctx->user_ip6[0] = bpf_htonl(DST_REWRITE_IP6_0);
  ctx->user_ip6[1] = bpf_htonl(DST_REWRITE_IP6_1);
  ctx->user_ip6[2] = bpf_htonl(DST_REWRITE_IP6_2);
  ctx->user_ip6[3] = bpf_htonl(DST_REWRITE_IP6_3);

  ctx->user_port = bpf_htons(DST_REWRITE_PORT6);
 } else {

  return 0;
 }

 return 1;
}

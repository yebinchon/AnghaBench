
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_sock {int state; int dst_port; int * dst_ip6; int dst_ip4; int src_port; int * src_ip6; int src_ip4; int priority; int mark; int protocol; int type; int family; int bound_dev_if; } ;



__attribute__((used)) static void skcpy(struct bpf_sock *dst,
    const struct bpf_sock *src)
{
 dst->bound_dev_if = src->bound_dev_if;
 dst->family = src->family;
 dst->type = src->type;
 dst->protocol = src->protocol;
 dst->mark = src->mark;
 dst->priority = src->priority;
 dst->src_ip4 = src->src_ip4;
 dst->src_ip6[0] = src->src_ip6[0];
 dst->src_ip6[1] = src->src_ip6[1];
 dst->src_ip6[2] = src->src_ip6[2];
 dst->src_ip6[3] = src->src_ip6[3];
 dst->src_port = src->src_port;
 dst->dst_ip4 = src->dst_ip4;
 dst->dst_ip6[0] = src->dst_ip6[0];
 dst->dst_ip6[1] = src->dst_ip6[1];
 dst->dst_ip6[2] = src->dst_ip6[2];
 dst->dst_ip6[3] = src->dst_ip6[3];
 dst->dst_port = src->dst_port;
 dst->state = src->state;
}

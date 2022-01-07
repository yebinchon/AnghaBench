
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwtunnel_state {scalar_t__ data; } ;
struct bpf_lwt {int dummy; } ;



__attribute__((used)) static inline struct bpf_lwt *bpf_lwt_lwtunnel(struct lwtunnel_state *lwt)
{
 return (struct bpf_lwt *)lwt->data;
}

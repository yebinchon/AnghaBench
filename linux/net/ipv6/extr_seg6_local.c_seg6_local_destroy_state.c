
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int prog; int name; } ;
struct seg6_local_lwt {TYPE_2__ bpf; TYPE_1__* desc; int srh; } ;
struct lwtunnel_state {int dummy; } ;
struct TYPE_3__ {int attrs; } ;


 int SEG6_LOCAL_BPF ;
 int bpf_prog_put (int ) ;
 int kfree (int ) ;
 struct seg6_local_lwt* seg6_local_lwtunnel (struct lwtunnel_state*) ;

__attribute__((used)) static void seg6_local_destroy_state(struct lwtunnel_state *lwt)
{
 struct seg6_local_lwt *slwt = seg6_local_lwtunnel(lwt);

 kfree(slwt->srh);

 if (slwt->desc->attrs & (1 << SEG6_LOCAL_BPF)) {
  kfree(slwt->bpf.name);
  bpf_prog_put(slwt->bpf.prog);
 }

 return;
}

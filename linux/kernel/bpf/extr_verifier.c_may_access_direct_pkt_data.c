
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_verifier_env {int seen_direct_write; TYPE_1__* prog; } ;
struct bpf_call_arg_meta {int pkt_access; } ;
typedef enum bpf_access_type { ____Placeholder_bpf_access_type } bpf_access_type ;
struct TYPE_2__ {int type; } ;
 int BPF_WRITE ;

__attribute__((used)) static bool may_access_direct_pkt_data(struct bpf_verifier_env *env,
           const struct bpf_call_arg_meta *meta,
           enum bpf_access_type t)
{
 switch (env->prog->type) {

 case 137:
 case 136:
 case 135:
 case 130:
 case 138:
 case 140:
  if (t == BPF_WRITE)
   return 0;



 case 132:
 case 133:
 case 128:
 case 134:
 case 129:
 case 131:
  if (meta)
   return meta->pkt_access;

  env->seen_direct_write = 1;
  return 1;

 case 139:
  if (t == BPF_WRITE)
   env->seen_direct_write = 1;

  return 1;

 default:
  return 0;
 }
}

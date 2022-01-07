
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_psock_progs {int skb_verdict; int skb_parser; int msg_parser; } ;
struct bpf_prog {int dummy; } ;
struct bpf_map {int dummy; } ;





 int EOPNOTSUPP ;
 int psock_set_prog (int *,struct bpf_prog*) ;
 struct sk_psock_progs* sock_map_progs (struct bpf_map*) ;

int sock_map_prog_update(struct bpf_map *map, struct bpf_prog *prog,
    u32 which)
{
 struct sk_psock_progs *progs = sock_map_progs(map);

 if (!progs)
  return -EOPNOTSUPP;

 switch (which) {
 case 130:
  psock_set_prog(&progs->msg_parser, prog);
  break;
 case 129:
  psock_set_prog(&progs->skb_parser, prog);
  break;
 case 128:
  psock_set_prog(&progs->skb_verdict, prog);
  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}

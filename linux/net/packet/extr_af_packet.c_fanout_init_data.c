
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_fanout {int type; int bpf_prog; int rr_cur; } ;





 int RCU_INIT_POINTER (int ,int *) ;
 int atomic_set (int *,int ) ;

__attribute__((used)) static void fanout_init_data(struct packet_fanout *f)
{
 switch (f->type) {
 case 128:
  atomic_set(&f->rr_cur, 0);
  break;
 case 130:
 case 129:
  RCU_INIT_POINTER(f->bpf_prog, ((void*)0));
  break;
 }
}

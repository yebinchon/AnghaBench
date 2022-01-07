
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_fanout {int type; } ;




 int __fanout_set_data_bpf (struct packet_fanout*,int *) ;

__attribute__((used)) static void fanout_release_data(struct packet_fanout *f)
{
 switch (f->type) {
 case 129:
 case 128:
  __fanout_set_data_bpf(f, ((void*)0));
 }
}

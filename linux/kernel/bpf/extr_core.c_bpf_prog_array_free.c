
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_prog_array {int dummy; } ;
struct TYPE_2__ {struct bpf_prog_array hdr; } ;


 TYPE_1__ empty_prog_array ;
 int kfree_rcu (struct bpf_prog_array*,int ) ;
 int rcu ;

void bpf_prog_array_free(struct bpf_prog_array *progs)
{
 if (!progs || progs == &empty_prog_array.hdr)
  return;
 kfree_rcu(progs, rcu);
}

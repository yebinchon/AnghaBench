
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {scalar_t__ type; } ;


 scalar_t__ BPF_PROG_TYPE_SOCKET_FILTER ;
 int bpf_prog_free (struct bpf_prog*) ;
 int bpf_prog_put (struct bpf_prog*) ;
 int bpf_release_orig_filter (struct bpf_prog*) ;

__attribute__((used)) static void __bpf_prog_release(struct bpf_prog *prog)
{
 if (prog->type == BPF_PROG_TYPE_SOCKET_FILTER) {
  bpf_prog_put(prog);
 } else {
  bpf_release_orig_filter(prog);
  bpf_prog_free(prog);
 }
}

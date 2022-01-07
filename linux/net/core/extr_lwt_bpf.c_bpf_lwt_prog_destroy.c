
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_lwt_prog {int name; scalar_t__ prog; } ;


 int bpf_prog_put (scalar_t__) ;
 int kfree (int ) ;

__attribute__((used)) static void bpf_lwt_prog_destroy(struct bpf_lwt_prog *prog)
{
 if (prog->prog)
  bpf_prog_put(prog->prog);

 kfree(prog->name);
}

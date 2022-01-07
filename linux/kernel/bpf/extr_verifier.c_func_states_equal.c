
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idpair {int dummy; } ;
struct bpf_func_state {int * regs; } ;


 int GFP_KERNEL ;
 int ID_MAP_SIZE ;
 int MAX_BPF_REG ;
 struct idpair* kcalloc (int ,int,int ) ;
 int kfree (struct idpair*) ;
 int refsafe (struct bpf_func_state*,struct bpf_func_state*) ;
 int regsafe (int *,int *,struct idpair*) ;
 int stacksafe (struct bpf_func_state*,struct bpf_func_state*,struct idpair*) ;

__attribute__((used)) static bool func_states_equal(struct bpf_func_state *old,
         struct bpf_func_state *cur)
{
 struct idpair *idmap;
 bool ret = 0;
 int i;

 idmap = kcalloc(ID_MAP_SIZE, sizeof(struct idpair), GFP_KERNEL);

 if (!idmap)
  return 0;

 for (i = 0; i < MAX_BPF_REG; i++) {
  if (!regsafe(&old->regs[i], &cur->regs[i], idmap))
   goto out_free;
 }

 if (!stacksafe(old, cur, idmap))
  goto out_free;

 if (!refsafe(old, cur))
  goto out_free;
 ret = 1;
out_free:
 kfree(idmap);
 return ret;
}

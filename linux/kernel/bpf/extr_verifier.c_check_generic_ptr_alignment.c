
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tn_buf ;
struct tnum {int dummy; } ;
struct bpf_verifier_env {int dummy; } ;
struct bpf_reg_state {scalar_t__ off; int var_off; } ;


 int EACCES ;
 struct tnum tnum_add (int ,int ) ;
 int tnum_const (scalar_t__) ;
 int tnum_is_aligned (struct tnum,int) ;
 int tnum_strn (char*,int,int ) ;
 int verbose (struct bpf_verifier_env*,char*,char const*,char*,scalar_t__,int,int) ;

__attribute__((used)) static int check_generic_ptr_alignment(struct bpf_verifier_env *env,
           const struct bpf_reg_state *reg,
           const char *pointer_desc,
           int off, int size, bool strict)
{
 struct tnum reg_off;


 if (!strict || size == 1)
  return 0;

 reg_off = tnum_add(reg->var_off, tnum_const(reg->off + off));
 if (!tnum_is_aligned(reg_off, size)) {
  char tn_buf[48];

  tnum_strn(tn_buf, sizeof(tn_buf), reg->var_off);
  verbose(env, "misaligned %saccess off %s+%d+%d size %d\n",
   pointer_desc, tn_buf, reg->off, off, size);
  return -EACCES;
 }

 return 0;
}

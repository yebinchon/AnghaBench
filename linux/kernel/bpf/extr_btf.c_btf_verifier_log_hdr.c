
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bpf_verifier_log {int dummy; } ;
struct btf_verifier_env {struct btf* btf; struct bpf_verifier_log log; } ;
struct btf_header {int str_len; int str_off; int type_len; int type_off; int hdr_len; int flags; int version; int magic; } ;
struct btf {struct btf_header hdr; } ;


 int __btf_verifier_log (struct bpf_verifier_log*,char*,int ) ;
 int bpf_verifier_log_needed (struct bpf_verifier_log*) ;

__attribute__((used)) static void btf_verifier_log_hdr(struct btf_verifier_env *env,
     u32 btf_data_size)
{
 struct bpf_verifier_log *log = &env->log;
 const struct btf *btf = env->btf;
 const struct btf_header *hdr;

 if (!bpf_verifier_log_needed(log))
  return;

 hdr = &btf->hdr;
 __btf_verifier_log(log, "magic: 0x%x\n", hdr->magic);
 __btf_verifier_log(log, "version: %u\n", hdr->version);
 __btf_verifier_log(log, "flags: 0x%x\n", hdr->flags);
 __btf_verifier_log(log, "hdr_len: %u\n", hdr->hdr_len);
 __btf_verifier_log(log, "type_off: %u\n", hdr->type_off);
 __btf_verifier_log(log, "type_len: %u\n", hdr->type_len);
 __btf_verifier_log(log, "str_off: %u\n", hdr->str_off);
 __btf_verifier_log(log, "str_len: %u\n", hdr->str_len);
 __btf_verifier_log(log, "btf_total_size: %u\n", btf_data_size);
}

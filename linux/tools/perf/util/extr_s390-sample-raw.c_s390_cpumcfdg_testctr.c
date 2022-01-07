
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {size_t raw_size; unsigned char* raw_data; } ;
struct cf_trailer_entry {int dummy; } ;
struct cf_ctrset_entry {void* res1; void* ctr; void* set; void* def; } ;


 void* be16_to_cpu (void*) ;
 size_t ctrset_size (struct cf_ctrset_entry*) ;
 int ctrset_valid (struct cf_ctrset_entry*) ;
 int pr_err (char*,size_t) ;

__attribute__((used)) static bool s390_cpumcfdg_testctr(struct perf_sample *sample)
{
 size_t len = sample->raw_size, offset = 0;
 unsigned char *buf = sample->raw_data;
 struct cf_trailer_entry *te;
 struct cf_ctrset_entry *cep, ce;

 if (!len)
  return 0;
 while (offset < len) {
  cep = (struct cf_ctrset_entry *)(buf + offset);
  ce.def = be16_to_cpu(cep->def);
  ce.set = be16_to_cpu(cep->set);
  ce.ctr = be16_to_cpu(cep->ctr);
  ce.res1 = be16_to_cpu(cep->res1);

  if (!ctrset_valid(&ce) || offset + ctrset_size(&ce) > len) {
   if (len - offset - sizeof(*te) == 4)
    break;
   pr_err("Invalid counter set entry at %zd\n", offset);
   return 0;
  }
  offset += ctrset_size(&ce);
 }
 return 1;
}

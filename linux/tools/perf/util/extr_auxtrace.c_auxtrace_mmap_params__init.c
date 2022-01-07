
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auxtrace_mmap_params {unsigned int len; int mask; int prot; int offset; } ;
typedef int off_t ;


 int PROT_READ ;
 int PROT_WRITE ;
 scalar_t__ is_power_of_2 (unsigned int) ;
 scalar_t__ page_size ;
 int pr_debug2 (char*,int) ;

void auxtrace_mmap_params__init(struct auxtrace_mmap_params *mp,
    off_t auxtrace_offset,
    unsigned int auxtrace_pages,
    bool auxtrace_overwrite)
{
 if (auxtrace_pages) {
  mp->offset = auxtrace_offset;
  mp->len = auxtrace_pages * (size_t)page_size;
  mp->mask = is_power_of_2(mp->len) ? mp->len - 1 : 0;
  mp->prot = PROT_READ | (auxtrace_overwrite ? 0 : PROT_WRITE);
  pr_debug2("AUX area mmap length %zu\n", mp->len);
 } else {
  mp->len = 0;
 }
}

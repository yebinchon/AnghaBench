
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_labels {scalar_t__ count; struct __bpf_label* labels; } ;
struct __bpf_label {char const* label; int location; } ;
typedef int __u32 ;


 scalar_t__ BPF_LABELS_MAX ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int strcmp (char const*,char const*) ;

__u32 seccomp_bpf_label(struct bpf_labels *labels, const char *label)
{
 struct __bpf_label *begin = labels->labels, *end;
 int id;

 if (labels->count == BPF_LABELS_MAX) {
  fprintf(stderr, "Too many labels\n");
  exit(1);
 }
 if (labels->count == 0) {
  begin->label = label;
  begin->location = 0xffffffff;
  labels->count++;
  return 0;
 }
 end = begin + labels->count;
 for (id = 0; begin < end; ++begin, ++id) {
  if (!strcmp(label, begin->label))
   return id;
 }
 begin->label = label;
 begin->location = 0xffffffff;
 labels->count++;
 return id;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer_data {int member_1; int member_2; scalar_t__ hit_nul; scalar_t__ is_printable; int member_0; } ;
struct perf_sample {unsigned int raw_size; scalar_t__ raw_data; } ;
typedef int FILE ;


 int binary__fprintf (scalar_t__,unsigned int,int,int ,struct printer_data*,int *) ;
 scalar_t__ fprintf (int *,char*,char*,char*) ;
 int sample__fprintf_bpf_output ;

__attribute__((used)) static int perf_sample__fprintf_bpf_output(struct perf_sample *sample, FILE *fp)
{
 unsigned int nr_bytes = sample->raw_size;
 struct printer_data printer_data = {0, 0, 1};
 int printed = binary__fprintf(sample->raw_data, nr_bytes, 8,
          sample__fprintf_bpf_output, &printer_data, fp);

 if (printer_data.is_printable && printer_data.hit_nul)
  printed += fprintf(fp, "%17s \"%s\"\n", "BPF string:", (char *)(sample->raw_data));

 return printed;
}

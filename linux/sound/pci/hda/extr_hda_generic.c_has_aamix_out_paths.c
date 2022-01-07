
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_gen_spec {scalar_t__* aamix_out_paths; } ;



__attribute__((used)) static inline bool has_aamix_out_paths(struct hda_gen_spec *spec)
{
 return spec->aamix_out_paths[0] || spec->aamix_out_paths[1] ||
  spec->aamix_out_paths[2];
}

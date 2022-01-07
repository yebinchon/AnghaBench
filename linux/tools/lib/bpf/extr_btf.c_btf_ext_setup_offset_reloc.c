
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btf_ext_sec_setup_param {int min_rec_size; char* desc; int * ext_info; int len; int off; } ;
struct btf_ext {int offset_reloc_info; TYPE_1__* hdr; } ;
struct bpf_offset_reloc {int dummy; } ;
struct TYPE_2__ {int offset_reloc_len; int offset_reloc_off; } ;


 int btf_ext_setup_info (struct btf_ext*,struct btf_ext_sec_setup_param*) ;

__attribute__((used)) static int btf_ext_setup_offset_reloc(struct btf_ext *btf_ext)
{
 struct btf_ext_sec_setup_param param = {
  .off = btf_ext->hdr->offset_reloc_off,
  .len = btf_ext->hdr->offset_reloc_len,
  .min_rec_size = sizeof(struct bpf_offset_reloc),
  .ext_info = &btf_ext->offset_reloc_info,
  .desc = "offset_reloc",
 };

 return btf_ext_setup_info(btf_ext, &param);
}

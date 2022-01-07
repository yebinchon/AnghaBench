
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btf_ext_sec_setup_param {int min_rec_size; char* desc; int * ext_info; int len; int off; } ;
struct btf_ext {int func_info; TYPE_1__* hdr; } ;
struct bpf_func_info_min {int dummy; } ;
struct TYPE_2__ {int func_info_len; int func_info_off; } ;


 int btf_ext_setup_info (struct btf_ext*,struct btf_ext_sec_setup_param*) ;

__attribute__((used)) static int btf_ext_setup_func_info(struct btf_ext *btf_ext)
{
 struct btf_ext_sec_setup_param param = {
  .off = btf_ext->hdr->func_info_off,
  .len = btf_ext->hdr->func_info_len,
  .min_rec_size = sizeof(struct bpf_func_info_min),
  .ext_info = &btf_ext->func_info,
  .desc = "func_info"
 };

 return btf_ext_setup_info(btf_ext, &param);
}

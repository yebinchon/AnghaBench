
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct btf_type {int name_off; } ;
struct btf {int dummy; } ;
struct bpf_prog_info {size_t nr_jited_ksyms; size_t func_info_rec_size; char* name; scalar_t__ func_info; scalar_t__ prog_tags; } ;
struct bpf_func_info {int type_id; } ;


 size_t BPF_TAG_SIZE ;
 char* btf__name_by_offset (struct btf*,int ) ;
 struct btf_type* btf__type_by_id (struct btf*,int ) ;
 int * prog_tags ;
 int snprintf (char*,int,char*,...) ;
 scalar_t__ snprintf_hex (char*,int,int ,size_t) ;
 void** u8 (int ) ;

__attribute__((used)) static int synthesize_bpf_prog_name(char *buf, int size,
        struct bpf_prog_info *info,
        struct btf *btf,
        u32 sub_id)
{
 u8 (*prog_tags)[BPF_TAG_SIZE] = (void *)(uintptr_t)(info->prog_tags);
 void *func_infos = (void *)(uintptr_t)(info->func_info);
 u32 sub_prog_cnt = info->nr_jited_ksyms;
 const struct bpf_func_info *finfo;
 const char *short_name = ((void*)0);
 const struct btf_type *t;
 int name_len;

 name_len = snprintf(buf, size, "bpf_prog_");
 name_len += snprintf_hex(buf + name_len, size - name_len,
     prog_tags[sub_id], BPF_TAG_SIZE);
 if (btf) {
  finfo = func_infos + sub_id * info->func_info_rec_size;
  t = btf__type_by_id(btf, finfo->type_id);
  short_name = btf__name_by_offset(btf, t->name_off);
 } else if (sub_id == 0 && sub_prog_cnt == 1) {

  if (info->name[0])
   short_name = info->name;
 } else
  short_name = "F";
 if (short_name)
  name_len += snprintf(buf + name_len, size - name_len,
         "_%s", short_name);
 return name_len;
}

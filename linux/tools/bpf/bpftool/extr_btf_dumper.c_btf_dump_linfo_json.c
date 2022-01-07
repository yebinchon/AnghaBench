
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf {int dummy; } ;
struct bpf_line_info {int line_col; int file_name_off; int line_off; } ;


 scalar_t__ BPF_LINE_INFO_LINE_COL (int ) ;
 scalar_t__ BPF_LINE_INFO_LINE_NUM (int ) ;
 char* btf__name_by_offset (struct btf const*,int ) ;
 int json_wtr ;
 int jsonw_int_field (int ,char*,scalar_t__) ;
 int jsonw_string_field (int ,char*,char const*) ;
 char const* ltrim (char const*) ;

void btf_dump_linfo_json(const struct btf *btf,
    const struct bpf_line_info *linfo, bool linum)
{
 const char *line = btf__name_by_offset(btf, linfo->line_off);

 if (line)
  jsonw_string_field(json_wtr, "src", ltrim(line));

 if (linum) {
  const char *file = btf__name_by_offset(btf, linfo->file_name_off);

  if (file)
   jsonw_string_field(json_wtr, "file", file);

  if (BPF_LINE_INFO_LINE_NUM(linfo->line_col))
   jsonw_int_field(json_wtr, "line_num",
     BPF_LINE_INFO_LINE_NUM(linfo->line_col));

  if (BPF_LINE_INFO_LINE_COL(linfo->line_col))
   jsonw_int_field(json_wtr, "line_col",
     BPF_LINE_INFO_LINE_COL(linfo->line_col));
 }
}

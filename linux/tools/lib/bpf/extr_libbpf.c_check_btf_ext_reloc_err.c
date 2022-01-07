
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_program {int section_name; } ;


 int ENOENT ;
 int pr_warning (char*,char const*,int ,...) ;

__attribute__((used)) static int
check_btf_ext_reloc_err(struct bpf_program *prog, int err,
   void *btf_prog_info, const char *info_name)
{
 if (err != -ENOENT) {
  pr_warning("Error in loading %s for sec %s.\n",
      info_name, prog->section_name);
  return err;
 }



 if (btf_prog_info) {




  pr_warning("Error in relocating %s for sec %s.\n",
      info_name, prog->section_name);
  return err;
 }


 pr_warning("Cannot find %s for main program sec %s. Ignore all %s.\n",
     info_name, prog->section_name, info_name);
 return 0;
}

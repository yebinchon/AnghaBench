
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int hints; int elf; int insn_list; int ignore_unreachables; int c_file; int insn_hash; } ;


 int INIT_LIST_HEAD (int *) ;
 int O_RDONLY ;
 int O_RDWR ;
 int arch_initial_func_cfi_state (int *) ;
 int cleanup (TYPE_1__*) ;
 int create_orc (TYPE_1__*) ;
 int create_orc_sections (TYPE_1__*) ;
 int decode_sections (TYPE_1__*) ;
 int elf_read (char const*,int ) ;
 int elf_write (int ) ;
 TYPE_1__ file ;
 int find_section_by_name (int ,char*) ;
 int hash_init (int ) ;
 int initial_func_cfi ;
 scalar_t__ list_empty (int *) ;
 int no_unreachable ;
 char const* objname ;
 scalar_t__ retpoline ;
 int validate_functions (TYPE_1__*) ;
 int validate_reachable_instructions (TYPE_1__*) ;
 int validate_retpoline (TYPE_1__*) ;
 int validate_unwind_hints (TYPE_1__*) ;

int check(const char *_objname, bool orc)
{
 int ret, warnings = 0;

 objname = _objname;

 file.elf = elf_read(objname, orc ? O_RDWR : O_RDONLY);
 if (!file.elf)
  return 1;

 INIT_LIST_HEAD(&file.insn_list);
 hash_init(file.insn_hash);
 file.c_file = find_section_by_name(file.elf, ".comment");
 file.ignore_unreachables = no_unreachable;
 file.hints = 0;

 arch_initial_func_cfi_state(&initial_func_cfi);

 ret = decode_sections(&file);
 if (ret < 0)
  goto out;
 warnings += ret;

 if (list_empty(&file.insn_list))
  goto out;

 if (retpoline) {
  ret = validate_retpoline(&file);
  if (ret < 0)
   return ret;
  warnings += ret;
 }

 ret = validate_functions(&file);
 if (ret < 0)
  goto out;
 warnings += ret;

 ret = validate_unwind_hints(&file);
 if (ret < 0)
  goto out;
 warnings += ret;

 if (!warnings) {
  ret = validate_reachable_instructions(&file);
  if (ret < 0)
   goto out;
  warnings += ret;
 }

 if (orc) {
  ret = create_orc(&file);
  if (ret < 0)
   goto out;

  ret = create_orc_sections(&file);
  if (ret < 0)
   goto out;

  ret = elf_write(file.elf);
  if (ret < 0)
   goto out;
 }

out:
 cleanup(&file);


 if (ret || warnings)
  return 0;
 return 0;
}

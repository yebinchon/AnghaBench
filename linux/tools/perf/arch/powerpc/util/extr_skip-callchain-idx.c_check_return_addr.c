
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dso {char* long_name; int * dwfl; } ;
typedef int Dwfl_Module ;
typedef int Dwfl ;
typedef int Dwarf_Frame ;
typedef int Dwarf_Addr ;


 int check_return_reg (int,int *) ;
 int dwarf_errmsg (int) ;
 int dwarf_frame_info (int *,int *,int *,int*) ;
 int * dwfl_addrmodule (int *,int ) ;
 int * dwfl_begin (int *) ;
 int dwfl_end (int *) ;
 int * dwfl_report_elf (int *,char const*,char const*,int,int ,int) ;
 int * get_dwarf_frame (int *,int ) ;
 int * get_eh_frame (int *,int ) ;
 int offline_callbacks ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int check_return_addr(struct dso *dso, u64 map_start, Dwarf_Addr pc)
{
 int rc = -1;
 Dwfl *dwfl;
 Dwfl_Module *mod;
 Dwarf_Frame *frame;
 int ra_regno;
 Dwarf_Addr start = pc;
 Dwarf_Addr end = pc;
 bool signalp;
 const char *exec_file = dso->long_name;

 dwfl = dso->dwfl;

 if (!dwfl) {
  dwfl = dwfl_begin(&offline_callbacks);
  if (!dwfl) {
   pr_debug("dwfl_begin() failed: %s\n", dwarf_errmsg(-1));
   return -1;
  }

  mod = dwfl_report_elf(dwfl, exec_file, exec_file, -1,
      map_start, 0);
  if (!mod) {
   pr_debug("dwfl_report_elf() failed %s\n",
      dwarf_errmsg(-1));





   dwfl_end(dwfl);
   goto out;
  }
  dso->dwfl = dwfl;
 }

 mod = dwfl_addrmodule(dwfl, pc);
 if (!mod) {
  pr_debug("dwfl_addrmodule() failed, %s\n", dwarf_errmsg(-1));
  goto out;
 }





 frame = get_eh_frame(mod, pc);
 if (!frame) {
  frame = get_dwarf_frame(mod, pc);
  if (!frame)
   goto out;
 }

 ra_regno = dwarf_frame_info(frame, &start, &end, &signalp);
 if (ra_regno < 0) {
  pr_debug("Return address register unavailable: %s\n",
    dwarf_errmsg(-1));
  goto out;
 }

 rc = check_return_reg(ra_regno, frame);

out:
 return rc;
}

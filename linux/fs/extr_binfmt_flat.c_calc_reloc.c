
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lib_info {TYPE_1__* lib_list; } ;
struct TYPE_5__ {int comm; } ;
struct TYPE_4__ {scalar_t__ build_date; unsigned long start_brk; unsigned long start_data; unsigned long start_code; unsigned long text_len; int loaded; } ;


 int MAX_SHARED_LIBS ;
 unsigned long RELOC_FAILED ;
 int SIGSEGV ;
 TYPE_2__* current ;
 scalar_t__ load_flat_shared_library (int,struct lib_info*) ;
 int pr_cont (char*,int ) ;
 int pr_err (char*,unsigned long,...) ;
 int send_sig (int ,TYPE_2__*,int ) ;

__attribute__((used)) static unsigned long
calc_reloc(unsigned long r, struct lib_info *p, int curid, int internalp)
{
 unsigned long addr;
 int id;
 unsigned long start_brk;
 unsigned long start_data;
 unsigned long text_len;
 unsigned long start_code;
 id = 0;


 start_brk = p->lib_list[id].start_brk;
 start_data = p->lib_list[id].start_data;
 start_code = p->lib_list[id].start_code;
 text_len = p->lib_list[id].text_len;

 if (r > start_brk - start_data + text_len) {
  pr_err("reloc outside program 0x%lx (0 - 0x%lx/0x%lx)",
         r, start_brk-start_data+text_len, text_len);
  goto failed;
 }

 if (r < text_len)
  addr = r + start_code;
 else
  addr = r - text_len + start_data;


 return addr;

failed:
 pr_cont(", killing %s!\n", current->comm);
 send_sig(SIGSEGV, current, 0);

 return RELOC_FAILED;
}

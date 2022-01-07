
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
union jr_entry {TYPE_1__ prefix; } ;
struct jit_buf_desc {int dummy; } ;






 union jr_entry* jit_get_next_entry (struct jit_buf_desc*) ;
 int jit_repipe_code_load (struct jit_buf_desc*,union jr_entry*) ;
 int jit_repipe_code_move (struct jit_buf_desc*,union jr_entry*) ;
 int jit_repipe_debug_info (struct jit_buf_desc*,union jr_entry*) ;
 int jit_repipe_unwinding_info (struct jit_buf_desc*,union jr_entry*) ;

__attribute__((used)) static int
jit_process_dump(struct jit_buf_desc *jd)
{
 union jr_entry *jr;
 int ret = 0;

 while ((jr = jit_get_next_entry(jd))) {
  switch(jr->prefix.id) {
  case 130:
   ret = jit_repipe_code_load(jd, jr);
   break;
  case 129:
   ret = jit_repipe_code_move(jd, jr);
   break;
  case 131:
   ret = jit_repipe_debug_info(jd, jr);
   break;
  case 128:
   ret = jit_repipe_unwinding_info(jd, jr);
   break;
  default:
   ret = 0;
   continue;
  }
 }
 return ret;
}

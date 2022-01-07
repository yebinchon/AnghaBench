
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef void* u32 ;
struct gcov_fn_info {int head; int function_name; void* cfg_checksum; int use_extra_checksum; void* checksum; void* ident; } ;
struct TYPE_2__ {int functions; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_1__* current_info ;
 int kstrdup (char const*,int ) ;
 struct gcov_fn_info* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

void llvm_gcda_emit_function(u32 ident, const char *function_name,
  u32 func_checksum, u8 use_extra_checksum, u32 cfg_checksum)
{
 struct gcov_fn_info *info = kzalloc(sizeof(*info), GFP_KERNEL);

 if (!info)
  return;

 INIT_LIST_HEAD(&info->head);
 info->ident = ident;
 info->checksum = func_checksum;
 info->use_extra_checksum = use_extra_checksum;
 info->cfg_checksum = cfg_checksum;
 if (function_name)
  info->function_name = kstrdup(function_name, GFP_KERNEL);

 list_add_tail(&info->head, &current_info->functions);
}

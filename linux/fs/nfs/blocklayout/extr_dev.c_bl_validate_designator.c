
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int designator_type; int designator_len; int code_set; } ;
struct pnfs_block_volume {TYPE_1__ scsi; } ;


 int PS_CODE_SET_BINARY ;




 int pr_err (char*,int ,int,int) ;

__attribute__((used)) static bool
bl_validate_designator(struct pnfs_block_volume *v)
{
 switch (v->scsi.designator_type) {
 case 131:
  if (v->scsi.code_set != PS_CODE_SET_BINARY)
   return 0;

  if (v->scsi.designator_len != 8 &&
      v->scsi.designator_len != 10 &&
      v->scsi.designator_len != 16)
   return 0;

  return 1;
 case 130:
  if (v->scsi.code_set != PS_CODE_SET_BINARY)
   return 0;

  if (v->scsi.designator_len != 8 &&
      v->scsi.designator_len != 16)
   return 0;

  return 1;
 case 128:
 case 129:
  pr_err("pNFS: unsupported designator "
   "(code set %d, type %d, len %d.\n",
   v->scsi.code_set,
   v->scsi.designator_type,
   v->scsi.designator_len);
  return 0;
 default:
  pr_err("pNFS: invalid designator "
   "(code set %d, type %d, len %d.\n",
   v->scsi.code_set,
   v->scsi.designator_type,
   v->scsi.designator_len);
  return 0;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct udf_part_map {scalar_t__ s_partition_type; } ;
struct super_block {int dummy; } ;
struct TYPE_10__ {int extLength; } ;
struct TYPE_9__ {int extLength; } ;
struct TYPE_8__ {int extLength; } ;
struct TYPE_7__ {int extLength; } ;
struct partitionHeaderDesc {TYPE_5__ freedSpaceBitmap; TYPE_4__ freedSpaceTable; TYPE_3__ unallocSpaceBitmap; TYPE_2__ unallocSpaceTable; } ;
struct TYPE_6__ {int ident; } ;
struct partitionDesc {scalar_t__ partitionContentsUse; TYPE_1__ partitionContents; int accessType; } ;


 int EACCES ;




 int PD_PARTITION_CONTENTS_NSR02 ;
 int PD_PARTITION_CONTENTS_NSR03 ;
 int UDF_FLAG_RW_INCOMPAT ;
 int UDF_SET_FLAG (struct super_block*,int ) ;
 scalar_t__ UDF_VIRTUAL_MAP15 ;
 scalar_t__ UDF_VIRTUAL_MAP20 ;
 int le32_to_cpu (int ) ;
 int sb_rdonly (struct super_block*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int check_partition_desc(struct super_block *sb,
    struct partitionDesc *p,
    struct udf_part_map *map)
{
 bool umap, utable, fmap, ftable;
 struct partitionHeaderDesc *phd;

 switch (le32_to_cpu(p->accessType)) {
 case 130:
 case 128:
 case 129:
 case 131:
  goto force_ro;
 }


 if (strcmp(p->partitionContents.ident, PD_PARTITION_CONTENTS_NSR02) &&
     strcmp(p->partitionContents.ident, PD_PARTITION_CONTENTS_NSR03))
  goto force_ro;

 phd = (struct partitionHeaderDesc *)p->partitionContentsUse;
 utable = phd->unallocSpaceTable.extLength;
 umap = phd->unallocSpaceBitmap.extLength;
 ftable = phd->freedSpaceTable.extLength;
 fmap = phd->freedSpaceBitmap.extLength;


 if (!utable && !umap && !ftable && !fmap)
  goto force_ro;


 if (ftable || fmap)
  goto force_ro;

 if (utable && umap)
  goto force_ro;

 if (map->s_partition_type == UDF_VIRTUAL_MAP15 ||
     map->s_partition_type == UDF_VIRTUAL_MAP20)
  goto force_ro;

 return 0;
force_ro:
 if (!sb_rdonly(sb))
  return -EACCES;
 UDF_SET_FLAG(sb, UDF_FLAG_RW_INCOMPAT);
 return 0;
}

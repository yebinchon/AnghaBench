
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct udf_vds_record {int dummy; } ;
struct desc_seq_scan_data {struct udf_vds_record* vds; } ;
struct buffer_head {int dummy; } ;







 size_t VDS_POS_IMP_USE_VOL_DESC ;
 size_t VDS_POS_LOGICAL_VOL_DESC ;
 size_t VDS_POS_PRIMARY_VOL_DESC ;
 size_t VDS_POS_UNALLOC_SPACE_DESC ;
 struct udf_vds_record* handle_partition_descriptor (struct buffer_head*,struct desc_seq_scan_data*) ;

__attribute__((used)) static struct udf_vds_record *get_volume_descriptor_record(uint16_t ident,
  struct buffer_head *bh, struct desc_seq_scan_data *data)
{
 switch (ident) {
 case 129:
  return &(data->vds[VDS_POS_PRIMARY_VOL_DESC]);
 case 132:
  return &(data->vds[VDS_POS_IMP_USE_VOL_DESC]);
 case 131:
  return &(data->vds[VDS_POS_LOGICAL_VOL_DESC]);
 case 128:
  return &(data->vds[VDS_POS_UNALLOC_SPACE_DESC]);
 case 130:
  return handle_partition_descriptor(bh, data);
 }
 return ((void*)0);
}

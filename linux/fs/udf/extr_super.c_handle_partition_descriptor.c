
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udf_vds_record {int dummy; } ;
struct partitionDesc {int partitionNumber; } ;
struct part_desc_seq_scan_data {int partnum; struct udf_vds_record rec; } ;
struct desc_seq_scan_data {int num_part_descs; int size_part_descs; struct part_desc_seq_scan_data* part_descs_loc; } ;
struct buffer_head {scalar_t__ b_data; } ;


 unsigned int ALIGN (int,int ) ;
 int ENOMEM ;
 struct udf_vds_record* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int PART_DESC_ALLOC_STEP ;
 struct part_desc_seq_scan_data* kcalloc (unsigned int,int,int ) ;
 int kfree (struct part_desc_seq_scan_data*) ;
 int le16_to_cpu (int ) ;
 int memcpy (struct part_desc_seq_scan_data*,struct part_desc_seq_scan_data*,int) ;

__attribute__((used)) static struct udf_vds_record *handle_partition_descriptor(
    struct buffer_head *bh,
    struct desc_seq_scan_data *data)
{
 struct partitionDesc *desc = (struct partitionDesc *)bh->b_data;
 int partnum;
 int i;

 partnum = le16_to_cpu(desc->partitionNumber);
 for (i = 0; i < data->num_part_descs; i++)
  if (partnum == data->part_descs_loc[i].partnum)
   return &(data->part_descs_loc[i].rec);
 if (data->num_part_descs >= data->size_part_descs) {
  struct part_desc_seq_scan_data *new_loc;
  unsigned int new_size = ALIGN(partnum, PART_DESC_ALLOC_STEP);

  new_loc = kcalloc(new_size, sizeof(*new_loc), GFP_KERNEL);
  if (!new_loc)
   return ERR_PTR(-ENOMEM);
  memcpy(new_loc, data->part_descs_loc,
         data->size_part_descs * sizeof(*new_loc));
  kfree(data->part_descs_loc);
  data->part_descs_loc = new_loc;
  data->size_part_descs = new_size;
 }
 return &(data->part_descs_loc[data->num_part_descs++].rec);
}

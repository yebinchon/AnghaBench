#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct udf_vds_record {int dummy; } ;
struct partitionDesc {int /*<<< orphan*/  partitionNumber; } ;
struct part_desc_seq_scan_data {int partnum; struct udf_vds_record rec; } ;
struct desc_seq_scan_data {int num_part_descs; int size_part_descs; struct part_desc_seq_scan_data* part_descs_loc; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 unsigned int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct udf_vds_record* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PART_DESC_ALLOC_STEP ; 
 struct part_desc_seq_scan_data* FUNC2 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct part_desc_seq_scan_data*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct part_desc_seq_scan_data*,struct part_desc_seq_scan_data*,int) ; 

__attribute__((used)) static struct udf_vds_record *FUNC6(
				struct buffer_head *bh,
				struct desc_seq_scan_data *data)
{
	struct partitionDesc *desc = (struct partitionDesc *)bh->b_data;
	int partnum;
	int i;

	partnum = FUNC4(desc->partitionNumber);
	for (i = 0; i < data->num_part_descs; i++)
		if (partnum == data->part_descs_loc[i].partnum)
			return &(data->part_descs_loc[i].rec);
	if (data->num_part_descs >= data->size_part_descs) {
		struct part_desc_seq_scan_data *new_loc;
		unsigned int new_size = FUNC0(partnum, PART_DESC_ALLOC_STEP);

		new_loc = FUNC2(new_size, sizeof(*new_loc), GFP_KERNEL);
		if (!new_loc)
			return FUNC1(-ENOMEM);
		FUNC5(new_loc, data->part_descs_loc,
		       data->size_part_descs * sizeof(*new_loc));
		FUNC3(data->part_descs_loc);
		data->part_descs_loc = new_loc;
		data->size_part_descs = new_size;
	}
	return &(data->part_descs_loc[data->num_part_descs++].rec);
}
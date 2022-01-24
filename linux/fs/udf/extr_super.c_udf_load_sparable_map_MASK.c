#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uint16_t ;
struct udf_sparing_data {struct buffer_head** s_spar_map; scalar_t__ s_packet_len; } ;
struct TYPE_3__ {struct udf_sparing_data s_sparing; } ;
struct udf_part_map {int /*<<< orphan*/  s_partition_func; int /*<<< orphan*/  s_partition_type; TYPE_1__ s_type_specific; } ;
struct super_block {scalar_t__ s_blocksize; } ;
struct TYPE_4__ {int /*<<< orphan*/  ident; } ;
struct sparingTable {int /*<<< orphan*/  reallocationTableLen; TYPE_2__ sparingIdent; } ;
struct sparablePartitionMap {int numSparingTables; int /*<<< orphan*/ * locSparingTable; int /*<<< orphan*/  packetLength; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  UDF_ID_SPARING ; 
 int /*<<< orphan*/  UDF_SPARABLE_MAP15 ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,char*,int) ; 
 int /*<<< orphan*/  udf_get_pblock_spar15 ; 
 struct buffer_head* FUNC7 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC8(struct super_block *sb,
				 struct udf_part_map *map,
				 struct sparablePartitionMap *spm)
{
	uint32_t loc;
	uint16_t ident;
	struct sparingTable *st;
	struct udf_sparing_data *sdata = &map->s_type_specific.s_sparing;
	int i;
	struct buffer_head *bh;

	map->s_partition_type = UDF_SPARABLE_MAP15;
	sdata->s_packet_len = FUNC2(spm->packetLength);
	if (!FUNC1(sdata->s_packet_len)) {
		FUNC6(sb, "error loading logical volume descriptor: "
			"Invalid packet length %u\n",
			(unsigned)sdata->s_packet_len);
		return -EIO;
	}
	if (spm->numSparingTables > 4) {
		FUNC6(sb, "error loading logical volume descriptor: "
			"Too many sparing tables (%d)\n",
			(int)spm->numSparingTables);
		return -EIO;
	}

	for (i = 0; i < spm->numSparingTables; i++) {
		loc = FUNC3(spm->locSparingTable[i]);
		bh = FUNC7(sb, loc, loc, &ident);
		if (!bh)
			continue;

		st = (struct sparingTable *)bh->b_data;
		if (ident != 0 ||
		    FUNC5(st->sparingIdent.ident, UDF_ID_SPARING,
			    FUNC4(UDF_ID_SPARING)) ||
		    sizeof(*st) + FUNC2(st->reallocationTableLen) >
							sb->s_blocksize) {
			FUNC0(bh);
			continue;
		}

		sdata->s_spar_map[i] = bh;
	}
	map->s_partition_func = udf_get_pblock_spar15;
	return 0;
}
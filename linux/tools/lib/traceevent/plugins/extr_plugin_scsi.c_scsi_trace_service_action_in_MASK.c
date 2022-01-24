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
typedef  int u64 ;
typedef  unsigned char u32 ;
struct trace_seq {char* buffer; int len; } ;
typedef  int sector_t ;

/* Variables and functions */
#define  SAI_GET_LBA_STATUS 129 
#define  SAI_READ_CAPACITY_16 128 
 int FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC3(struct trace_seq *p, unsigned char *cdb, int len)
{
	const char *ret = p->buffer + p->len, *cmd;
	sector_t lba = 0;
	u32 alloc_len = 0;

	switch (FUNC0(cdb)) {
	case SAI_READ_CAPACITY_16:
		cmd = "READ_CAPACITY_16";
		break;
	case SAI_GET_LBA_STATUS:
		cmd = "GET_LBA_STATUS";
		break;
	default:
		FUNC1(p, "UNKNOWN");
		goto out;
	}

	lba |= ((u64)cdb[2] << 56);
	lba |= ((u64)cdb[3] << 48);
	lba |= ((u64)cdb[4] << 40);
	lba |= ((u64)cdb[5] << 32);
	lba |= (cdb[6] << 24);
	lba |= (cdb[7] << 16);
	lba |= (cdb[8] << 8);
	lba |=  cdb[9];
	alloc_len |= (cdb[10] << 24);
	alloc_len |= (cdb[11] << 16);
	alloc_len |= (cdb[12] << 8);
	alloc_len |=  cdb[13];

	FUNC1(p, "%s lba=%llu alloc_len=%u", cmd,
			 (unsigned long long)lba, alloc_len);

out:
	FUNC2(p, 0);
	return ret;
}
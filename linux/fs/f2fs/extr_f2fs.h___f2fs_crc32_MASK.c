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
typedef  int /*<<< orphan*/  u32 ;
struct shash_desc {int /*<<< orphan*/  tfm; } ;
struct f2fs_sb_info {int /*<<< orphan*/  s_chksum_driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct shash_desc*,void const*,unsigned int) ; 

__attribute__((used)) static inline u32 FUNC3(struct f2fs_sb_info *sbi, u32 crc,
			      const void *address, unsigned int length)
{
	struct {
		struct shash_desc shash;
		char ctx[4];
	} desc;
	int err;

	FUNC0(FUNC1(sbi->s_chksum_driver) != sizeof(desc.ctx));

	desc.shash.tfm = sbi->s_chksum_driver;
	*(u32 *)desc.ctx = crc;

	err = FUNC2(&desc.shash, address, length);
	FUNC0(err);

	return *(u32 *)desc.ctx;
}
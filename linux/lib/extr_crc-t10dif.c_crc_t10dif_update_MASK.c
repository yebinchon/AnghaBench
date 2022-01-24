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
struct shash_desc {int /*<<< orphan*/  tfm; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  crct10dif_fallback ; 
 int /*<<< orphan*/  crct10dif_tfm ; 
 int FUNC2 (struct shash_desc*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__u16 FUNC7(__u16 crc, const unsigned char *buffer, size_t len)
{
	struct {
		struct shash_desc shash;
		char ctx[2];
	} desc;
	int err;

	if (FUNC6(&crct10dif_fallback))
		return FUNC1(crc, buffer, len);

	FUNC4();
	desc.shash.tfm = FUNC3(crct10dif_tfm);
	*(__u16 *)desc.ctx = crc;

	err = FUNC2(&desc.shash, buffer, len);
	FUNC5();

	FUNC0(err);

	return *(__u16 *)desc.ctx;
}
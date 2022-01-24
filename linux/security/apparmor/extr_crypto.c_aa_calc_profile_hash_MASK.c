#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct aa_profile {int /*<<< orphan*/ * hash; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_6__ {scalar_t__ tfm; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  aa_g_hash_policy ; 
 int /*<<< orphan*/  apparmor_hash_size ; 
 scalar_t__ apparmor_tfm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,size_t) ; 
 TYPE_1__* desc ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct aa_profile *profile, u32 version, void *start,
			 size_t len)
{
	FUNC0(desc, apparmor_tfm);
	int error = -ENOMEM;
	__le32 le32_version = FUNC1(version);

	if (!aa_g_hash_policy)
		return 0;

	if (!apparmor_tfm)
		return 0;

	profile->hash = FUNC6(apparmor_hash_size, GFP_KERNEL);
	if (!profile->hash)
		goto fail;

	desc->tfm = apparmor_tfm;

	error = FUNC3(desc);
	if (error)
		goto fail;
	error = FUNC4(desc, (u8 *) &le32_version, 4);
	if (error)
		goto fail;
	error = FUNC4(desc, (u8 *) start, len);
	if (error)
		goto fail;
	error = FUNC2(desc, profile->hash);
	if (error)
		goto fail;

	return 0;

fail:
	FUNC5(profile->hash);
	profile->hash = NULL;

	return error;
}
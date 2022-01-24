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
struct TYPE_6__ {scalar_t__ tfm; } ;

/* Variables and functions */
 int ENOMEM ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  apparmor_hash_size ; 
 scalar_t__ apparmor_tfm ; 
 int FUNC2 (TYPE_1__*,char*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,size_t) ; 
 TYPE_1__* desc ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

char *FUNC7(void *data, size_t len)
{
	FUNC1(desc, apparmor_tfm);
	char *hash = NULL;
	int error = -ENOMEM;

	if (!apparmor_tfm)
		return NULL;

	hash = FUNC6(apparmor_hash_size, GFP_KERNEL);
	if (!hash)
		goto fail;

	desc->tfm = apparmor_tfm;

	error = FUNC3(desc);
	if (error)
		goto fail;
	error = FUNC4(desc, (u8 *) data, len);
	if (error)
		goto fail;
	error = FUNC2(desc, hash);
	if (error)
		goto fail;

	return hash;

fail:
	FUNC5(hash);

	return FUNC0(error);
}
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
typedef  size_t u8 ;
typedef  int u16 ;
struct tomoyo_acl_param {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t TOMOYO_MAC_FILE_MOUNT ; 
 size_t TOMOYO_MAX_MKDEV_OPERATION ; 
 size_t TOMOYO_MAX_PATH2_OPERATION ; 
 size_t TOMOYO_MAX_PATH_NUMBER_OPERATION ; 
 size_t TOMOYO_MAX_PATH_OPERATION ; 
 int /*<<< orphan*/ * tomoyo_mac_keywords ; 
 int /*<<< orphan*/ * tomoyo_path_keyword ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 size_t* tomoyo_pn2mac ; 
 size_t* tomoyo_pnnn2mac ; 
 size_t* tomoyo_pp2mac ; 
 char* FUNC1 (struct tomoyo_acl_param*) ; 
 int FUNC2 (int,struct tomoyo_acl_param*) ; 
 int FUNC3 (struct tomoyo_acl_param*) ; 
 int FUNC4 (int,struct tomoyo_acl_param*) ; 
 int FUNC5 (int,struct tomoyo_acl_param*) ; 
 int FUNC6 (int,struct tomoyo_acl_param*) ; 

int FUNC7(struct tomoyo_acl_param *param)
{
	u16 perm = 0;
	u8 type;
	const char *operation = FUNC1(param);

	for (type = 0; type < TOMOYO_MAX_PATH_OPERATION; type++)
		if (FUNC0(operation, tomoyo_path_keyword[type]))
			perm |= 1 << type;
	if (perm)
		return FUNC5(perm, param);
	for (type = 0; type < TOMOYO_MAX_PATH2_OPERATION; type++)
		if (FUNC0(operation,
				   tomoyo_mac_keywords[tomoyo_pp2mac[type]]))
			perm |= 1 << type;
	if (perm)
		return FUNC4(perm, param);
	for (type = 0; type < TOMOYO_MAX_PATH_NUMBER_OPERATION; type++)
		if (FUNC0(operation,
				   tomoyo_mac_keywords[tomoyo_pn2mac[type]]))
			perm |= 1 << type;
	if (perm)
		return FUNC6(perm, param);
	for (type = 0; type < TOMOYO_MAX_MKDEV_OPERATION; type++)
		if (FUNC0(operation,
				   tomoyo_mac_keywords[tomoyo_pnnn2mac[type]]))
			perm |= 1 << type;
	if (perm)
		return FUNC2(perm, param);
	if (FUNC0(operation,
			   tomoyo_mac_keywords[TOMOYO_MAC_FILE_MOUNT]))
		return FUNC3(param);
	return -EINVAL;
}
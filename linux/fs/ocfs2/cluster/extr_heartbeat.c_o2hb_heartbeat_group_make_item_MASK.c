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
struct config_item {int dummy; } ;
struct o2hb_region {scalar_t__ hr_region_num; int /*<<< orphan*/  hr_handler_list; struct config_item hr_item; int /*<<< orphan*/  hr_key; int /*<<< orphan*/  hr_all_item; } ;
struct o2hb_nego_msg {int dummy; } ;
struct config_group {int dummy; } ;

/* Variables and functions */
 int EFBIG ; 
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 struct config_item* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ O2HB_MAX_REGION_NAME_LEN ; 
 int /*<<< orphan*/  O2HB_NEGO_APPROVE_MSG ; 
 int /*<<< orphan*/  O2HB_NEGO_TIMEOUT_MSG ; 
 scalar_t__ O2NM_MAX_REGIONS ; 
 int /*<<< orphan*/  FUNC2 (struct config_item*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char const*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct o2hb_region*) ; 
 struct o2hb_region* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  o2hb_all_regions ; 
 int /*<<< orphan*/  o2hb_debug_dir ; 
 int /*<<< orphan*/  FUNC8 (struct o2hb_region*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  o2hb_live_lock ; 
 int /*<<< orphan*/  o2hb_nego_approve_handler ; 
 int /*<<< orphan*/  o2hb_nego_timeout_handler ; 
 int /*<<< orphan*/  o2hb_region_bitmap ; 
 int /*<<< orphan*/  o2hb_region_type ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct o2hb_region*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (char const*) ; 

__attribute__((used)) static struct config_item *FUNC16(struct config_group *group,
							  const char *name)
{
	struct o2hb_region *reg = NULL;
	int ret;

	reg = FUNC6(sizeof(struct o2hb_region), GFP_KERNEL);
	if (reg == NULL)
		return FUNC0(-ENOMEM);

	if (FUNC15(name) > O2HB_MAX_REGION_NAME_LEN) {
		ret = -ENAMETOOLONG;
		goto free;
	}

	FUNC13(&o2hb_live_lock);
	reg->hr_region_num = 0;
	if (FUNC9()) {
		reg->hr_region_num = FUNC4(o2hb_region_bitmap,
							 O2NM_MAX_REGIONS);
		if (reg->hr_region_num >= O2NM_MAX_REGIONS) {
			FUNC14(&o2hb_live_lock);
			ret = -EFBIG;
			goto free;
		}
		FUNC12(reg->hr_region_num, o2hb_region_bitmap);
	}
	FUNC7(&reg->hr_all_item, &o2hb_all_regions);
	FUNC14(&o2hb_live_lock);

	FUNC2(&reg->hr_item, name, &o2hb_region_type);

	/* this is the same way to generate msg key as dlm, for local heartbeat,
	 * name is also the same, so make initial crc value different to avoid
	 * message key conflict.
	 */
	reg->hr_key = FUNC3(reg->hr_region_num + O2NM_MAX_REGIONS,
		name, FUNC15(name));
	FUNC1(&reg->hr_handler_list);
	ret = FUNC10(O2HB_NEGO_TIMEOUT_MSG, reg->hr_key,
			sizeof(struct o2hb_nego_msg),
			o2hb_nego_timeout_handler,
			reg, NULL, &reg->hr_handler_list);
	if (ret)
		goto free;

	ret = FUNC10(O2HB_NEGO_APPROVE_MSG, reg->hr_key,
			sizeof(struct o2hb_nego_msg),
			o2hb_nego_approve_handler,
			reg, NULL, &reg->hr_handler_list);
	if (ret)
		goto unregister_handler;

	FUNC8(reg, o2hb_debug_dir);

	return &reg->hr_item;

unregister_handler:
	FUNC11(&reg->hr_handler_list);
free:
	FUNC5(reg);
	return FUNC0(ret);
}
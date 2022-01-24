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
struct stream_info {int /*<<< orphan*/ * compr_cb; int /*<<< orphan*/ * compr_cb_param; } ;
struct intel_sst_drv {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct intel_sst_drv* FUNC2 (struct device*) ; 
 struct stream_info* FUNC3 (struct intel_sst_drv*,unsigned int) ; 
 int FUNC4 (struct intel_sst_drv*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct device *dev, unsigned int str_id)
{
	int retval;
	struct stream_info *stream;
	struct intel_sst_drv *ctx = FUNC2(dev);

	stream = FUNC3(ctx, str_id);
	if (!stream) {
		FUNC1(dev, "stream info is NULL for str %d!!!\n", str_id);
		return -EINVAL;
	}

	retval = FUNC4(ctx, str_id);
	stream->compr_cb_param = NULL;
	stream->compr_cb = NULL;

	if (retval)
		FUNC1(dev, "free stream returned err %d\n", retval);

	FUNC0(dev, "End\n");
	return retval;
}
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
struct q6adm {int /*<<< orphan*/  copps_list_lock; int /*<<< orphan*/  copps_list; int /*<<< orphan*/  matrix_map_wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  ainfo; struct device* dev; struct apr_device* apr; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct apr_device {int /*<<< orphan*/  svc_id; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct q6adm*) ; 
 struct q6adm* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct apr_device *adev)
{
	struct device *dev = &adev->dev;
	struct q6adm *adm;

	adm = FUNC2(&adev->dev, sizeof(*adm), GFP_KERNEL);
	if (!adm)
		return -ENOMEM;

	adm->apr = adev;
	FUNC1(&adev->dev, adm);
	adm->dev = dev;
	FUNC6(adev->svc_id, &adm->ainfo);
	FUNC4(&adm->lock);
	FUNC3(&adm->matrix_map_wait);

	FUNC0(&adm->copps_list);
	FUNC7(&adm->copps_list_lock);

	return FUNC5(dev->of_node, NULL, NULL, dev);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  jackpoll_work; } ;
struct hdac_hda_priv {TYPE_1__ codec; } ;
struct hdac_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct hdac_hda_priv* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct hdac_device *hdev)
{
	struct hdac_hda_priv *hda_pvt;

	hda_pvt = FUNC1(&hdev->dev);
	FUNC0(&hda_pvt->codec.jackpoll_work);
	return 0;
}
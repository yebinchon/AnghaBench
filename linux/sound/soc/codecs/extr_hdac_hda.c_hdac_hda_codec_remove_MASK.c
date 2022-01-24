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
struct snd_soc_component {int dummy; } ;
struct hdac_device {int /*<<< orphan*/  bus; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct hdac_device core; } ;
struct hdac_hda_priv {TYPE_1__ codec; } ;
struct hdac_ext_link {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct hdac_ext_link* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct hdac_ext_link*) ; 
 struct hdac_hda_priv* FUNC5 (struct snd_soc_component*) ; 

__attribute__((used)) static void FUNC6(struct snd_soc_component *component)
{
	struct hdac_hda_priv *hda_pvt =
		      FUNC5(component);
	struct hdac_device *hdev = &hda_pvt->codec.core;
	struct hdac_ext_link *hlink = NULL;

	hlink = FUNC3(hdev->bus, FUNC1(&hdev->dev));
	if (!hlink) {
		FUNC0(&hdev->dev, "hdac link not found\n");
		return;
	}

	FUNC2(&hdev->dev);
	FUNC4(hdev->bus, hlink);
}
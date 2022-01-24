#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct device_node* of_node; TYPE_1__* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpcap_dai ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  soc_codec_dev_cpcap ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct device_node *codec_node =
		FUNC2(pdev->dev.parent->of_node, "audio-codec");

	pdev->dev.of_node = codec_node;

	return FUNC1(&pdev->dev, &soc_codec_dev_cpcap,
				      cpcap_dai, FUNC0(cpcap_dai));
}
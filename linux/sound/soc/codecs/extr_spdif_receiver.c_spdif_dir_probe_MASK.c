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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  dir_stub_dai ; 
 int /*<<< orphan*/  soc_codec_spdif_dir ; 

__attribute__((used)) static int FUNC1(struct platform_device *pdev)
{
	return FUNC0(&pdev->dev,
			&soc_codec_spdif_dir,
			&dir_stub_dai, 1);
}
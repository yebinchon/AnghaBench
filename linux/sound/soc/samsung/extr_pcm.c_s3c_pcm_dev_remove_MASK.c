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
struct s3c_pcm_info {int /*<<< orphan*/  pclk; int /*<<< orphan*/  cclk; } ;
struct platform_device {size_t id; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct s3c_pcm_info* s3c_pcm ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct s3c_pcm_info *pcm = &s3c_pcm[pdev->id];

	FUNC1(&pdev->dev);
	FUNC0(pcm->cclk);
	FUNC0(pcm->pclk);

	return 0;
}
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
struct cygnus_audio {int /*<<< orphan*/ * audio_clk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int PROP_LEN_MAX ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev,
						struct cygnus_audio *cygaud)
{
	int i;
	char clk_name[PROP_LEN_MAX];

	for (i = 0; i < FUNC0(cygaud->audio_clk); i++) {
		FUNC4(clk_name, PROP_LEN_MAX, "ch%d_audio", i);

		cygaud->audio_clk[i] = FUNC3(&pdev->dev, clk_name);
		if (FUNC1(cygaud->audio_clk[i]))
			return FUNC2(cygaud->audio_clk[i]);
	}

	return 0;
}
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
struct mtk_base_afe {int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct mtk_base_afe *afe,
				       struct clk *m_ck, struct clk *b_ck)
{
	int ret;

	if (m_ck) {
		ret = FUNC0(m_ck);
		if (ret) {
			FUNC1(afe->dev, "Failed to enable m_ck\n");
			return ret;
		}
	}

	if (b_ck) {
		ret = FUNC0(b_ck);
		if (ret) {
			FUNC1(afe->dev, "Failed to enable b_ck\n");
			return ret;
		}
	}
	return 0;
}
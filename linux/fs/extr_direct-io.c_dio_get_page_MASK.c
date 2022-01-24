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
struct page {int dummy; } ;
struct dio_submit {size_t head; } ;
struct dio {struct page** pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct page* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct dio_submit*) ; 
 int FUNC3 (struct dio*,struct dio_submit*) ; 

__attribute__((used)) static inline struct page *FUNC4(struct dio *dio,
					struct dio_submit *sdio)
{
	if (FUNC2(sdio) == 0) {
		int ret;

		ret = FUNC3(dio, sdio);
		if (ret)
			return FUNC1(ret);
		FUNC0(FUNC2(sdio) == 0);
	}
	return dio->pages[sdio->head];
}
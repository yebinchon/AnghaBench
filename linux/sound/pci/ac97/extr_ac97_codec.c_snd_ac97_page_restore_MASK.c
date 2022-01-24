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
struct snd_ac97 {int /*<<< orphan*/  page_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_INT_PAGING ; 
 int /*<<< orphan*/  AC97_PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ac97*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct snd_ac97 *ac97, int page_save)
{
	if (page_save >= 0) {
		FUNC1(ac97, AC97_INT_PAGING, AC97_PAGE_MASK, page_save);
		FUNC0(&ac97->page_mutex); /* unlock paging */
	}
}
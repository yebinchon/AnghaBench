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
struct kimage {int /*<<< orphan*/  unusable_pages; int /*<<< orphan*/  dest_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct kimage *image)
{
	/* Walk through and free any extra destination pages I may have */
	FUNC0(&image->dest_pages);

	/* Walk through and free any unusable pages I have cached */
	FUNC0(&image->unusable_pages);

}
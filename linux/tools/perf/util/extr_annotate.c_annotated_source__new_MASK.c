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
struct annotated_source {int /*<<< orphan*/  source; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct annotated_source* FUNC1 (int) ; 

__attribute__((used)) static struct annotated_source *FUNC2(void)
{
	struct annotated_source *src = FUNC1(sizeof(*src));

	if (src != NULL)
		FUNC0(&src->source);

	return src;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  cat; } ;
struct TYPE_6__ {TYPE_2__* level; } ;
struct user_datum {TYPE_1__ dfltlevel; TYPE_3__ range; int /*<<< orphan*/  roles; } ;
struct TYPE_5__ {int /*<<< orphan*/  cat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static int FUNC2(void *key, void *datum, void *p)
{
	struct user_datum *usrdatum;

	FUNC1(key);
	if (datum) {
		usrdatum = datum;
		FUNC0(&usrdatum->roles);
		FUNC0(&usrdatum->range.level[0].cat);
		FUNC0(&usrdatum->range.level[1].cat);
		FUNC0(&usrdatum->dfltlevel.cat);
	}
	FUNC1(datum);
	return 0;
}
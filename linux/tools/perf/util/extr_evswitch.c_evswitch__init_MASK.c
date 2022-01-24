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
struct evswitch {int discarding; scalar_t__ off_name; int /*<<< orphan*/ * off; scalar_t__ on_name; int /*<<< orphan*/ * on; } ;
struct evlist {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 void* FUNC1 (struct evlist*,scalar_t__) ; 

int FUNC2(struct evswitch *evswitch, struct evlist *evlist, FILE *fp)
{
	if (evswitch->on_name) {
		evswitch->on = FUNC1(evlist, evswitch->on_name);
		if (evswitch->on == NULL) {
			FUNC0(fp, "on", evswitch->on_name);
			return -ENOENT;
		}
		evswitch->discarding = true;
	}

	if (evswitch->off_name) {
		evswitch->off = FUNC1(evlist, evswitch->off_name);
		if (evswitch->off == NULL) {
			FUNC0(fp, "off", evswitch->off_name);
			return -ENOENT;
		}
	}

	return 0;
}
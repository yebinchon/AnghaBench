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
struct char_device_struct {unsigned int major; unsigned int baseminor; unsigned int minorct; struct char_device_struct* next; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned int CHRDEV_MAJOR_MAX ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct char_device_struct* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MINORMASK ; 
 struct char_device_struct** chrdevs ; 
 int /*<<< orphan*/  chrdevs_lock ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct char_device_struct*) ; 
 struct char_device_struct* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static struct char_device_struct *
FUNC9(unsigned int major, unsigned int baseminor,
			   int minorct, const char *name)
{
	struct char_device_struct *cd, *curr, *prev = NULL;
	int ret;
	int i;

	if (major >= CHRDEV_MAJOR_MAX) {
		FUNC7("CHRDEV \"%s\" major requested (%u) is greater than the maximum (%u)\n",
		       name, major, CHRDEV_MAJOR_MAX-1);
		return FUNC0(-EINVAL);
	}

	if (minorct > MINORMASK + 1 - baseminor) {
		FUNC7("CHRDEV \"%s\" minor range requested (%u-%u) is out of range of maximum range (%u-%u) for a single major\n",
			name, baseminor, baseminor + minorct - 1, 0, MINORMASK);
		return FUNC0(-EINVAL);
	}

	cd = FUNC3(sizeof(struct char_device_struct), GFP_KERNEL);
	if (cd == NULL)
		return FUNC0(-ENOMEM);

	FUNC5(&chrdevs_lock);

	if (major == 0) {
		ret = FUNC1();
		if (ret < 0) {
			FUNC7("CHRDEV \"%s\" dynamic allocation region is full\n",
			       name);
			goto out;
		}
		major = ret;
	}

	ret = -EBUSY;
	i = FUNC4(major);
	for (curr = chrdevs[i]; curr; prev = curr, curr = curr->next) {
		if (curr->major < major)
			continue;

		if (curr->major > major)
			break;

		if (curr->baseminor + curr->minorct <= baseminor)
			continue;

		if (curr->baseminor >= baseminor + minorct)
			break;

		goto out;
	}

	cd->major = major;
	cd->baseminor = baseminor;
	cd->minorct = minorct;
	FUNC8(cd->name, name, sizeof(cd->name));

	if (!prev) {
		cd->next = curr;
		chrdevs[i] = cd;
	} else {
		cd->next = prev->next;
		prev->next = cd;
	}

	FUNC6(&chrdevs_lock);
	return cd;
out:
	FUNC6(&chrdevs_lock);
	FUNC2(cd);
	return FUNC0(ret);
}
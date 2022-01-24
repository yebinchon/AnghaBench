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
struct device {scalar_t__ devt; } ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (unsigned int,unsigned int) ; 
 scalar_t__ Root_NFS ; 
 scalar_t__ Root_RAM0 ; 
 scalar_t__ FUNC3 (char*,int) ; 
 int /*<<< orphan*/  block_class ; 
 struct device* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char) ; 
 int /*<<< orphan*/  match_dev_by_label ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int FUNC9 (char const*,char**,int) ; 
 int FUNC10 (char const*,char*,unsigned int*,unsigned int*,...) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 
 int FUNC13 (char const*) ; 
 scalar_t__ FUNC14 (char const*,char*,int) ; 

dev_t FUNC15(const char *name)
{
	char s[32];
	char *p;
	dev_t res = 0;
	int part;

#ifdef CONFIG_BLOCK
	if (strncmp(name, "PARTUUID=", 9) == 0) {
		name += 9;
		res = devt_from_partuuid(name);
		if (!res)
			goto fail;
		goto done;
	} else if (strncmp(name, "PARTLABEL=", 10) == 0) {
		struct device *dev;

		dev = class_find_device(&block_class, NULL, name + 10,
					&match_dev_by_label);
		if (!dev)
			goto fail;

		res = dev->devt;
		put_device(dev);
		goto done;
	}
#endif

	if (FUNC14(name, "/dev/", 5) != 0) {
		unsigned maj, min, offset;
		char dummy;

		if ((FUNC10(name, "%u:%u%c", &maj, &min, &dummy) == 2) ||
		    (FUNC10(name, "%u:%u:%u:%c", &maj, &min, &offset, &dummy) == 3)) {
			res = FUNC2(maj, min);
			if (maj != FUNC0(res) || min != FUNC1(res))
				goto fail;
		} else {
			res = FUNC7(FUNC9(name, &p, 16));
			if (*p)
				goto fail;
		}
		goto done;
	}

	name += 5;
	res = Root_NFS;
	if (FUNC11(name, "nfs") == 0)
		goto done;
	res = Root_RAM0;
	if (FUNC11(name, "ram") == 0)
		goto done;

	if (FUNC13(name) > 31)
		goto fail;
	FUNC12(s, name);
	for (p = s; *p; p++)
		if (*p == '/')
			*p = '!';
	res = FUNC3(s, 0);
	if (res)
		goto done;

	/*
	 * try non-existent, but valid partition, which may only exist
	 * after revalidating the disk, like partitioned md devices
	 */
	while (p > s && FUNC6(p[-1]))
		p--;
	if (p == s || !*p || *p == '0')
		goto fail;

	/* try disk name without <part number> */
	part = FUNC9(p, NULL, 10);
	*p = '\0';
	res = FUNC3(s, part);
	if (res)
		goto done;

	/* try disk name without p<part number> */
	if (p < s + 2 || !FUNC6(p[-2]) || p[-1] != 'p')
		goto fail;
	p[-1] = '\0';
	res = FUNC3(s, part);
	if (res)
		goto done;

fail:
	return 0;
done:
	return res;
}
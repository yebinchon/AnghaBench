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
struct ubi_volume_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct ubi_volume_desc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ubi_volume_desc*) ; 
 scalar_t__ FUNC2 (char const) ; 
 int FUNC3 (char const*,char**,int /*<<< orphan*/ ) ; 
 struct ubi_volume_desc* FUNC4 (int,int,int) ; 
 struct ubi_volume_desc* FUNC5 (int,char const*,int) ; 
 struct ubi_volume_desc* FUNC6 (char const*,int) ; 

__attribute__((used)) static struct ubi_volume_desc *FUNC7(const char *name, int mode)
{
	struct ubi_volume_desc *ubi;
	int dev, vol;
	char *endptr;

	if (!name || !*name)
		return FUNC0(-EINVAL);

	/* First, try to open using the device node path method */
	ubi = FUNC6(name, mode);
	if (!FUNC1(ubi))
		return ubi;

	/* Try the "nodev" method */
	if (name[0] != 'u' || name[1] != 'b' || name[2] != 'i')
		return FUNC0(-EINVAL);

	/* ubi:NAME method */
	if ((name[3] == ':' || name[3] == '!') && name[4] != '\0')
		return FUNC5(0, name + 4, mode);

	if (!FUNC2(name[3]))
		return FUNC0(-EINVAL);

	dev = FUNC3(name + 3, &endptr, 0);

	/* ubiY method */
	if (*endptr == '\0')
		return FUNC4(0, dev, mode);

	/* ubiX_Y method */
	if (*endptr == '_' && FUNC2(endptr[1])) {
		vol = FUNC3(endptr + 1, &endptr, 0);
		if (*endptr != '\0')
			return FUNC0(-EINVAL);
		return FUNC4(dev, vol, mode);
	}

	/* ubiX:NAME method */
	if ((*endptr == ':' || *endptr == '!') && endptr[1] != '\0')
		return FUNC5(dev, ++endptr, mode);

	return FUNC0(-EINVAL);
}
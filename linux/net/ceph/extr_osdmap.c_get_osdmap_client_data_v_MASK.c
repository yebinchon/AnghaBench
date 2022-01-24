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
typedef  int u8 ;
typedef  int u16 ;

/* Variables and functions */
 int EINVAL ; 
 int OSDMAP_CLIENT_DATA_COMPAT_VER ; 
 int OSDMAP_WRAPPER_COMPAT_VER ; 
 int /*<<< orphan*/  FUNC0 (void**,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void**,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  e_inval ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 

__attribute__((used)) static int FUNC3(void **p, void *end,
				    const char *prefix, u8 *v)
{
	u8 struct_v;

	FUNC1(p, end, struct_v, e_inval);
	if (struct_v >= 7) {
		u8 struct_compat;

		FUNC1(p, end, struct_compat, e_inval);
		if (struct_compat > OSDMAP_WRAPPER_COMPAT_VER) {
			FUNC2("got v %d cv %d > %d of %s ceph_osdmap\n",
				struct_v, struct_compat,
				OSDMAP_WRAPPER_COMPAT_VER, prefix);
			return -EINVAL;
		}
		*p += 4; /* ignore wrapper struct_len */

		FUNC1(p, end, struct_v, e_inval);
		FUNC1(p, end, struct_compat, e_inval);
		if (struct_compat > OSDMAP_CLIENT_DATA_COMPAT_VER) {
			FUNC2("got v %d cv %d > %d of %s ceph_osdmap client data\n",
				struct_v, struct_compat,
				OSDMAP_CLIENT_DATA_COMPAT_VER, prefix);
			return -EINVAL;
		}
		*p += 4; /* ignore client data struct_len */
	} else {
		u16 version;

		*p -= 1;
		FUNC0(p, end, version, e_inval);
		if (version < 6) {
			FUNC2("got v %d < 6 of %s ceph_osdmap\n",
				version, prefix);
			return -EINVAL;
		}

		/* old osdmap enconding */
		struct_v = 0;
	}

	*v = struct_v;
	return 0;

e_inval:
	return -EINVAL;
}
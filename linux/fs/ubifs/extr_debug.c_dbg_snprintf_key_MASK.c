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
union ubifs_key {int* u32; } ;
struct ubifs_info {int key_fmt; } ;

/* Variables and functions */
#define  UBIFS_DATA_KEY 132 
#define  UBIFS_DENT_KEY 131 
#define  UBIFS_INO_KEY 130 
 int UBIFS_SIMPLE_KEY_FMT ; 
#define  UBIFS_TRUN_KEY 129 
#define  UBIFS_XENT_KEY 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info const*,union ubifs_key const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info const*,union ubifs_key const*) ; 
 scalar_t__ FUNC3 (struct ubifs_info const*,union ubifs_key const*) ; 
 int FUNC4 (struct ubifs_info const*,union ubifs_key const*) ; 
 scalar_t__ FUNC5 (char*,int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info const*,int) ; 

const char *FUNC7(const struct ubifs_info *c,
			     const union ubifs_key *key, char *buffer, int len)
{
	char *p = buffer;
	int type = FUNC4(c, key);

	if (c->key_fmt == UBIFS_SIMPLE_KEY_FMT) {
		switch (type) {
		case UBIFS_INO_KEY:
			len -= FUNC5(p, len, "(%lu, %s)",
					(unsigned long)FUNC3(c, key),
					FUNC0(type));
			break;
		case UBIFS_DENT_KEY:
		case UBIFS_XENT_KEY:
			len -= FUNC5(p, len, "(%lu, %s, %#08x)",
					(unsigned long)FUNC3(c, key),
					FUNC0(type), FUNC2(c, key));
			break;
		case UBIFS_DATA_KEY:
			len -= FUNC5(p, len, "(%lu, %s, %u)",
					(unsigned long)FUNC3(c, key),
					FUNC0(type), FUNC1(c, key));
			break;
		case UBIFS_TRUN_KEY:
			len -= FUNC5(p, len, "(%lu, %s)",
					(unsigned long)FUNC3(c, key),
					FUNC0(type));
			break;
		default:
			len -= FUNC5(p, len, "(bad key type: %#08x, %#08x)",
					key->u32[0], key->u32[1]);
		}
	} else
		len -= FUNC5(p, len, "bad key format %d", c->key_fmt);
	FUNC6(c, len > 0);
	return p;
}
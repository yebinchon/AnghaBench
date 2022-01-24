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
typedef  int u32 ;
struct tipc_media_addr {int /*<<< orphan*/ * value; int /*<<< orphan*/  media_id; } ;
struct tipc_media {int /*<<< orphan*/  name; int /*<<< orphan*/  (* addr2str ) (struct tipc_media_addr*,char*,int) ;} ;
typedef  int /*<<< orphan*/  addr_str ;

/* Variables and functions */
 int MAX_ADDR_STR ; 
 struct tipc_media* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_media_addr*,char*,int) ; 

int FUNC3(char *buf, int len, struct tipc_media_addr *a)
{
	char addr_str[MAX_ADDR_STR];
	struct tipc_media *m;
	int ret;

	m = FUNC0(a->media_id);

	if (m && !m->addr2str(a, addr_str, sizeof(addr_str)))
		ret = FUNC1(buf, len, "%s(%s)", m->name, addr_str);
	else {
		u32 i;

		ret = FUNC1(buf, len, "UNKNOWN(%u)", a->media_id);
		for (i = 0; i < sizeof(a->value); i++)
			ret += FUNC1(buf + ret, len - ret,
					    "-%x", a->value[i]);
	}
	return ret;
}
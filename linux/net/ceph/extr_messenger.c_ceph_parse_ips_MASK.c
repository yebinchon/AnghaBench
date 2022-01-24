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
struct ceph_entity_addr {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_ENTITY_ADDR_TYPE_LEGACY ; 
 int CEPH_MON_PORT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ceph_entity_addr*,int) ; 
 int FUNC1 (char const*,int,struct ceph_entity_addr*,char,char const**) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_entity_addr*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char const*) ; 

int FUNC5(const char *c, const char *end,
		   struct ceph_entity_addr *addr,
		   int max_count, int *count)
{
	int i, ret = -EINVAL;
	const char *p = c;

	FUNC3("parse_ips on '%.*s'\n", (int)(end-c), c);
	for (i = 0; i < max_count; i++) {
		const char *ipend;
		int port;
		char delim = ',';

		if (*p == '[') {
			delim = ']';
			p++;
		}

		ret = FUNC1(p, end - p, &addr[i], delim, &ipend);
		if (ret)
			goto bad;
		ret = -EINVAL;

		p = ipend;

		if (delim == ']') {
			if (*p != ']') {
				FUNC3("missing matching ']'\n");
				goto bad;
			}
			p++;
		}

		/* port? */
		if (p < end && *p == ':') {
			port = 0;
			p++;
			while (p < end && *p >= '0' && *p <= '9') {
				port = (port * 10) + (*p - '0');
				p++;
			}
			if (port == 0)
				port = CEPH_MON_PORT;
			else if (port > 65535)
				goto bad;
		} else {
			port = CEPH_MON_PORT;
		}

		FUNC0(&addr[i], port);
		addr[i].type = CEPH_ENTITY_ADDR_TYPE_LEGACY;

		FUNC3("parse_ips got %s\n", FUNC2(&addr[i]));

		if (p == end)
			break;
		if (*p != ',')
			goto bad;
		p++;
	}

	if (p != end)
		goto bad;

	if (count)
		*count = i + 1;
	return 0;

bad:
	FUNC4("parse_ips bad ip '%.*s'\n", (int)(end - c), c);
	return ret;
}
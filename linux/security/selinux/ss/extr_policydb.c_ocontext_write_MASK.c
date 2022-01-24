#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct policydb_compat_info {unsigned int ocon_num; } ;
struct policydb {struct ocontext** ocontexts; } ;
struct TYPE_9__ {size_t port; int /*<<< orphan*/ * dev_name; } ;
struct TYPE_8__ {size_t low_pkey; size_t high_pkey; int /*<<< orphan*/  subnet_prefix; } ;
struct TYPE_14__ {int /*<<< orphan*/ * mask; int /*<<< orphan*/ * addr; } ;
struct TYPE_11__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  addr; } ;
struct TYPE_10__ {size_t protocol; size_t low_port; size_t high_port; } ;
struct TYPE_13__ {TYPE_2__ ibendport; TYPE_1__ ibpkey; TYPE_7__ node6; int /*<<< orphan*/ * name; TYPE_4__ node; TYPE_3__ port; } ;
struct TYPE_12__ {size_t behavior; } ;
struct ocontext {size_t* sid; int /*<<< orphan*/ * context; TYPE_6__ u; TYPE_5__ v; struct ocontext* next; } ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
#define  OCON_FS 136 
#define  OCON_FSUSE 135 
#define  OCON_IBENDPORT 134 
#define  OCON_IBPKEY 133 
#define  OCON_ISID 132 
#define  OCON_NETIF 131 
#define  OCON_NODE 130 
#define  OCON_NODE6 129 
#define  OCON_PORT 128 
 unsigned int FUNC0 (struct policydb*,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,int,size_t,void*) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct policydb *p, struct policydb_compat_info *info,
			  void *fp)
{
	unsigned int i, j, rc;
	size_t nel, len;
	__be64 prefixbuf[1];
	__le32 buf[3];
	u32 nodebuf[8];
	struct ocontext *c;
	for (i = 0; i < info->ocon_num; i++) {
		nel = 0;
		for (c = p->ocontexts[i]; c; c = c->next)
			nel++;
		buf[0] = FUNC2(nel);
		rc = FUNC3(buf, sizeof(u32), 1, fp);
		if (rc)
			return rc;
		for (c = p->ocontexts[i]; c; c = c->next) {
			switch (i) {
			case OCON_ISID:
				buf[0] = FUNC2(c->sid[0]);
				rc = FUNC3(buf, sizeof(u32), 1, fp);
				if (rc)
					return rc;
				rc = FUNC0(p, &c->context[0], fp);
				if (rc)
					return rc;
				break;
			case OCON_FS:
			case OCON_NETIF:
				len = FUNC4(c->u.name);
				buf[0] = FUNC2(len);
				rc = FUNC3(buf, sizeof(u32), 1, fp);
				if (rc)
					return rc;
				rc = FUNC3(c->u.name, 1, len, fp);
				if (rc)
					return rc;
				rc = FUNC0(p, &c->context[0], fp);
				if (rc)
					return rc;
				rc = FUNC0(p, &c->context[1], fp);
				if (rc)
					return rc;
				break;
			case OCON_PORT:
				buf[0] = FUNC2(c->u.port.protocol);
				buf[1] = FUNC2(c->u.port.low_port);
				buf[2] = FUNC2(c->u.port.high_port);
				rc = FUNC3(buf, sizeof(u32), 3, fp);
				if (rc)
					return rc;
				rc = FUNC0(p, &c->context[0], fp);
				if (rc)
					return rc;
				break;
			case OCON_NODE:
				nodebuf[0] = c->u.node.addr; /* network order */
				nodebuf[1] = c->u.node.mask; /* network order */
				rc = FUNC3(nodebuf, sizeof(u32), 2, fp);
				if (rc)
					return rc;
				rc = FUNC0(p, &c->context[0], fp);
				if (rc)
					return rc;
				break;
			case OCON_FSUSE:
				buf[0] = FUNC2(c->v.behavior);
				len = FUNC4(c->u.name);
				buf[1] = FUNC2(len);
				rc = FUNC3(buf, sizeof(u32), 2, fp);
				if (rc)
					return rc;
				rc = FUNC3(c->u.name, 1, len, fp);
				if (rc)
					return rc;
				rc = FUNC0(p, &c->context[0], fp);
				if (rc)
					return rc;
				break;
			case OCON_NODE6:
				for (j = 0; j < 4; j++)
					nodebuf[j] = c->u.node6.addr[j]; /* network order */
				for (j = 0; j < 4; j++)
					nodebuf[j + 4] = c->u.node6.mask[j]; /* network order */
				rc = FUNC3(nodebuf, sizeof(u32), 8, fp);
				if (rc)
					return rc;
				rc = FUNC0(p, &c->context[0], fp);
				if (rc)
					return rc;
				break;
			case OCON_IBPKEY:
				/* subnet_prefix is in CPU order */
				prefixbuf[0] = FUNC1(c->u.ibpkey.subnet_prefix);

				rc = FUNC3(prefixbuf, sizeof(u64), 1, fp);
				if (rc)
					return rc;

				buf[0] = FUNC2(c->u.ibpkey.low_pkey);
				buf[1] = FUNC2(c->u.ibpkey.high_pkey);

				rc = FUNC3(buf, sizeof(u32), 2, fp);
				if (rc)
					return rc;
				rc = FUNC0(p, &c->context[0], fp);
				if (rc)
					return rc;
				break;
			case OCON_IBENDPORT:
				len = FUNC4(c->u.ibendport.dev_name);
				buf[0] = FUNC2(len);
				buf[1] = FUNC2(c->u.ibendport.port);
				rc = FUNC3(buf, sizeof(u32), 2, fp);
				if (rc)
					return rc;
				rc = FUNC3(c->u.ibendport.dev_name, 1, len, fp);
				if (rc)
					return rc;
				rc = FUNC0(p, &c->context[0], fp);
				if (rc)
					return rc;
				break;
			}
		}
	}
	return 0;
}
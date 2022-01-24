#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ubifs_nnode {TYPE_1__* nbranch; } ;
struct ubifs_info {int leb_size; int pnode_sz; int nnode_sz; int ltab_sz; int lsave_sz; int /*<<< orphan*/  big_lpt; } ;
struct TYPE_4__ {int pid; } ;
struct TYPE_3__ {int /*<<< orphan*/  offs; int /*<<< orphan*/  lnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int UBIFS_LPT_FANOUT ; 
#define  UBIFS_LPT_LSAVE 131 
#define  UBIFS_LPT_LTAB 130 
#define  UBIFS_LPT_NNODE 129 
#define  UBIFS_LPT_PNODE 128 
 void* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 int FUNC1 (struct ubifs_info const*,void*,int*) ; 
 int FUNC2 (struct ubifs_info const*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info const*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info const*,char*,...) ; 
 int FUNC7 (struct ubifs_info const*,int,void*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (struct ubifs_info const*,void*,struct ubifs_nnode*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 

__attribute__((used)) static void FUNC10(const struct ubifs_info *c, int lnum)
{
	int err, len = c->leb_size, node_type, node_num, node_len, offs;
	void *buf, *p;

	FUNC5("(pid %d) start dumping LEB %d\n", current->pid, lnum);
	buf = p = FUNC0(c->leb_size, GFP_NOFS, PAGE_KERNEL);
	if (!buf) {
		FUNC6(c, "cannot allocate memory to dump LPT");
		return;
	}

	err = FUNC7(c, lnum, buf, 0, c->leb_size, 1);
	if (err)
		goto out;

	while (1) {
		offs = c->leb_size - len;
		if (!FUNC3(c, p, len)) {
			int pad_len;

			pad_len = FUNC2(c, p, len);
			if (pad_len) {
				FUNC5("LEB %d:%d, pad %d bytes\n",
				       lnum, offs, pad_len);
				p += pad_len;
				len -= pad_len;
				continue;
			}
			if (len)
				FUNC5("LEB %d:%d, free %d bytes\n",
				       lnum, offs, len);
			break;
		}

		node_type = FUNC1(c, p, &node_num);
		switch (node_type) {
		case UBIFS_LPT_PNODE:
		{
			node_len = c->pnode_sz;
			if (c->big_lpt)
				FUNC5("LEB %d:%d, pnode num %d\n",
				       lnum, offs, node_num);
			else
				FUNC5("LEB %d:%d, pnode\n", lnum, offs);
			break;
		}
		case UBIFS_LPT_NNODE:
		{
			int i;
			struct ubifs_nnode nnode;

			node_len = c->nnode_sz;
			if (c->big_lpt)
				FUNC5("LEB %d:%d, nnode num %d, ",
				       lnum, offs, node_num);
			else
				FUNC5("LEB %d:%d, nnode, ",
				       lnum, offs);
			err = FUNC8(c, p, &nnode);
			if (err) {
				FUNC5("failed to unpack_node, error %d\n",
				       err);
				break;
			}
			for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
				FUNC4("%d:%d", nnode.nbranch[i].lnum,
				       nnode.nbranch[i].offs);
				if (i != UBIFS_LPT_FANOUT - 1)
					FUNC4(", ");
			}
			FUNC4("\n");
			break;
		}
		case UBIFS_LPT_LTAB:
			node_len = c->ltab_sz;
			FUNC5("LEB %d:%d, ltab\n", lnum, offs);
			break;
		case UBIFS_LPT_LSAVE:
			node_len = c->lsave_sz;
			FUNC5("LEB %d:%d, lsave len\n", lnum, offs);
			break;
		default:
			FUNC6(c, "LPT node type %d not recognized", node_type);
			goto out;
		}

		p += node_len;
		len -= node_len;
	}

	FUNC5("(pid %d) finish dumping LEB %d\n", current->pid, lnum);
out:
	FUNC9(buf);
	return;
}
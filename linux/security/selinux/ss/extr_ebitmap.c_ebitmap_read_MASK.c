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
typedef  int u64 ;
typedef  int u32 ;
struct ebitmap_node {int startbit; int* maps; struct ebitmap_node* next; } ;
struct ebitmap {int highbit; struct ebitmap_node* node; } ;
typedef  int /*<<< orphan*/  __le64 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int BITS_PER_U64 ; 
 int FUNC0 (int) ; 
 int EBITMAP_SIZE ; 
 int EBITMAP_UNIT_SIZE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct ebitmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct ebitmap*) ; 
 int /*<<< orphan*/  ebitmap_node_cachep ; 
 struct ebitmap_node* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

int FUNC8(struct ebitmap *e, void *fp)
{
	struct ebitmap_node *n = NULL;
	u32 mapunit, count, startbit, index;
	__le32 ebitmap_start;
	u64 map;
	__le64 mapbits;
	__le32 buf[3];
	int rc, i;

	FUNC2(e);

	rc = FUNC6(buf, fp, sizeof buf);
	if (rc < 0)
		goto out;

	mapunit = FUNC4(buf[0]);
	e->highbit = FUNC4(buf[1]);
	count = FUNC4(buf[2]);

	if (mapunit != BITS_PER_U64) {
		FUNC7("SELinux: ebitmap: map size %u does not "
		       "match my size %zd (high bit was %d)\n",
		       mapunit, BITS_PER_U64, e->highbit);
		goto bad;
	}

	/* round up e->highbit */
	e->highbit += EBITMAP_SIZE - 1;
	e->highbit -= (e->highbit % EBITMAP_SIZE);

	if (!e->highbit) {
		e->node = NULL;
		goto ok;
	}

	if (e->highbit && !count)
		goto bad;

	for (i = 0; i < count; i++) {
		rc = FUNC6(&ebitmap_start, fp, sizeof(u32));
		if (rc < 0) {
			FUNC7("SELinux: ebitmap: truncated map\n");
			goto bad;
		}
		startbit = FUNC4(ebitmap_start);

		if (startbit & (mapunit - 1)) {
			FUNC7("SELinux: ebitmap start bit (%d) is "
			       "not a multiple of the map unit size (%u)\n",
			       startbit, mapunit);
			goto bad;
		}
		if (startbit > e->highbit - mapunit) {
			FUNC7("SELinux: ebitmap start bit (%d) is "
			       "beyond the end of the bitmap (%u)\n",
			       startbit, (e->highbit - mapunit));
			goto bad;
		}

		if (!n || startbit >= n->startbit + EBITMAP_SIZE) {
			struct ebitmap_node *tmp;
			tmp = FUNC3(ebitmap_node_cachep, GFP_KERNEL);
			if (!tmp) {
				FUNC7("SELinux: ebitmap: out of memory\n");
				rc = -ENOMEM;
				goto bad;
			}
			/* round down */
			tmp->startbit = startbit - (startbit % EBITMAP_SIZE);
			if (n)
				n->next = tmp;
			else
				e->node = tmp;
			n = tmp;
		} else if (startbit <= n->startbit) {
			FUNC7("SELinux: ebitmap: start bit %d"
			       " comes after start bit %d\n",
			       startbit, n->startbit);
			goto bad;
		}

		rc = FUNC6(&mapbits, fp, sizeof(u64));
		if (rc < 0) {
			FUNC7("SELinux: ebitmap: truncated map\n");
			goto bad;
		}
		map = FUNC5(mapbits);

		index = (startbit - n->startbit) / EBITMAP_UNIT_SIZE;
		while (map) {
			n->maps[index++] = map & (-1UL);
			map = FUNC0(map);
		}
	}
ok:
	rc = 0;
out:
	return rc;
bad:
	if (!rc)
		rc = -EINVAL;
	FUNC1(e);
	goto out;
}
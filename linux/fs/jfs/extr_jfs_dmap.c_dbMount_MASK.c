#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct metapage {scalar_t__ data; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dbmap_disk {int /*<<< orphan*/  dn_maxfreebud; int /*<<< orphan*/  dn_agsize; int /*<<< orphan*/ * dn_agfree; int /*<<< orphan*/  dn_agl2size; int /*<<< orphan*/  dn_agstart; int /*<<< orphan*/  dn_agwidth; int /*<<< orphan*/  dn_agheight; int /*<<< orphan*/  dn_aglevel; int /*<<< orphan*/  dn_agpref; int /*<<< orphan*/  dn_maxag; int /*<<< orphan*/  dn_maxlevel; int /*<<< orphan*/  dn_numag; int /*<<< orphan*/  dn_l2nbperpage; int /*<<< orphan*/  dn_nfree; int /*<<< orphan*/  dn_mapsize; } ;
struct bmap {int /*<<< orphan*/  db_active; struct inode* db_ipbmap; int /*<<< orphan*/  db_maxfreebud; void* db_agsize; void** db_agfree; void* db_agl2size; void* db_agstart; void* db_agwidth; void* db_agheight; void* db_aglevel; void* db_agpref; void* db_maxag; void* db_maxlevel; void* db_numag; void* db_l2nbperpage; void* db_nfree; void* db_mapsize; } ;
struct TYPE_2__ {int l2nbperpage; struct bmap* bmap; } ;

/* Variables and functions */
 int BMAPBLKNO ; 
 int /*<<< orphan*/  FUNC0 (struct bmap*) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int MAXAG ; 
 int /*<<< orphan*/  PSIZE ; 
 int /*<<< orphan*/  FUNC2 (struct bmap*) ; 
 struct bmap* FUNC3 (int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct metapage* FUNC7 (struct inode*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct metapage*) ; 

int FUNC9(struct inode *ipbmap)
{
	struct bmap *bmp;
	struct dbmap_disk *dbmp_le;
	struct metapage *mp;
	int i;

	/*
	 * allocate/initialize the in-memory bmap descriptor
	 */
	/* allocate memory for the in-memory bmap descriptor */
	bmp = FUNC3(sizeof(struct bmap), GFP_KERNEL);
	if (bmp == NULL)
		return -ENOMEM;

	/* read the on-disk bmap descriptor. */
	mp = FUNC7(ipbmap,
			   BMAPBLKNO << FUNC1(ipbmap->i_sb)->l2nbperpage,
			   PSIZE, 0);
	if (mp == NULL) {
		FUNC2(bmp);
		return -EIO;
	}

	/* copy the on-disk bmap descriptor to its in-memory version. */
	dbmp_le = (struct dbmap_disk *) mp->data;
	bmp->db_mapsize = FUNC5(dbmp_le->dn_mapsize);
	bmp->db_nfree = FUNC5(dbmp_le->dn_nfree);
	bmp->db_l2nbperpage = FUNC4(dbmp_le->dn_l2nbperpage);
	bmp->db_numag = FUNC4(dbmp_le->dn_numag);
	bmp->db_maxlevel = FUNC4(dbmp_le->dn_maxlevel);
	bmp->db_maxag = FUNC4(dbmp_le->dn_maxag);
	bmp->db_agpref = FUNC4(dbmp_le->dn_agpref);
	bmp->db_aglevel = FUNC4(dbmp_le->dn_aglevel);
	bmp->db_agheight = FUNC4(dbmp_le->dn_agheight);
	bmp->db_agwidth = FUNC4(dbmp_le->dn_agwidth);
	bmp->db_agstart = FUNC4(dbmp_le->dn_agstart);
	bmp->db_agl2size = FUNC4(dbmp_le->dn_agl2size);
	for (i = 0; i < MAXAG; i++)
		bmp->db_agfree[i] = FUNC5(dbmp_le->dn_agfree[i]);
	bmp->db_agsize = FUNC5(dbmp_le->dn_agsize);
	bmp->db_maxfreebud = dbmp_le->dn_maxfreebud;

	/* release the buffer. */
	FUNC8(mp);

	/* bind the bmap inode and the bmap descriptor to each other. */
	bmp->db_ipbmap = ipbmap;
	FUNC1(ipbmap->i_sb)->bmap = bmp;

	FUNC6(bmp->db_active, 0, sizeof(bmp->db_active));

	/*
	 * allocate/initialize the bmap lock
	 */
	FUNC0(bmp);

	return (0);
}
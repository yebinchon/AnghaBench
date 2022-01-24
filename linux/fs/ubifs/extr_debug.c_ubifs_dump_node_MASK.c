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
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_trun_node {int /*<<< orphan*/  new_size; int /*<<< orphan*/  old_size; int /*<<< orphan*/  inum; } ;
struct ubifs_sb_node {int uuid; int /*<<< orphan*/  time_gran; int /*<<< orphan*/  fmt_version; int /*<<< orphan*/  rp_gid; int /*<<< orphan*/  rp_uid; int /*<<< orphan*/  rp_size; int /*<<< orphan*/  default_compr; int /*<<< orphan*/  lsave_cnt; int /*<<< orphan*/  fanout; int /*<<< orphan*/  jhead_cnt; int /*<<< orphan*/  orph_lebs; int /*<<< orphan*/  lpt_lebs; int /*<<< orphan*/  log_lebs; int /*<<< orphan*/  max_bud_bytes; int /*<<< orphan*/  max_leb_cnt; int /*<<< orphan*/  leb_cnt; int /*<<< orphan*/  leb_size; int /*<<< orphan*/  min_io_size; scalar_t__ key_fmt; scalar_t__ key_hash; int /*<<< orphan*/  flags; } ;
struct ubifs_ref_node {int /*<<< orphan*/  jhead; int /*<<< orphan*/  offs; int /*<<< orphan*/  lnum; } ;
struct ubifs_pad_node {int /*<<< orphan*/  pad_len; } ;
struct ubifs_orph_node {int /*<<< orphan*/ * inos; int /*<<< orphan*/  cmt_no; } ;
struct ubifs_mst_node {int /*<<< orphan*/  total_dark; int /*<<< orphan*/  total_dead; int /*<<< orphan*/  total_used; int /*<<< orphan*/  total_dirty; int /*<<< orphan*/  total_free; int /*<<< orphan*/  idx_lebs; int /*<<< orphan*/  empty_lebs; int /*<<< orphan*/  leb_cnt; int /*<<< orphan*/  lscan_lnum; int /*<<< orphan*/  lsave_offs; int /*<<< orphan*/  lsave_lnum; int /*<<< orphan*/  ltab_offs; int /*<<< orphan*/  ltab_lnum; int /*<<< orphan*/  nhead_offs; int /*<<< orphan*/  nhead_lnum; int /*<<< orphan*/  lpt_offs; int /*<<< orphan*/  lpt_lnum; int /*<<< orphan*/  index_size; int /*<<< orphan*/  ihead_offs; int /*<<< orphan*/  ihead_lnum; int /*<<< orphan*/  gc_lnum; int /*<<< orphan*/  root_len; int /*<<< orphan*/  root_offs; int /*<<< orphan*/  root_lnum; int /*<<< orphan*/  log_lnum; int /*<<< orphan*/  flags; int /*<<< orphan*/  cmt_no; int /*<<< orphan*/  highest_inum; } ;
struct ubifs_ino_node {int /*<<< orphan*/  data_len; int /*<<< orphan*/  compr_type; int /*<<< orphan*/  xattr_names; int /*<<< orphan*/  xattr_size; int /*<<< orphan*/  xattr_cnt; int /*<<< orphan*/  flags; int /*<<< orphan*/  mode; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  ctime_nsec; int /*<<< orphan*/  ctime_sec; int /*<<< orphan*/  mtime_nsec; int /*<<< orphan*/  mtime_sec; int /*<<< orphan*/  atime_nsec; int /*<<< orphan*/  atime_sec; int /*<<< orphan*/  nlink; int /*<<< orphan*/  size; int /*<<< orphan*/  creat_sqnum; int /*<<< orphan*/  key; } ;
struct ubifs_info {int /*<<< orphan*/  fanout; } ;
struct ubifs_idx_node {int /*<<< orphan*/  level; int /*<<< orphan*/  child_cnt; } ;
struct ubifs_dent_node {char* name; scalar_t__ type; int /*<<< orphan*/  inum; int /*<<< orphan*/  key; int /*<<< orphan*/  nlen; } ;
struct ubifs_data_node {int /*<<< orphan*/  data; int /*<<< orphan*/  compr_type; int /*<<< orphan*/  size; int /*<<< orphan*/  key; } ;
struct ubifs_ch {int node_type; int /*<<< orphan*/  len; int /*<<< orphan*/  magic; } ;
struct ubifs_branch {int /*<<< orphan*/  len; int /*<<< orphan*/  offs; int /*<<< orphan*/  lnum; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int DBG_KEY_BUF_LEN ; 
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  KERN_ERR ; 
 unsigned long long LLONG_MAX ; 
#define  UBIFS_AUTH_NODE 140 
 int UBIFS_CH_SZ ; 
#define  UBIFS_CS_NODE 139 
#define  UBIFS_DATA_NODE 138 
 int UBIFS_DATA_NODE_SZ ; 
#define  UBIFS_DENT_NODE 137 
 unsigned int UBIFS_FLG_BIGLPT ; 
 unsigned int UBIFS_FLG_SPACE_FIXUP ; 
#define  UBIFS_IDX_NODE 136 
#define  UBIFS_INO_NODE 135 
 int UBIFS_MAX_NLEN ; 
#define  UBIFS_MST_NODE 134 
 scalar_t__ UBIFS_NODE_MAGIC ; 
#define  UBIFS_ORPH_NODE 133 
 int UBIFS_ORPH_NODE_SZ ; 
#define  UBIFS_PAD_NODE 132 
#define  UBIFS_REF_NODE 131 
#define  UBIFS_SB_NODE 130 
#define  UBIFS_TRUN_NODE 129 
#define  UBIFS_XENT_NODE 128 
 int /*<<< orphan*/  dbg_lock ; 
 int FUNC0 (struct ubifs_info const*,union ubifs_key*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (void const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info const*,int /*<<< orphan*/ *,union ubifs_key*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,void*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct ubifs_branch* FUNC14 (struct ubifs_info const*,struct ubifs_idx_node const*,int) ; 

void FUNC15(const struct ubifs_info *c, const void *node)
{
	int i, n;
	union ubifs_key key;
	const struct ubifs_ch *ch = node;
	char key_buf[DBG_KEY_BUF_LEN];

	/* If the magic is incorrect, just hexdump the first bytes */
	if (FUNC7(ch->magic) != UBIFS_NODE_MAGIC) {
		FUNC10("Not a node, first %zu bytes:", UBIFS_CH_SZ);
		FUNC11(KERN_ERR, "", DUMP_PREFIX_OFFSET, 32, 1,
			       (void *)node, UBIFS_CH_SZ, 1);
		return;
	}

	FUNC12(&dbg_lock);
	FUNC1(node);

	switch (ch->node_type) {
	case UBIFS_PAD_NODE:
	{
		const struct ubifs_pad_node *pad = node;

		FUNC10("\tpad_len        %u\n", FUNC7(pad->pad_len));
		break;
	}
	case UBIFS_SB_NODE:
	{
		const struct ubifs_sb_node *sup = node;
		unsigned int sup_flags = FUNC7(sup->flags);

		FUNC10("\tkey_hash       %d (%s)\n",
		       (int)sup->key_hash, FUNC3(sup->key_hash));
		FUNC10("\tkey_fmt        %d (%s)\n",
		       (int)sup->key_fmt, FUNC2(sup->key_fmt));
		FUNC10("\tflags          %#x\n", sup_flags);
		FUNC10("\tbig_lpt        %u\n",
		       !!(sup_flags & UBIFS_FLG_BIGLPT));
		FUNC10("\tspace_fixup    %u\n",
		       !!(sup_flags & UBIFS_FLG_SPACE_FIXUP));
		FUNC10("\tmin_io_size    %u\n", FUNC7(sup->min_io_size));
		FUNC10("\tleb_size       %u\n", FUNC7(sup->leb_size));
		FUNC10("\tleb_cnt        %u\n", FUNC7(sup->leb_cnt));
		FUNC10("\tmax_leb_cnt    %u\n", FUNC7(sup->max_leb_cnt));
		FUNC10("\tmax_bud_bytes  %llu\n",
		       (unsigned long long)FUNC8(sup->max_bud_bytes));
		FUNC10("\tlog_lebs       %u\n", FUNC7(sup->log_lebs));
		FUNC10("\tlpt_lebs       %u\n", FUNC7(sup->lpt_lebs));
		FUNC10("\torph_lebs      %u\n", FUNC7(sup->orph_lebs));
		FUNC10("\tjhead_cnt      %u\n", FUNC7(sup->jhead_cnt));
		FUNC10("\tfanout         %u\n", FUNC7(sup->fanout));
		FUNC10("\tlsave_cnt      %u\n", FUNC7(sup->lsave_cnt));
		FUNC10("\tdefault_compr  %u\n",
		       (int)FUNC6(sup->default_compr));
		FUNC10("\trp_size        %llu\n",
		       (unsigned long long)FUNC8(sup->rp_size));
		FUNC10("\trp_uid         %u\n", FUNC7(sup->rp_uid));
		FUNC10("\trp_gid         %u\n", FUNC7(sup->rp_gid));
		FUNC10("\tfmt_version    %u\n", FUNC7(sup->fmt_version));
		FUNC10("\ttime_gran      %u\n", FUNC7(sup->time_gran));
		FUNC10("\tUUID           %pUB\n", sup->uuid);
		break;
	}
	case UBIFS_MST_NODE:
	{
		const struct ubifs_mst_node *mst = node;

		FUNC10("\thighest_inum   %llu\n",
		       (unsigned long long)FUNC8(mst->highest_inum));
		FUNC10("\tcommit number  %llu\n",
		       (unsigned long long)FUNC8(mst->cmt_no));
		FUNC10("\tflags          %#x\n", FUNC7(mst->flags));
		FUNC10("\tlog_lnum       %u\n", FUNC7(mst->log_lnum));
		FUNC10("\troot_lnum      %u\n", FUNC7(mst->root_lnum));
		FUNC10("\troot_offs      %u\n", FUNC7(mst->root_offs));
		FUNC10("\troot_len       %u\n", FUNC7(mst->root_len));
		FUNC10("\tgc_lnum        %u\n", FUNC7(mst->gc_lnum));
		FUNC10("\tihead_lnum     %u\n", FUNC7(mst->ihead_lnum));
		FUNC10("\tihead_offs     %u\n", FUNC7(mst->ihead_offs));
		FUNC10("\tindex_size     %llu\n",
		       (unsigned long long)FUNC8(mst->index_size));
		FUNC10("\tlpt_lnum       %u\n", FUNC7(mst->lpt_lnum));
		FUNC10("\tlpt_offs       %u\n", FUNC7(mst->lpt_offs));
		FUNC10("\tnhead_lnum     %u\n", FUNC7(mst->nhead_lnum));
		FUNC10("\tnhead_offs     %u\n", FUNC7(mst->nhead_offs));
		FUNC10("\tltab_lnum      %u\n", FUNC7(mst->ltab_lnum));
		FUNC10("\tltab_offs      %u\n", FUNC7(mst->ltab_offs));
		FUNC10("\tlsave_lnum     %u\n", FUNC7(mst->lsave_lnum));
		FUNC10("\tlsave_offs     %u\n", FUNC7(mst->lsave_offs));
		FUNC10("\tlscan_lnum     %u\n", FUNC7(mst->lscan_lnum));
		FUNC10("\tleb_cnt        %u\n", FUNC7(mst->leb_cnt));
		FUNC10("\tempty_lebs     %u\n", FUNC7(mst->empty_lebs));
		FUNC10("\tidx_lebs       %u\n", FUNC7(mst->idx_lebs));
		FUNC10("\ttotal_free     %llu\n",
		       (unsigned long long)FUNC8(mst->total_free));
		FUNC10("\ttotal_dirty    %llu\n",
		       (unsigned long long)FUNC8(mst->total_dirty));
		FUNC10("\ttotal_used     %llu\n",
		       (unsigned long long)FUNC8(mst->total_used));
		FUNC10("\ttotal_dead     %llu\n",
		       (unsigned long long)FUNC8(mst->total_dead));
		FUNC10("\ttotal_dark     %llu\n",
		       (unsigned long long)FUNC8(mst->total_dark));
		break;
	}
	case UBIFS_REF_NODE:
	{
		const struct ubifs_ref_node *ref = node;

		FUNC10("\tlnum           %u\n", FUNC7(ref->lnum));
		FUNC10("\toffs           %u\n", FUNC7(ref->offs));
		FUNC10("\tjhead          %u\n", FUNC7(ref->jhead));
		break;
	}
	case UBIFS_INO_NODE:
	{
		const struct ubifs_ino_node *ino = node;

		FUNC5(c, &ino->key, &key);
		FUNC10("\tkey            %s\n",
		       FUNC0(c, &key, key_buf, DBG_KEY_BUF_LEN));
		FUNC10("\tcreat_sqnum    %llu\n",
		       (unsigned long long)FUNC8(ino->creat_sqnum));
		FUNC10("\tsize           %llu\n",
		       (unsigned long long)FUNC8(ino->size));
		FUNC10("\tnlink          %u\n", FUNC7(ino->nlink));
		FUNC10("\tatime          %lld.%u\n",
		       (long long)FUNC8(ino->atime_sec),
		       FUNC7(ino->atime_nsec));
		FUNC10("\tmtime          %lld.%u\n",
		       (long long)FUNC8(ino->mtime_sec),
		       FUNC7(ino->mtime_nsec));
		FUNC10("\tctime          %lld.%u\n",
		       (long long)FUNC8(ino->ctime_sec),
		       FUNC7(ino->ctime_nsec));
		FUNC10("\tuid            %u\n", FUNC7(ino->uid));
		FUNC10("\tgid            %u\n", FUNC7(ino->gid));
		FUNC10("\tmode           %u\n", FUNC7(ino->mode));
		FUNC10("\tflags          %#x\n", FUNC7(ino->flags));
		FUNC10("\txattr_cnt      %u\n", FUNC7(ino->xattr_cnt));
		FUNC10("\txattr_size     %u\n", FUNC7(ino->xattr_size));
		FUNC10("\txattr_names    %u\n", FUNC7(ino->xattr_names));
		FUNC10("\tcompr_type     %#x\n",
		       (int)FUNC6(ino->compr_type));
		FUNC10("\tdata len       %u\n", FUNC7(ino->data_len));
		break;
	}
	case UBIFS_DENT_NODE:
	case UBIFS_XENT_NODE:
	{
		const struct ubifs_dent_node *dent = node;
		int nlen = FUNC6(dent->nlen);

		FUNC5(c, &dent->key, &key);
		FUNC10("\tkey            %s\n",
		       FUNC0(c, &key, key_buf, DBG_KEY_BUF_LEN));
		FUNC10("\tinum           %llu\n",
		       (unsigned long long)FUNC8(dent->inum));
		FUNC10("\ttype           %d\n", (int)dent->type);
		FUNC10("\tnlen           %d\n", nlen);
		FUNC10("\tname           ");

		if (nlen > UBIFS_MAX_NLEN)
			FUNC10("(bad name length, not printing, bad or corrupted node)");
		else {
			for (i = 0; i < nlen && dent->name[i]; i++)
				FUNC9("%c", FUNC4(dent->name[i]) ?
					dent->name[i] : '?');
		}
		FUNC9("\n");

		break;
	}
	case UBIFS_DATA_NODE:
	{
		const struct ubifs_data_node *dn = node;
		int dlen = FUNC7(ch->len) - UBIFS_DATA_NODE_SZ;

		FUNC5(c, &dn->key, &key);
		FUNC10("\tkey            %s\n",
		       FUNC0(c, &key, key_buf, DBG_KEY_BUF_LEN));
		FUNC10("\tsize           %u\n", FUNC7(dn->size));
		FUNC10("\tcompr_typ      %d\n",
		       (int)FUNC6(dn->compr_type));
		FUNC10("\tdata size      %d\n", dlen);
		FUNC10("\tdata:\n");
		FUNC11(KERN_ERR, "\t", DUMP_PREFIX_OFFSET, 32, 1,
			       (void *)&dn->data, dlen, 0);
		break;
	}
	case UBIFS_TRUN_NODE:
	{
		const struct ubifs_trun_node *trun = node;

		FUNC10("\tinum           %u\n", FUNC7(trun->inum));
		FUNC10("\told_size       %llu\n",
		       (unsigned long long)FUNC8(trun->old_size));
		FUNC10("\tnew_size       %llu\n",
		       (unsigned long long)FUNC8(trun->new_size));
		break;
	}
	case UBIFS_IDX_NODE:
	{
		const struct ubifs_idx_node *idx = node;

		n = FUNC6(idx->child_cnt);
		FUNC10("\tchild_cnt      %d\n", n);
		FUNC10("\tlevel          %d\n", (int)FUNC6(idx->level));
		FUNC10("\tBranches:\n");

		for (i = 0; i < n && i < c->fanout - 1; i++) {
			const struct ubifs_branch *br;

			br = FUNC14(c, idx, i);
			FUNC5(c, &br->key, &key);
			FUNC10("\t%d: LEB %d:%d len %d key %s\n",
			       i, FUNC7(br->lnum), FUNC7(br->offs),
			       FUNC7(br->len),
			       FUNC0(c, &key, key_buf,
						DBG_KEY_BUF_LEN));
		}
		break;
	}
	case UBIFS_CS_NODE:
		break;
	case UBIFS_ORPH_NODE:
	{
		const struct ubifs_orph_node *orph = node;

		FUNC10("\tcommit number  %llu\n",
		       (unsigned long long)
				FUNC8(orph->cmt_no) & LLONG_MAX);
		FUNC10("\tlast node flag %llu\n",
		       (unsigned long long)(FUNC8(orph->cmt_no)) >> 63);
		n = (FUNC7(ch->len) - UBIFS_ORPH_NODE_SZ) >> 3;
		FUNC10("\t%d orphan inode numbers:\n", n);
		for (i = 0; i < n; i++)
			FUNC10("\t  ino %llu\n",
			       (unsigned long long)FUNC8(orph->inos[i]));
		break;
	}
	case UBIFS_AUTH_NODE:
	{
		break;
	}
	default:
		FUNC10("node type %d was not recognized\n",
		       (int)ch->node_type);
	}
	FUNC13(&dbg_lock);
}
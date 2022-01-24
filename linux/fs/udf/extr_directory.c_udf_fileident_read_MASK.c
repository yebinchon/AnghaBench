#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  unsigned char uint32_t ;
typedef  int /*<<< orphan*/  udf_pblk_t ;
struct TYPE_5__ {int /*<<< orphan*/ * i_data; } ;
struct udf_inode_info {scalar_t__ i_alloc_type; scalar_t__ i_efe; TYPE_1__ i_ext; } ;
struct udf_fileident_bh {int soffset; int eoffset; struct buffer_head* ebh; struct buffer_head* sbh; } ;
struct kernel_lb_addr {int dummy; } ;
struct inode {int i_size; TYPE_2__* i_sb; } ;
struct fileIdentDesc {int dummy; } ;
struct fileEntry {int dummy; } ;
struct extent_position {unsigned char offset; } ;
struct extendedFileEntry {int dummy; } ;
struct buffer_head {int /*<<< orphan*/ * b_data; } ;
typedef  unsigned char sector_t ;
typedef  int loff_t ;
struct TYPE_6__ {int s_blocksize; unsigned char s_blocksize_bits; } ;

/* Variables and functions */
 int EXT_RECORDED_ALLOCATED ; 
 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  REQ_RAHEAD ; 
 struct udf_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct fileIdentDesc*) ; 
 struct fileIdentDesc* FUNC7 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct kernel_lb_addr*,unsigned char) ; 
 int FUNC9 (struct inode*,struct extent_position*,struct kernel_lb_addr*,unsigned char*,int) ; 
 struct buffer_head* FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 void* FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 

struct fileIdentDesc *FUNC12(struct inode *dir, loff_t *nf_pos,
					 struct udf_fileident_bh *fibh,
					 struct fileIdentDesc *cfi,
					 struct extent_position *epos,
					 struct kernel_lb_addr *eloc, uint32_t *elen,
					 sector_t *offset)
{
	struct fileIdentDesc *fi;
	int i, num;
	udf_pblk_t block;
	struct buffer_head *tmp, *bha[16];
	struct udf_inode_info *iinfo = FUNC0(dir);

	fibh->soffset = fibh->eoffset;

	if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB) {
		fi = FUNC7(iinfo->i_ext.i_data -
				       (iinfo->i_efe ?
					sizeof(struct extendedFileEntry) :
					sizeof(struct fileEntry)),
				       dir->i_sb->s_blocksize,
				       &(fibh->eoffset));
		if (!fi)
			return NULL;

		*nf_pos += fibh->eoffset - fibh->soffset;

		FUNC5((uint8_t *)cfi, (uint8_t *)fi,
		       sizeof(struct fileIdentDesc));

		return fi;
	}

	if (fibh->eoffset == dir->i_sb->s_blocksize) {
		uint32_t lextoffset = epos->offset;
		unsigned char blocksize_bits = dir->i_sb->s_blocksize_bits;

		if (FUNC9(dir, epos, eloc, elen, 1) !=
		    (EXT_RECORDED_ALLOCATED >> 30))
			return NULL;

		block = FUNC8(dir->i_sb, eloc, *offset);

		(*offset)++;

		if ((*offset << blocksize_bits) >= *elen)
			*offset = 0;
		else
			epos->offset = lextoffset;

		FUNC1(fibh->sbh);
		fibh->sbh = fibh->ebh = FUNC11(dir->i_sb, block);
		if (!fibh->sbh)
			return NULL;
		fibh->soffset = fibh->eoffset = 0;

		if (!(*offset & ((16 >> (blocksize_bits - 9)) - 1))) {
			i = 16 >> (blocksize_bits - 9);
			if (i + *offset > (*elen >> blocksize_bits))
				i = (*elen >> blocksize_bits)-*offset;
			for (num = 0; i > 0; i--) {
				block = FUNC8(dir->i_sb, eloc,
							  *offset + i);
				tmp = FUNC10(dir->i_sb, block);
				if (tmp && !FUNC3(tmp) &&
						!FUNC2(tmp))
					bha[num++] = tmp;
				else
					FUNC1(tmp);
			}
			if (num) {
				FUNC4(REQ_OP_READ, REQ_RAHEAD, num, bha);
				for (i = 0; i < num; i++)
					FUNC1(bha[i]);
			}
		}
	} else if (fibh->sbh != fibh->ebh) {
		FUNC1(fibh->sbh);
		fibh->sbh = fibh->ebh;
	}

	fi = FUNC7(fibh->sbh->b_data, dir->i_sb->s_blocksize,
			       &(fibh->eoffset));

	if (!fi)
		return NULL;

	*nf_pos += fibh->eoffset - fibh->soffset;

	if (fibh->eoffset <= dir->i_sb->s_blocksize) {
		FUNC5((uint8_t *)cfi, (uint8_t *)fi,
		       sizeof(struct fileIdentDesc));
	} else if (fibh->eoffset > dir->i_sb->s_blocksize) {
		uint32_t lextoffset = epos->offset;

		if (FUNC9(dir, epos, eloc, elen, 1) !=
		    (EXT_RECORDED_ALLOCATED >> 30))
			return NULL;

		block = FUNC8(dir->i_sb, eloc, *offset);

		(*offset)++;

		if ((*offset << dir->i_sb->s_blocksize_bits) >= *elen)
			*offset = 0;
		else
			epos->offset = lextoffset;

		fibh->soffset -= dir->i_sb->s_blocksize;
		fibh->eoffset -= dir->i_sb->s_blocksize;

		fibh->ebh = FUNC11(dir->i_sb, block);
		if (!fibh->ebh)
			return NULL;

		if (sizeof(struct fileIdentDesc) > -fibh->soffset) {
			int fi_len;

			FUNC5((uint8_t *)cfi, (uint8_t *)fi, -fibh->soffset);
			FUNC5((uint8_t *)cfi - fibh->soffset,
			       fibh->ebh->b_data,
			       sizeof(struct fileIdentDesc) + fibh->soffset);

			fi_len = FUNC6(cfi);
			*nf_pos += fi_len - (fibh->eoffset - fibh->soffset);
			fibh->eoffset = fibh->soffset + fi_len;
		} else {
			FUNC5((uint8_t *)cfi, (uint8_t *)fi,
			       sizeof(struct fileIdentDesc));
		}
	}
	/* Got last entry outside of dir size - fs is corrupted! */
	if (*nf_pos > dir->i_size)
		return NULL;
	return fi;
}
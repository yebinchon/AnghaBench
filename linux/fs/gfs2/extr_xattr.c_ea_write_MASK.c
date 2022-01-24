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
typedef  int /*<<< orphan*/  u64 ;
struct gfs2_sbd {scalar_t__ sd_jbsize; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_inode; int /*<<< orphan*/  i_gl; } ;
struct gfs2_ea_request {unsigned int er_data_len; unsigned int er_name_len; char const* er_name; char const* er_data; int /*<<< orphan*/  er_type; } ;
struct gfs2_ea_header {unsigned int ea_name_len; unsigned int ea_num_ptrs; scalar_t__ __pad; int /*<<< orphan*/  ea_type; int /*<<< orphan*/  ea_data_len; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,scalar_t__) ; 
 scalar_t__ FUNC1 (struct gfs2_ea_header*) ; 
 int /*<<< orphan*/ * FUNC2 (struct gfs2_ea_header*) ; 
 scalar_t__ FUNC3 (struct gfs2_ea_header*) ; 
 scalar_t__ FUNC4 (struct gfs2_ea_request*) ; 
 int /*<<< orphan*/  GFS2_FORMAT_ED ; 
 int /*<<< orphan*/  GFS2_METATYPE_ED ; 
 struct gfs2_sbd* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (struct gfs2_inode*,int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_sbd*,int) ; 
 struct buffer_head* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct gfs2_sbd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC18(struct gfs2_inode *ip, struct gfs2_ea_header *ea,
		    struct gfs2_ea_request *er)
{
	struct gfs2_sbd *sdp = FUNC5(&ip->i_inode);
	int error;

	ea->ea_data_len = FUNC7(er->er_data_len);
	ea->ea_name_len = er->er_name_len;
	ea->ea_type = er->er_type;
	ea->__pad = 0;

	FUNC16(FUNC3(ea), er->er_name, er->er_name_len);

	if (FUNC4(er) <= sdp->sd_jbsize) {
		ea->ea_num_ptrs = 0;
		FUNC16(FUNC1(ea), er->er_data, er->er_data_len);
	} else {
		__be64 *dataptr = FUNC2(ea);
		const char *data = er->er_data;
		unsigned int data_len = er->er_data_len;
		unsigned int copy;
		unsigned int x;

		ea->ea_num_ptrs = FUNC0(er->er_data_len, sdp->sd_jbsize);
		for (x = 0; x < ea->ea_num_ptrs; x++) {
			struct buffer_head *bh;
			u64 block;
			int mh_size = sizeof(struct gfs2_meta_header);
			unsigned int n = 1;

			error = FUNC10(ip, &block, &n, 0, NULL);
			if (error)
				return error;
			FUNC15(sdp, block, 1);
			bh = FUNC12(ip->i_gl, block);
			FUNC14(ip->i_gl, bh);
			FUNC13(bh, GFS2_METATYPE_ED, GFS2_FORMAT_ED);

			FUNC9(&ip->i_inode, 1);

			copy = data_len > sdp->sd_jbsize ? sdp->sd_jbsize :
							   data_len;
			FUNC16(bh->b_data + mh_size, data, copy);
			if (copy < sdp->sd_jbsize)
				FUNC17(bh->b_data + mh_size + copy, 0,
				       sdp->sd_jbsize - copy);

			*dataptr++ = FUNC8(bh->b_blocknr);
			data += copy;
			data_len -= copy;

			FUNC6(bh);
		}

		FUNC11(sdp, !data_len);
	}

	return 0;
}
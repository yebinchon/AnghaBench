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
struct hugetlbfs_fs_context {unsigned int mode; void* min_val_type; void* min_size_opt; int /*<<< orphan*/  hstate; void* nr_inodes; void* max_val_type; void* max_size_opt; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct fs_parse_result {unsigned int uint_32; } ;
struct fs_parameter {int /*<<< orphan*/  key; int /*<<< orphan*/ * string; } ;
struct fs_context {struct hugetlbfs_fs_context* fs_private; } ;

/* Variables and functions */
 int EINVAL ; 
#define  Opt_gid 134 
#define  Opt_min_size 133 
#define  Opt_mode 132 
#define  Opt_nr_inodes 131 
#define  Opt_pagesize 130 
#define  Opt_size 129 
#define  Opt_uid 128 
 void* SIZE_PERCENT ; 
 void* SIZE_STD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct fs_context*,int /*<<< orphan*/ *,struct fs_parameter*,struct fs_parse_result*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hugetlb_fs_parameters ; 
 int FUNC3 (struct fs_context*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 void* FUNC7 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct fs_context *fc, struct fs_parameter *param)
{
	struct hugetlbfs_fs_context *ctx = fc->fs_private;
	struct fs_parse_result result;
	char *rest;
	unsigned long ps;
	int opt;

	opt = FUNC1(fc, &hugetlb_fs_parameters, param, &result);
	if (opt < 0)
		return opt;

	switch (opt) {
	case Opt_uid:
		ctx->uid = FUNC6(FUNC0(), result.uint_32);
		if (!FUNC10(ctx->uid))
			goto bad_val;
		return 0;

	case Opt_gid:
		ctx->gid = FUNC5(FUNC0(), result.uint_32);
		if (!FUNC2(ctx->gid))
			goto bad_val;
		return 0;

	case Opt_mode:
		ctx->mode = result.uint_32 & 01777U;
		return 0;

	case Opt_size:
		/* memparse() will accept a K/M/G without a digit */
		if (!FUNC4(param->string[0]))
			goto bad_val;
		ctx->max_size_opt = FUNC7(param->string, &rest);
		ctx->max_val_type = SIZE_STD;
		if (*rest == '%')
			ctx->max_val_type = SIZE_PERCENT;
		return 0;

	case Opt_nr_inodes:
		/* memparse() will accept a K/M/G without a digit */
		if (!FUNC4(param->string[0]))
			goto bad_val;
		ctx->nr_inodes = FUNC7(param->string, &rest);
		return 0;

	case Opt_pagesize:
		ps = FUNC7(param->string, &rest);
		ctx->hstate = FUNC9(ps);
		if (!ctx->hstate) {
			FUNC8("Unsupported page size %lu MB\n", ps >> 20);
			return -EINVAL;
		}
		return 0;

	case Opt_min_size:
		/* memparse() will accept a K/M/G without a digit */
		if (!FUNC4(param->string[0]))
			goto bad_val;
		ctx->min_size_opt = FUNC7(param->string, &rest);
		ctx->min_val_type = SIZE_STD;
		if (*rest == '%')
			ctx->min_val_type = SIZE_PERCENT;
		return 0;

	default:
		return -EINVAL;
	}

bad_val:
	return FUNC3(fc, "hugetlbfs: Bad value '%s' for mount option '%s'\n",
		      param->string, param->key);
}
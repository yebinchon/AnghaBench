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
struct crush_work_bucket {int dummy; } ;
struct crush_choose_arg {int dummy; } ;
struct crush_bucket_uniform {int dummy; } ;
struct crush_bucket_tree {int dummy; } ;
struct crush_bucket_straw2 {int dummy; } ;
struct crush_bucket_straw {int dummy; } ;
struct crush_bucket_list {int dummy; } ;
struct crush_bucket {scalar_t__ size; int alg; int* items; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  CRUSH_BUCKET_LIST 132 
#define  CRUSH_BUCKET_STRAW 131 
#define  CRUSH_BUCKET_STRAW2 130 
#define  CRUSH_BUCKET_TREE 129 
#define  CRUSH_BUCKET_UNIFORM 128 
 int FUNC1 (struct crush_bucket_list const*,int,int) ; 
 int FUNC2 (struct crush_bucket_straw2 const*,int,int,struct crush_choose_arg const*,int) ; 
 int FUNC3 (struct crush_bucket_straw const*,int,int) ; 
 int FUNC4 (struct crush_bucket_tree const*,int,int) ; 
 int FUNC5 (struct crush_bucket_uniform const*,struct crush_work_bucket*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int,...) ; 

__attribute__((used)) static int FUNC7(const struct crush_bucket *in,
			       struct crush_work_bucket *work,
			       int x, int r,
			       const struct crush_choose_arg *arg,
			       int position)
{
	FUNC6(" crush_bucket_choose %d x=%d r=%d\n", in->id, x, r);
	FUNC0(in->size == 0);
	switch (in->alg) {
	case CRUSH_BUCKET_UNIFORM:
		return FUNC5(
			(const struct crush_bucket_uniform *)in,
			work, x, r);
	case CRUSH_BUCKET_LIST:
		return FUNC1((const struct crush_bucket_list *)in,
					  x, r);
	case CRUSH_BUCKET_TREE:
		return FUNC4((const struct crush_bucket_tree *)in,
					  x, r);
	case CRUSH_BUCKET_STRAW:
		return FUNC3(
			(const struct crush_bucket_straw *)in,
			x, r);
	case CRUSH_BUCKET_STRAW2:
		return FUNC2(
			(const struct crush_bucket_straw2 *)in,
			x, r, arg, position);
	default:
		FUNC6("unknown bucket %d alg %d\n", in->id, in->alg);
		return in->items[0];
	}
}
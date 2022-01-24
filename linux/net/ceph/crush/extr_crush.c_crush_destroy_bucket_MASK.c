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
struct crush_bucket_uniform {int dummy; } ;
struct crush_bucket_tree {int dummy; } ;
struct crush_bucket_straw2 {int dummy; } ;
struct crush_bucket_straw {int dummy; } ;
struct crush_bucket_list {int dummy; } ;
struct crush_bucket {int alg; } ;

/* Variables and functions */
#define  CRUSH_BUCKET_LIST 132 
#define  CRUSH_BUCKET_STRAW 131 
#define  CRUSH_BUCKET_STRAW2 130 
#define  CRUSH_BUCKET_TREE 129 
#define  CRUSH_BUCKET_UNIFORM 128 
 int /*<<< orphan*/  FUNC0 (struct crush_bucket_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct crush_bucket_straw*) ; 
 int /*<<< orphan*/  FUNC2 (struct crush_bucket_straw2*) ; 
 int /*<<< orphan*/  FUNC3 (struct crush_bucket_tree*) ; 
 int /*<<< orphan*/  FUNC4 (struct crush_bucket_uniform*) ; 

void FUNC5(struct crush_bucket *b)
{
	switch (b->alg) {
	case CRUSH_BUCKET_UNIFORM:
		FUNC4((struct crush_bucket_uniform *)b);
		break;
	case CRUSH_BUCKET_LIST:
		FUNC0((struct crush_bucket_list *)b);
		break;
	case CRUSH_BUCKET_TREE:
		FUNC3((struct crush_bucket_tree *)b);
		break;
	case CRUSH_BUCKET_STRAW:
		FUNC1((struct crush_bucket_straw *)b);
		break;
	case CRUSH_BUCKET_STRAW2:
		FUNC2((struct crush_bucket_straw2 *)b);
		break;
	}
}
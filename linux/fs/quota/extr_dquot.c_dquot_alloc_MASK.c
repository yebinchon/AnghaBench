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
struct super_block {int dummy; } ;
struct dquot {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  dquot_cachep ; 
 struct dquot* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct dquot *FUNC1(struct super_block *sb, int type)
{
	return FUNC0(dquot_cachep, GFP_NOFS);
}
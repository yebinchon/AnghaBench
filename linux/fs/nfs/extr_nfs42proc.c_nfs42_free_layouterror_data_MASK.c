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
struct nfs42_layouterror_data {int /*<<< orphan*/  inode; int /*<<< orphan*/  lseg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs42_layouterror_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct nfs42_layouterror_data *data)
{
	FUNC2(data->lseg);
	FUNC1(data->inode);
	FUNC0(data);
}
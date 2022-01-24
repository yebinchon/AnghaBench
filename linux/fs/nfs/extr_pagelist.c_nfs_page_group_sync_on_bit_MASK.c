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
struct nfs_page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_page*) ; 
 int FUNC1 (struct nfs_page*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_page*) ; 

bool FUNC3(struct nfs_page *req, unsigned int bit)
{
	bool ret;

	FUNC0(req);
	ret = FUNC1(req, bit);
	FUNC2(req);

	return ret;
}
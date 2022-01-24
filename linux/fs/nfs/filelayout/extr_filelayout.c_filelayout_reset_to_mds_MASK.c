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
struct pnfs_layout_segment {int dummy; } ;
struct nfs4_deviceid_node {int dummy; } ;

/* Variables and functions */
 struct nfs4_deviceid_node* FUNC0 (struct pnfs_layout_segment*) ; 
 int FUNC1 (struct nfs4_deviceid_node*) ; 

__attribute__((used)) static bool
FUNC2(struct pnfs_layout_segment *lseg)
{
	struct nfs4_deviceid_node *node = FUNC0(lseg);

	return FUNC1(node);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nfs_pgio_header {TYPE_1__* rw_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* rw_free_header ) (struct nfs_pgio_header*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_pgio_header*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_pgio_header*) ; 

void FUNC2(struct nfs_pgio_header *hdr)
{
	FUNC0(hdr);
	hdr->rw_ops->rw_free_header(hdr);
}
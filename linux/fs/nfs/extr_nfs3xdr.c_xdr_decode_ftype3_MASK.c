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
typedef  int /*<<< orphan*/  umode_t ;
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 size_t NF3FIFO ; 
 size_t NF3NON ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nfs_type2fmt ; 

__attribute__((used)) static __be32 *FUNC1(__be32 *p, umode_t *mode)
{
	u32 type;

	type = FUNC0(p++);
	if (type > NF3FIFO)
		type = NF3NON;
	*mode = nfs_type2fmt[type];
	return p;
}
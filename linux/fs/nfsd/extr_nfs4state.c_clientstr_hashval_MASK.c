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
struct xdr_netobj {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 unsigned int CLIENT_HASH_MASK ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned int FUNC1(struct xdr_netobj name)
{
	return FUNC0(name.data, 8) & CLIENT_HASH_MASK;
}
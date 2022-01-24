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
struct offset_v2 {int /*<<< orphan*/  v; } ;
typedef  scalar_t__ __u8 ;
typedef  scalar_t__ __u16 ;

/* Variables and functions */
 scalar_t__ TYPE_ANY ; 
 scalar_t__ TYPE_MAXTYPE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline __u16 FUNC1(const struct offset_v2 *v2)
{
	__u8 type = FUNC0(v2->v) >> 60;
	return (type <= TYPE_MAXTYPE) ? type : TYPE_ANY;
}
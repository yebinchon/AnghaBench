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
struct nf_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nf_conn const*) ; 
 scalar_t__ FUNC1 (struct nf_conn const*) ; 

__attribute__((used)) static bool FUNC2(const struct nf_conn *ct)
{
	return !FUNC0(ct) || FUNC1(ct);
}
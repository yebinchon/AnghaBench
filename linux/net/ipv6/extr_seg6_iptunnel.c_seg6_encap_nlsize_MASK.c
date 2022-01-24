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
struct seg6_iptunnel_encap {int dummy; } ;
struct lwtunnel_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seg6_iptunnel_encap*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct seg6_iptunnel_encap* FUNC2 (struct lwtunnel_state*) ; 

__attribute__((used)) static int FUNC3(struct lwtunnel_state *lwtstate)
{
	struct seg6_iptunnel_encap *tuninfo = FUNC2(lwtstate);

	return FUNC1(FUNC0(tuninfo));
}
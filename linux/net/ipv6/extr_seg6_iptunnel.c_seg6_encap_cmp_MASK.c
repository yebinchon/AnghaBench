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
 int FUNC0 (struct seg6_iptunnel_encap*) ; 
 int FUNC1 (struct seg6_iptunnel_encap*,struct seg6_iptunnel_encap*,int) ; 
 struct seg6_iptunnel_encap* FUNC2 (struct lwtunnel_state*) ; 

__attribute__((used)) static int FUNC3(struct lwtunnel_state *a, struct lwtunnel_state *b)
{
	struct seg6_iptunnel_encap *a_hdr = FUNC2(a);
	struct seg6_iptunnel_encap *b_hdr = FUNC2(b);
	int len = FUNC0(a_hdr);

	if (len != FUNC0(b_hdr))
		return 1;

	return FUNC1(a_hdr, b_hdr, len);
}
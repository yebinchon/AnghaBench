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
struct seg6_local_lwt {int headroom; int /*<<< orphan*/  srh; } ;
struct nlattr {int dummy; } ;
struct ipv6_sr_hdr {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t SEG6_LOCAL_SRH ; 
 int /*<<< orphan*/  FUNC0 (struct ipv6_sr_hdr*,int,int /*<<< orphan*/ ) ; 
 struct ipv6_sr_hdr* FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipv6_sr_hdr*,int) ; 

__attribute__((used)) static int FUNC4(struct nlattr **attrs, struct seg6_local_lwt *slwt)
{
	struct ipv6_sr_hdr *srh;
	int len;

	srh = FUNC1(attrs[SEG6_LOCAL_SRH]);
	len = FUNC2(attrs[SEG6_LOCAL_SRH]);

	/* SRH must contain at least one segment */
	if (len < sizeof(*srh) + sizeof(struct in6_addr))
		return -EINVAL;

	if (!FUNC3(srh, len))
		return -EINVAL;

	slwt->srh = FUNC0(srh, len, GFP_KERNEL);
	if (!slwt->srh)
		return -ENOMEM;

	slwt->headroom += len;

	return 0;
}
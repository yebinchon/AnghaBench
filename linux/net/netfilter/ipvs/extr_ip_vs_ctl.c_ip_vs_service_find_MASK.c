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
typedef  union nf_inet_addr {int dummy; } nf_inet_addr ;
struct netns_ipvs {int /*<<< orphan*/  nullsvc_counter; int /*<<< orphan*/  net; int /*<<< orphan*/  ftpsvc_counter; } ;
struct ip_vs_service {int dummy; } ;
typedef  scalar_t__ __u32 ;
typedef  scalar_t__ __u16 ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 scalar_t__ FTPDATA ; 
 scalar_t__ FTPPORT ; 
 scalar_t__ IPPROTO_TCP ; 
 int /*<<< orphan*/  FUNC0 (int,union nf_inet_addr const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,char*) ; 
 struct ip_vs_service* FUNC2 (struct netns_ipvs*,int,scalar_t__,union nf_inet_addr const*,scalar_t__) ; 
 struct ip_vs_service* FUNC3 (struct netns_ipvs*,int,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

struct ip_vs_service *
FUNC8(struct netns_ipvs *ipvs, int af, __u32 fwmark, __u16 protocol,
		   const union nf_inet_addr *vaddr, __be16 vport)
{
	struct ip_vs_service *svc;

	/*
	 *	Check the table hashed by fwmark first
	 */
	if (fwmark) {
		svc = FUNC3(ipvs, af, fwmark);
		if (svc)
			goto out;
	}

	/*
	 *	Check the table hashed by <protocol,addr,port>
	 *	for "full" addressed entries
	 */
	svc = FUNC2(ipvs, af, protocol, vaddr, vport);

	if (!svc && protocol == IPPROTO_TCP &&
	    FUNC4(&ipvs->ftpsvc_counter) &&
	    (vport == FTPDATA || FUNC7(vport) >= FUNC5(ipvs->net))) {
		/*
		 * Check if ftp service entry exists, the packet
		 * might belong to FTP data connections.
		 */
		svc = FUNC2(ipvs, af, protocol, vaddr, FTPPORT);
	}

	if (svc == NULL
	    && FUNC4(&ipvs->nullsvc_counter)) {
		/*
		 * Check if the catch-all port (port zero) exists
		 */
		svc = FUNC2(ipvs, af, protocol, vaddr, 0);
	}

  out:
	FUNC1(9, "lookup service: fwm %u %s %s:%u %s\n",
		      fwmark, FUNC6(protocol),
		      FUNC0(af, vaddr), FUNC7(vport),
		      svc ? "hit" : "not hit");

	return svc;
}
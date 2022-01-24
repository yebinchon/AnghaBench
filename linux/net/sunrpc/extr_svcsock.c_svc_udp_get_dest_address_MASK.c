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
struct svc_rqst {int dummy; } ;
struct cmsghdr {int cmsg_level; } ;

/* Variables and functions */
#define  SOL_IP 129 
#define  SOL_IPV6 128 
 int FUNC0 (struct svc_rqst*,struct cmsghdr*) ; 
 int FUNC1 (struct svc_rqst*,struct cmsghdr*) ; 

__attribute__((used)) static int FUNC2(struct svc_rqst *rqstp,
				    struct cmsghdr *cmh)
{
	switch (cmh->cmsg_level) {
	case SOL_IP:
		return FUNC0(rqstp, cmh);
	case SOL_IPV6:
		return FUNC1(rqstp, cmh);
	}

	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct seg6_local_lwt {TYPE_2__* srh; TYPE_1__* desc; } ;
struct nlattr {int dummy; } ;
struct lwtunnel_state {int dummy; } ;
struct TYPE_4__ {int hdrlen; } ;
struct TYPE_3__ {unsigned long attrs; } ;

/* Variables and functions */
 int MAX_PROG_NAME ; 
 int SEG6_LOCAL_BPF ; 
 int SEG6_LOCAL_IIF ; 
 int SEG6_LOCAL_NH4 ; 
 int SEG6_LOCAL_NH6 ; 
 int SEG6_LOCAL_OIF ; 
 int SEG6_LOCAL_SRH ; 
 int SEG6_LOCAL_TABLE ; 
 int FUNC0 (int) ; 
 struct seg6_local_lwt* FUNC1 (struct lwtunnel_state*) ; 

__attribute__((used)) static int FUNC2(struct lwtunnel_state *lwt)
{
	struct seg6_local_lwt *slwt = FUNC1(lwt);
	unsigned long attrs;
	int nlsize;

	nlsize = FUNC0(4); /* action */

	attrs = slwt->desc->attrs;

	if (attrs & (1 << SEG6_LOCAL_SRH))
		nlsize += FUNC0((slwt->srh->hdrlen + 1) << 3);

	if (attrs & (1 << SEG6_LOCAL_TABLE))
		nlsize += FUNC0(4);

	if (attrs & (1 << SEG6_LOCAL_NH4))
		nlsize += FUNC0(4);

	if (attrs & (1 << SEG6_LOCAL_NH6))
		nlsize += FUNC0(16);

	if (attrs & (1 << SEG6_LOCAL_IIF))
		nlsize += FUNC0(4);

	if (attrs & (1 << SEG6_LOCAL_OIF))
		nlsize += FUNC0(4);

	if (attrs & (1 << SEG6_LOCAL_BPF))
		nlsize += FUNC0(sizeof(struct nlattr)) +
		       FUNC0(MAX_PROG_NAME) +
		       FUNC0(4);

	return nlsize;
}
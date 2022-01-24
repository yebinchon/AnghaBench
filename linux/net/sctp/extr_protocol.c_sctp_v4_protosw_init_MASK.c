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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  sctp_prot ; 
 int /*<<< orphan*/  sctp_seqpacket_protosw ; 
 int /*<<< orphan*/  sctp_stream_protosw ; 

__attribute__((used)) static int FUNC2(void)
{
	int rc;

	rc = FUNC1(&sctp_prot, 1);
	if (rc)
		return rc;

	/* Register SCTP(UDP and TCP style) with socket layer.  */
	FUNC0(&sctp_seqpacket_protosw);
	FUNC0(&sctp_stream_protosw);

	return 0;
}
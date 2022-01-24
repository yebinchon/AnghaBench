#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sctp_chunk {int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk; } ;
struct sctp_association {struct sctp_chunk* addip_last_asconf; int /*<<< orphan*/  addip_chunk_list; TYPE_1__ base; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_chunk*) ; 
 int FUNC3 (struct net*,struct sctp_association*,struct sctp_chunk*) ; 
 struct net* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sctp_association *asoc,
			    struct sctp_chunk *chunk)
{
	struct net 	*net = FUNC4(asoc->base.sk);
	int		retval = 0;

	/* If there is an outstanding ASCONF chunk, queue it for later
	 * transmission.
	 */
	if (asoc->addip_last_asconf) {
		FUNC0(&chunk->list, &asoc->addip_chunk_list);
		goto out;
	}

	/* Hold the chunk until an ASCONF_ACK is received. */
	FUNC2(chunk);
	retval = FUNC3(net, asoc, chunk);
	if (retval)
		FUNC1(chunk);
	else
		asoc->addip_last_asconf = chunk;

out:
	return retval;
}
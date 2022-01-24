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
struct lowpan_peer {int /*<<< orphan*/  list; } ;
struct lowpan_btle_dev {int /*<<< orphan*/  peer_count; int /*<<< orphan*/  peers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct lowpan_btle_dev *dev,
			    struct lowpan_peer *peer)
{
	FUNC1(&peer->list, &dev->peers);
	FUNC0(&dev->peer_count);
}
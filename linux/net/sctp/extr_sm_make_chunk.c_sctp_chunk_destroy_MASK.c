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
struct sctp_chunk {int /*<<< orphan*/  auth_chunk; int /*<<< orphan*/  skb; int /*<<< orphan*/  transmitted_list; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sctp_chunk_cachep ; 

__attribute__((used)) static void FUNC6(struct sctp_chunk *chunk)
{
	FUNC0(!FUNC5(&chunk->list));
	FUNC4(&chunk->transmitted_list);

	FUNC2(chunk->skb);
	FUNC2(chunk->auth_chunk);

	FUNC1(chunk);
	FUNC3(sctp_chunk_cachep, chunk);
}
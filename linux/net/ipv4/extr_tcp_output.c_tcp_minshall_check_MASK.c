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
struct tcp_sock {int /*<<< orphan*/  snd_nxt; int /*<<< orphan*/  snd_sml; int /*<<< orphan*/  snd_una; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(const struct tcp_sock *tp)
{
	return FUNC0(tp->snd_sml, tp->snd_una) &&
		!FUNC0(tp->snd_sml, tp->snd_nxt);
}
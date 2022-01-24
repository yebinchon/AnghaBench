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
struct snd_seq_event {int dummy; } ;
struct snd_opl4 {int /*<<< orphan*/  chset; } ;

/* Variables and functions */
 int /*<<< orphan*/  opl4_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct snd_seq_event*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct snd_seq_event *ev, int direct,
				    void *private_data, int atomic, int hop)
{
	struct snd_opl4 *opl4 = private_data;

	FUNC0(&opl4_ops, ev, opl4->chset);
	return 0;
}
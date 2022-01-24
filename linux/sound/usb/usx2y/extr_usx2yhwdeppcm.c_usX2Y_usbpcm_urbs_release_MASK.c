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
struct snd_usX2Y_substream {scalar_t__ urb; int /*<<< orphan*/  endpoint; } ;

/* Variables and functions */
 int NRURBS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct snd_usX2Y_substream *subs)
{
	int i;
	FUNC0("snd_usX2Y_urbs_release() %i\n", subs->endpoint);
	for (i = 0; i < NRURBS; i++)
		FUNC1(subs->urb + i);
}
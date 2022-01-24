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
struct snd_pcm_substream {struct snd_dg00x* private_data; } ;
struct snd_dg00x {int /*<<< orphan*/  rx_stream; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC1(struct snd_pcm_substream *sbstrm)
{
	struct snd_dg00x *dg00x = sbstrm->private_data;

	return FUNC0(&dg00x->rx_stream);
}
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
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct fsi_stream {int /*<<< orphan*/  uerr_num; int /*<<< orphan*/  oerr_num; scalar_t__ bus_option; scalar_t__ sample_width; scalar_t__ period_pos; scalar_t__ period_samples; scalar_t__ buff_sample_pos; scalar_t__ buff_sample_capa; int /*<<< orphan*/ * substream; } ;
struct fsi_priv {int dummy; } ;
struct fsi_master {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct snd_soc_dai* FUNC1 (int /*<<< orphan*/ *) ; 
 struct fsi_master* FUNC2 (struct fsi_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsi_stream*,int /*<<< orphan*/ ,struct fsi_priv*,struct fsi_stream*) ; 
 int /*<<< orphan*/  quit ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct fsi_priv *fsi, struct fsi_stream *io)
{
	struct snd_soc_dai *dai = FUNC1(io->substream);
	struct fsi_master *master = FUNC2(fsi);
	unsigned long flags;

	FUNC4(&master->lock, flags);

	if (io->oerr_num > 0)
		FUNC0(dai->dev, "over_run = %d\n", io->oerr_num);

	if (io->uerr_num > 0)
		FUNC0(dai->dev, "under_run = %d\n", io->uerr_num);

	FUNC3(io, quit, fsi, io);
	io->substream	= NULL;
	io->buff_sample_capa	= 0;
	io->buff_sample_pos	= 0;
	io->period_samples	= 0;
	io->period_pos		= 0;
	io->sample_width	= 0;
	io->bus_option		= 0;
	io->oerr_num	= 0;
	io->uerr_num	= 0;
	FUNC5(&master->lock, flags);
}
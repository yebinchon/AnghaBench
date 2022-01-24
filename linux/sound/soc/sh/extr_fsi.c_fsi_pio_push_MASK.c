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
struct fsi_stream {int buff_sample_capa; int buff_sample_pos; int fifo_sample_capa; } ;
struct fsi_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct fsi_priv*,struct fsi_stream*) ; 
 int /*<<< orphan*/  fsi_pio_push16 ; 
 int /*<<< orphan*/  fsi_pio_push32 ; 
 int FUNC1 (struct fsi_priv*,struct fsi_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct fsi_priv *fsi, struct fsi_stream *io)
{
	int sample_residues;	/* ALSA residue samples */
	int sample_space;	/* FSI fifo free samples space */
	int samples;

	sample_residues	= io->buff_sample_capa - io->buff_sample_pos;
	sample_space	= io->fifo_sample_capa -
		FUNC0(fsi, io);

	samples = FUNC2(sample_residues, sample_space);

	return FUNC1(fsi, io,
				  fsi_pio_push16,
				  fsi_pio_push32,
				  samples);
}
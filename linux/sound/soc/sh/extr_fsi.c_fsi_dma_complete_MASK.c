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
struct fsi_stream {int /*<<< orphan*/  period_samples; } ;
struct fsi_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsi_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsi_stream*,int /*<<< orphan*/ ) ; 
 struct fsi_priv* FUNC2 (struct fsi_stream*) ; 

__attribute__((used)) static void FUNC3(void *data)
{
	struct fsi_stream *io = (struct fsi_stream *)data;
	struct fsi_priv *fsi = FUNC2(io);

	FUNC1(io, io->period_samples);

	FUNC0(fsi);
}
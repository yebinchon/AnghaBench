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
struct fsi_stream {int dummy; } ;
struct fsi_priv {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsi_priv*,struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsi_priv*,struct fsi_stream*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsi_priv*,struct fsi_stream*) ; 

__attribute__((used)) static void FUNC3(struct fsi_priv *fsi,
			  struct fsi_stream *io,
			  struct device *dev)
{
	if (!FUNC1(fsi, io))
		return;

	FUNC2(fsi, io);
	FUNC0(fsi, dev);
}
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
typedef  int /*<<< orphan*/  u32 ;
struct fsi_stream {int dummy; } ;
struct fsi_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AI_SHIFT ; 
 int /*<<< orphan*/  AO_SHIFT ; 
 int /*<<< orphan*/  BI_SHIFT ; 
 int /*<<< orphan*/  BO_SHIFT ; 
 int FUNC0 (struct fsi_priv*) ; 
 int FUNC1 (struct fsi_priv*,struct fsi_stream*) ; 

__attribute__((used)) static u32 FUNC2(struct fsi_priv *fsi, struct fsi_stream *io)
{
	int is_play = FUNC1(fsi, io);
	int is_porta = FUNC0(fsi);
	u32 shift;

	if (is_porta)
		shift = is_play ? AO_SHIFT : AI_SHIFT;
	else
		shift = is_play ? BO_SHIFT : BI_SHIFT;

	return shift;
}
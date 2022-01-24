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
struct fsi_master {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fsi_master*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fsi_master* FUNC2 (struct fsi_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsi_priv*,struct fsi_stream*) ; 
 int /*<<< orphan*/  iemsk ; 
 int /*<<< orphan*/  imsk ; 

__attribute__((used)) static void FUNC4(struct fsi_priv *fsi, struct fsi_stream *io)
{
	u32 data = FUNC0(1, FUNC3(fsi, io));
	struct fsi_master *master = FUNC2(fsi);

	FUNC1(master, imsk,  data, 0);
	FUNC1(master, iemsk, data, 0);
}
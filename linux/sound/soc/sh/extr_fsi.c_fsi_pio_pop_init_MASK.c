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
struct fsi_stream {int bus_option; } ;
struct fsi_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PACKAGE_24BITBUS_BACK ; 

__attribute__((used)) static int FUNC1(struct fsi_priv *fsi, struct fsi_stream *io)
{
	/*
	 * always 24bit bus, package back when "capture"
	 */
	io->bus_option = FUNC0(24, PACKAGE_24BITBUS_BACK) |
			 FUNC0(16, PACKAGE_24BITBUS_BACK);
	return 0;
}
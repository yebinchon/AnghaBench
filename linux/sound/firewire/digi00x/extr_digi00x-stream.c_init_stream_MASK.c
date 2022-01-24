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
struct fw_iso_resources {int dummy; } ;
struct amdtp_stream {int dummy; } ;
struct snd_dg00x {int /*<<< orphan*/  unit; struct fw_iso_resources rx_resources; struct fw_iso_resources tx_resources; struct amdtp_stream tx_stream; } ;
typedef  enum amdtp_stream_direction { ____Placeholder_amdtp_stream_direction } amdtp_stream_direction ;

/* Variables and functions */
 int AMDTP_IN_STREAM ; 
 int AMDTP_OUT_STREAM ; 
 int FUNC0 (struct amdtp_stream*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fw_iso_resources*) ; 
 int FUNC2 (struct fw_iso_resources*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_dg00x *dg00x, struct amdtp_stream *s)
{
	struct fw_iso_resources *resources;
	enum amdtp_stream_direction dir;
	int err;

	if (s == &dg00x->tx_stream) {
		resources = &dg00x->tx_resources;
		dir = AMDTP_IN_STREAM;
	} else {
		resources = &dg00x->rx_resources;
		dir = AMDTP_OUT_STREAM;
	}

	err = FUNC2(resources, dg00x->unit);
	if (err < 0)
		return err;

	err = FUNC0(s, dg00x->unit, dir);
	if (err < 0)
		FUNC1(resources);

	return err;
}
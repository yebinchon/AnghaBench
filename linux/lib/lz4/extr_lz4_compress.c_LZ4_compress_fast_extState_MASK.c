#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tableType_t ;
struct TYPE_3__ {int /*<<< orphan*/  internal_donotuse; } ;
typedef  int /*<<< orphan*/  LZ4_stream_t_internal ;
typedef  TYPE_1__ LZ4_stream_t ;

/* Variables and functions */
 int LZ4_64Klimit ; 
 int LZ4_ACCELERATION_DEFAULT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  byPtr ; 
 int /*<<< orphan*/  const byU16 ; 
 int /*<<< orphan*/  byU32 ; 
 int /*<<< orphan*/  limitedOutput ; 
 int /*<<< orphan*/  noDict ; 
 int /*<<< orphan*/  noDictIssue ; 
 int /*<<< orphan*/  noLimit ; 

__attribute__((used)) static int FUNC3(
	void *state,
	const char *source,
	char *dest,
	int inputSize,
	int maxOutputSize,
	int acceleration)
{
	LZ4_stream_t_internal *ctx = &((LZ4_stream_t *)state)->internal_donotuse;
#if LZ4_ARCH64
	const tableType_t tableType = byU32;
#else
	const tableType_t tableType = byPtr;
#endif

	FUNC2((LZ4_stream_t *)state);

	if (acceleration < 1)
		acceleration = LZ4_ACCELERATION_DEFAULT;

	if (maxOutputSize >= FUNC0(inputSize)) {
		if (inputSize < LZ4_64Klimit)
			return FUNC1(ctx, source,
				dest, inputSize, 0,
				noLimit, byU16, noDict,
				noDictIssue, acceleration);
		else
			return FUNC1(ctx, source,
				dest, inputSize, 0,
				noLimit, tableType, noDict,
				noDictIssue, acceleration);
	} else {
		if (inputSize < LZ4_64Klimit)
			return FUNC1(ctx, source,
				dest, inputSize,
				maxOutputSize, limitedOutput, byU16, noDict,
				noDictIssue, acceleration);
		else
			return FUNC1(ctx, source,
				dest, inputSize,
				maxOutputSize, limitedOutput, tableType, noDict,
				noDictIssue, acceleration);
	}
}
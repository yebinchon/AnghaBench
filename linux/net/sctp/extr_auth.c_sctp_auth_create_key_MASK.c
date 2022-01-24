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
struct sctp_auth_bytes {int len; int /*<<< orphan*/  refcnt; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int __u32 ;

/* Variables and functions */
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  keys ; 
 struct sctp_auth_bytes* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct sctp_auth_bytes *FUNC3(__u32 key_len, gfp_t gfp)
{
	struct sctp_auth_bytes *key;

	/* Verify that we are not going to overflow INT_MAX */
	if (key_len > (INT_MAX - sizeof(struct sctp_auth_bytes)))
		return NULL;

	/* Allocate the shared key */
	key = FUNC1(sizeof(struct sctp_auth_bytes) + key_len, gfp);
	if (!key)
		return NULL;

	key->len = key_len;
	FUNC2(&key->refcnt, 1);
	FUNC0(keys);

	return key;
}
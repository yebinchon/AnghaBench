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
struct xdr_stream {int dummy; } ;
struct svc_rqst {int dummy; } ;
struct nfs4_ace {scalar_t__ whotype; int flag; int /*<<< orphan*/  who_uid; int /*<<< orphan*/  who_gid; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int NFS4_ACE_IDENTIFIER_GROUP ; 
 scalar_t__ NFS4_ACL_WHO_NAMED ; 
 int /*<<< orphan*/  FUNC0 (struct xdr_stream*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,struct svc_rqst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,struct svc_rqst*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline __be32
FUNC3(struct xdr_stream *xdr, struct svc_rqst *rqstp,
		     struct nfs4_ace *ace)
{
	if (ace->whotype != NFS4_ACL_WHO_NAMED)
		return FUNC0(xdr, ace->whotype);
	else if (ace->flag & NFS4_ACE_IDENTIFIER_GROUP)
		return FUNC1(xdr, rqstp, ace->who_gid);
	else
		return FUNC2(xdr, rqstp, ace->who_uid);
}
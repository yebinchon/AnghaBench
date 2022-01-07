
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nf_conn {unsigned int status; } ;


 size_t CTA_STATUS ;
 int EBUSY ;
 unsigned long IPS_ASSURED ;
 unsigned long IPS_CONFIRMED ;
 unsigned long IPS_DYING ;
 unsigned long IPS_EXPECTED ;
 unsigned long IPS_SEEN_REPLY ;
 int __ctnetlink_change_status (struct nf_conn*,unsigned int,int ) ;
 int nla_get_be32 (struct nlattr const* const) ;
 unsigned int ntohl (int ) ;

__attribute__((used)) static int
ctnetlink_change_status(struct nf_conn *ct, const struct nlattr * const cda[])
{
 unsigned long d;
 unsigned int status = ntohl(nla_get_be32(cda[CTA_STATUS]));
 d = ct->status ^ status;

 if (d & (IPS_EXPECTED|IPS_CONFIRMED|IPS_DYING))

  return -EBUSY;

 if (d & IPS_SEEN_REPLY && !(status & IPS_SEEN_REPLY))

  return -EBUSY;

 if (d & IPS_ASSURED && !(status & IPS_ASSURED))

  return -EBUSY;

 __ctnetlink_change_status(ct, status, 0);
 return 0;
}

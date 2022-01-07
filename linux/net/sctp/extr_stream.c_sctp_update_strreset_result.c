
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_association {int * strreset_result; } ;
typedef int __u32 ;



__attribute__((used)) static void sctp_update_strreset_result(struct sctp_association *asoc,
     __u32 result)
{
 asoc->strreset_result[1] = asoc->strreset_result[0];
 asoc->strreset_result[0] = result;
}

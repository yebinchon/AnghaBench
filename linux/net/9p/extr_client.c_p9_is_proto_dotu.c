
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_client {scalar_t__ proto_version; } ;


 scalar_t__ p9_proto_2000u ;

inline int p9_is_proto_dotu(struct p9_client *clnt)
{
 return clnt->proto_version == p9_proto_2000u;
}

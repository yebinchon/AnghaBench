
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_protocol_version {int pv_minor; int pv_major; } ;


 int ML_NOTICE ;
 int dlm_protocol_compare (struct dlm_protocol_version*,struct dlm_protocol_version*) ;
 int mlog (int ,char*,int,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int dlm_query_join_proto_check(char *proto_type, int node,
          struct dlm_protocol_version *ours,
          struct dlm_protocol_version *request)
{
 int rc;
 struct dlm_protocol_version proto = *request;

 if (!dlm_protocol_compare(ours, &proto)) {
  mlog(0,
       "node %u wanted to join with %s locking protocol "
       "%u.%u, we respond with %u.%u\n",
       node, proto_type,
       request->pv_major,
       request->pv_minor,
       proto.pv_major, proto.pv_minor);
  request->pv_minor = proto.pv_minor;
  rc = 0;
 } else {
  mlog(ML_NOTICE,
       "Node %u wanted to join with %s locking "
       "protocol %u.%u, but we have %u.%u, disallowing\n",
       node, proto_type,
       request->pv_major,
       request->pv_minor,
       ours->pv_major,
       ours->pv_minor);
  rc = 1;
 }

 return rc;
}

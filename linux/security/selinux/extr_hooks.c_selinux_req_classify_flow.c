
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_sock {int secid; } ;
struct flowi {int flowi_secid; } ;



__attribute__((used)) static void selinux_req_classify_flow(const struct request_sock *req,
          struct flowi *fl)
{
 fl->flowi_secid = req->secid;
}

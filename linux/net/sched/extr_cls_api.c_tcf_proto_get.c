
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int refcnt; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static void tcf_proto_get(struct tcf_proto *tp)
{
 refcount_inc(&tp->refcnt);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
typedef TYPE_1__ nfs4_stateid ;






__attribute__((used)) static const nfs4_stateid *
nfs4_recoverable_stateid(const nfs4_stateid *stateid)
{
 if (!stateid)
  return ((void*)0);
 switch (stateid->type) {
 case 128:
 case 129:
 case 130:
  return stateid;
 default:
  break;
 }
 return ((void*)0);
}

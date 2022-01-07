
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {scalar_t__ len; int * vec; } ;
struct TYPE_5__ {TYPE_1__ sp; } ;
typedef TYPE_2__ dccp_feat_val ;


 int ENOBUFS ;
 int gfp_any () ;
 int * kmemdup (scalar_t__ const*,scalar_t__,int ) ;

__attribute__((used)) static int dccp_feat_clone_sp_val(dccp_feat_val *fval, u8 const *val, u8 len)
{
 fval->sp.len = len;
 if (fval->sp.len > 0) {
  fval->sp.vec = kmemdup(val, len, gfp_any());
  if (fval->sp.vec == ((void*)0)) {
   fval->sp.len = 0;
   return -ENOBUFS;
  }
 }
 return 0;
}

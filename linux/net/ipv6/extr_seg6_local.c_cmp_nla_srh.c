
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct seg6_local_lwt {TYPE_1__* srh; } ;
struct TYPE_3__ {int hdrlen; } ;


 int memcmp (TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static int cmp_nla_srh(struct seg6_local_lwt *a, struct seg6_local_lwt *b)
{
 int len = (a->srh->hdrlen + 1) << 3;

 if (len != ((b->srh->hdrlen + 1) << 3))
  return 1;

 return memcmp(a->srh, b->srh, len);
}

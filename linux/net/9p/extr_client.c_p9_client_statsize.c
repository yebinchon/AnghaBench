
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_wstat {scalar_t__ extension; scalar_t__ muid; scalar_t__ gid; scalar_t__ uid; scalar_t__ name; } ;


 int p9_proto_2000L ;
 int p9_proto_2000u ;
 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static int p9_client_statsize(struct p9_wstat *wst, int proto_version)
{
 int ret;





 ret = 2+4+13+4+4+4+8+2+2+2+2;

 if (wst->name)
  ret += strlen(wst->name);
 if (wst->uid)
  ret += strlen(wst->uid);
 if (wst->gid)
  ret += strlen(wst->gid);
 if (wst->muid)
  ret += strlen(wst->muid);

 if ((proto_version == p9_proto_2000u) ||
  (proto_version == p9_proto_2000L)) {
  ret += 2+4+4+4;
  if (wst->extension)
   ret += strlen(wst->extension);
 }

 return ret;
}

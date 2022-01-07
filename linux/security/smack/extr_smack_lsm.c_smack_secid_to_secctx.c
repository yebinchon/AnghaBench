
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smack_known {char* smk_known; } ;


 struct smack_known* smack_from_secid (int ) ;
 int strlen (char*) ;

__attribute__((used)) static int smack_secid_to_secctx(u32 secid, char **secdata, u32 *seclen)
{
 struct smack_known *skp = smack_from_secid(secid);

 if (secdata)
  *secdata = skp->smk_known;
 *seclen = strlen(skp->smk_known);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smack_known {int smk_secid; } ;


 struct smack_known* smk_find_entry (char const*) ;

__attribute__((used)) static int smack_secctx_to_secid(const char *secdata, u32 seclen, u32 *secid)
{
 struct smack_known *skp = smk_find_entry(secdata);

 if (skp)
  *secid = skp->smk_secid;
 else
  *secid = 0;
 return 0;
}

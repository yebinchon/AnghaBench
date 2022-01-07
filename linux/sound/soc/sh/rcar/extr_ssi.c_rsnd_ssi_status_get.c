
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsnd_mod {int dummy; } ;


 int SSISR ;
 int rsnd_mod_read (struct rsnd_mod*,int ) ;

__attribute__((used)) static u32 rsnd_ssi_status_get(struct rsnd_mod *mod)
{
 return rsnd_mod_read(mod, SSISR);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsnd_mod {int dummy; } ;


 int OUF_SRC (int ) ;
 int SCU_SYS_STATUS0 ;
 int SCU_SYS_STATUS1 ;
 int rsnd_mod_id (struct rsnd_mod*) ;
 int rsnd_mod_write (struct rsnd_mod*,int ,int ) ;

__attribute__((used)) static void rsnd_src_status_clear(struct rsnd_mod *mod)
{
 u32 val = OUF_SRC(rsnd_mod_id(mod));

 rsnd_mod_write(mod, SCU_SYS_STATUS0, val);
 rsnd_mod_write(mod, SCU_SYS_STATUS1, val);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct device {int dummy; } ;


 int OUF_SRC (int ) ;
 int SCU_SYS_STATUS0 ;
 int SCU_SYS_STATUS1 ;
 int rsnd_dbg_irq_status (struct device*,char*,int ,int,int) ;
 int rsnd_mod_id (struct rsnd_mod*) ;
 int rsnd_mod_name (struct rsnd_mod*) ;
 int rsnd_mod_read (struct rsnd_mod*,int ) ;
 struct rsnd_priv* rsnd_mod_to_priv (struct rsnd_mod*) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;
 scalar_t__ rsnd_src_sync_is_enabled (struct rsnd_mod*) ;

__attribute__((used)) static bool rsnd_src_error_occurred(struct rsnd_mod *mod)
{
 struct rsnd_priv *priv = rsnd_mod_to_priv(mod);
 struct device *dev = rsnd_priv_to_dev(priv);
 u32 val0, val1;
 u32 status0, status1;
 bool ret = 0;

 val0 = val1 = OUF_SRC(rsnd_mod_id(mod));






 if (rsnd_src_sync_is_enabled(mod))
  val0 = val0 & 0xffff;

 status0 = rsnd_mod_read(mod, SCU_SYS_STATUS0);
 status1 = rsnd_mod_read(mod, SCU_SYS_STATUS1);
 if ((status0 & val0) || (status1 & val1)) {
  rsnd_dbg_irq_status(dev, "%s err status : 0x%08x, 0x%08x\n",
   rsnd_mod_name(mod), status0, status1);

  ret = 1;
 }

 return ret;
}

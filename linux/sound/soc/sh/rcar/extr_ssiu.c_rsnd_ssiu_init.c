
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct rsnd_dai {int dummy; } ;


 int SSI_MODE0 ;
 int SSI_MODE1 ;
 int SSI_MODE2 ;
 int SSI_SYS_STATUS (int) ;
 struct rsnd_dai* rsnd_io_to_rdai (struct rsnd_dai_stream*) ;
 int rsnd_mod_bset (struct rsnd_mod*,int ,int,int) ;
 int rsnd_mod_id (struct rsnd_mod*) ;
 int rsnd_mod_read (struct rsnd_mod*,int ) ;
 int rsnd_mod_write (struct rsnd_mod*,int ,int) ;
 int rsnd_rdai_is_clk_master (struct rsnd_dai*) ;
 scalar_t__ rsnd_ssi_is_pin_sharing (struct rsnd_dai_stream*) ;
 int rsnd_ssi_multi_slaves_runtime (struct rsnd_dai_stream*) ;
 int rsnd_ssi_use_busif (struct rsnd_dai_stream*) ;

__attribute__((used)) static int rsnd_ssiu_init(struct rsnd_mod *mod,
     struct rsnd_dai_stream *io,
     struct rsnd_priv *priv)
{
 struct rsnd_dai *rdai = rsnd_io_to_rdai(io);
 u32 ssis = rsnd_ssi_multi_slaves_runtime(io);
 int use_busif = rsnd_ssi_use_busif(io);
 int id = rsnd_mod_id(mod);
 int is_clk_master = rsnd_rdai_is_clk_master(rdai);
 u32 val1, val2;
 int i;


 switch (id) {
 case 0:
 case 1:
 case 2:
 case 3:
 case 4:
  for (i = 0; i < 4; i++)
   rsnd_mod_write(mod, SSI_SYS_STATUS(i * 2), 0xf << (id * 4));
  break;
 case 9:
  for (i = 0; i < 4; i++)
   rsnd_mod_write(mod, SSI_SYS_STATUS((i * 2) + 1), 0xf << 4);
  break;
 }




 rsnd_mod_bset(mod, SSI_MODE0, (1 << id), !use_busif << id);







 val1 = rsnd_mod_read(mod, SSI_MODE1);
 val2 = rsnd_mod_read(mod, SSI_MODE2);
 if (rsnd_ssi_is_pin_sharing(io)) {

  ssis |= (1 << id);

 } else if (ssis) {







  if (ssis & (1 << 4))
   val1 |= (1 << 20);

  if (ssis == 0x0006)
   val1 |= (1 << 4);

  if (ssis == 0x0206)
   val2 |= (1 << 4);
 }


 if (ssis & (1 << 1))
  val1 |= is_clk_master ? 0x2 : 0x1;


 if (ssis & (1 << 2))
  val1 |= is_clk_master ? 0x2 << 2 :
     0x1 << 2;

 if (ssis & (1 << 4))
  val1 |= is_clk_master ? 0x2 << 16 :
     0x1 << 16;

 if (ssis & (1 << 9))
  val2 |= is_clk_master ? 0x2 : 0x1;

 rsnd_mod_bset(mod, SSI_MODE1, 0x0013001f, val1);
 rsnd_mod_bset(mod, SSI_MODE2, 0x00000017, val2);

 return 0;
}

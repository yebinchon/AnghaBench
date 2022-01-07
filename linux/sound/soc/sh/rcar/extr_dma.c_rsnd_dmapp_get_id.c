
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int dev_err (struct device*,char*,int ) ;
 int* gen2_id_table_cmd ;
 int* gen2_id_table_scu ;
 int* gen2_id_table_ssiu ;
 struct rsnd_mod* rsnd_io_to_mod_dvc (struct rsnd_dai_stream*) ;
 struct rsnd_mod* rsnd_io_to_mod_src (struct rsnd_dai_stream*) ;
 struct rsnd_mod* rsnd_io_to_mod_ssi (struct rsnd_dai_stream*) ;
 struct rsnd_mod* rsnd_io_to_mod_ssiu (struct rsnd_dai_stream*) ;
 int rsnd_io_to_priv (struct rsnd_dai_stream*) ;
 int rsnd_mod_id (struct rsnd_mod*) ;
 int rsnd_mod_id_sub (struct rsnd_mod*) ;
 int rsnd_mod_name (struct rsnd_mod*) ;
 struct device* rsnd_priv_to_dev (int ) ;

__attribute__((used)) static u32 rsnd_dmapp_get_id(struct rsnd_dai_stream *io,
        struct rsnd_mod *mod)
{
 struct rsnd_mod *ssi = rsnd_io_to_mod_ssi(io);
 struct rsnd_mod *ssiu = rsnd_io_to_mod_ssiu(io);
 struct rsnd_mod *src = rsnd_io_to_mod_src(io);
 struct rsnd_mod *dvc = rsnd_io_to_mod_dvc(io);
 const u8 *entry = ((void*)0);
 int id = 255;
 int size = 0;

 if ((mod == ssi) ||
     (mod == ssiu)) {
  int busif = rsnd_mod_id_sub(ssiu);

  entry = gen2_id_table_ssiu;
  size = ARRAY_SIZE(gen2_id_table_ssiu);
  id = (rsnd_mod_id(mod) * 8) + busif;
 } else if (mod == src) {
  entry = gen2_id_table_scu;
  size = ARRAY_SIZE(gen2_id_table_scu);
  id = rsnd_mod_id(mod);
 } else if (mod == dvc) {
  entry = gen2_id_table_cmd;
  size = ARRAY_SIZE(gen2_id_table_cmd);
  id = rsnd_mod_id(mod);
 }

 if ((!entry) || (size <= id)) {
  struct device *dev = rsnd_priv_to_dev(rsnd_io_to_priv(io));

  dev_err(dev, "unknown connection (%s)\n", rsnd_mod_name(mod));


  return 0x00;
 }

 return entry[id];
}

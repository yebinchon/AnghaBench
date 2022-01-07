
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_dai_stream {int name; } ;
struct device_node {int full_name; } ;
struct device {int dummy; } ;


 int RSND_STREAM_HDMI0 ;
 int RSND_STREAM_HDMI1 ;
 int dev_dbg (struct device*,char*,int ) ;
 struct device_node* of_graph_get_remote_port_parent (struct device_node*) ;
 int rsnd_flags_set (struct rsnd_dai_stream*,int ) ;
 int rsnd_io_to_mod_ssi (struct rsnd_dai_stream*) ;
 int rsnd_parse_tdm_split_mode (struct rsnd_priv*,struct rsnd_dai_stream*,struct device_node*) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;
 scalar_t__ strstr (int ,char*) ;

__attribute__((used)) static void rsnd_parse_connect_graph(struct rsnd_priv *priv,
         struct rsnd_dai_stream *io,
         struct device_node *endpoint)
{
 struct device *dev = rsnd_priv_to_dev(priv);
 struct device_node *remote_node = of_graph_get_remote_port_parent(endpoint);

 if (!rsnd_io_to_mod_ssi(io))
  return;


 if (strstr(remote_node->full_name, "hdmi@fead0000")) {
  rsnd_flags_set(io, RSND_STREAM_HDMI0);
  dev_dbg(dev, "%s connected to HDMI0\n", io->name);
 }


 if (strstr(remote_node->full_name, "hdmi@feae0000")) {
  rsnd_flags_set(io, RSND_STREAM_HDMI1);
  dev_dbg(dev, "%s connected to HDMI1\n", io->name);
 }

 rsnd_parse_tdm_split_mode(priv, io, endpoint);
}

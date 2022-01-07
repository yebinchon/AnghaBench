
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_stream {int dummy; } ;
struct fsi_priv {struct fsi_stream capture; struct fsi_stream playback; } ;
struct device {int dummy; } ;


 int fsi_stream_handler_call (struct fsi_stream*,int ,struct fsi_priv*,struct fsi_stream*,struct device*) ;
 int probe ;

__attribute__((used)) static int fsi_stream_probe(struct fsi_priv *fsi, struct device *dev)
{
 struct fsi_stream *io;
 int ret1, ret2;

 io = &fsi->playback;
 ret1 = fsi_stream_handler_call(io, probe, fsi, io, dev);

 io = &fsi->capture;
 ret2 = fsi_stream_handler_call(io, probe, fsi, io, dev);

 if (ret1 < 0)
  return ret1;
 if (ret2 < 0)
  return ret2;

 return 0;
}

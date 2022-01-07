
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_stream {int dummy; } ;
struct fsi_priv {int dummy; } ;
struct device {int dummy; } ;


 int fsi_hw_shutdown (struct fsi_priv*,struct device*) ;
 int fsi_stream_is_working (struct fsi_priv*,struct fsi_stream*) ;
 int fsi_stream_stop (struct fsi_priv*,struct fsi_stream*) ;

__attribute__((used)) static void __fsi_suspend(struct fsi_priv *fsi,
     struct fsi_stream *io,
     struct device *dev)
{
 if (!fsi_stream_is_working(fsi, io))
  return;

 fsi_stream_stop(fsi, io);
 fsi_hw_shutdown(fsi, dev);
}

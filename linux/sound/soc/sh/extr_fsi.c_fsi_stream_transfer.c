
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_stream {int dummy; } ;
struct fsi_priv {int dummy; } ;


 int EIO ;
 int fsi_stream_handler_call (struct fsi_stream*,int ,struct fsi_priv*,struct fsi_stream*) ;
 struct fsi_priv* fsi_stream_to_priv (struct fsi_stream*) ;
 int transfer ;

__attribute__((used)) static int fsi_stream_transfer(struct fsi_stream *io)
{
 struct fsi_priv *fsi = fsi_stream_to_priv(io);
 if (!fsi)
  return -EIO;

 return fsi_stream_handler_call(io, transfer, fsi, io);
}

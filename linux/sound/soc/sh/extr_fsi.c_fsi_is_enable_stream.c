
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_priv {int enable_stream; } ;



__attribute__((used)) static int fsi_is_enable_stream(struct fsi_priv *fsi)
{
 return fsi->enable_stream;
}

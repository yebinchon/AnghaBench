
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_priv {int chan_num; } ;



__attribute__((used)) static int fsi_sample2frame(struct fsi_priv *fsi, int samples)
{
 return samples / fsi->chan_num;
}

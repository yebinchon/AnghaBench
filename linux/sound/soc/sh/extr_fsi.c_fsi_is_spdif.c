
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_priv {int spdif; } ;



__attribute__((used)) static int fsi_is_spdif(struct fsi_priv *fsi)
{
 return fsi->spdif;
}

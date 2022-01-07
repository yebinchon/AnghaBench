
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_priv {struct fsi_master* master; } ;
struct fsi_master {int dummy; } ;



__attribute__((used)) static struct fsi_master *fsi_get_master(struct fsi_priv *fsi)
{
 return fsi->master;
}

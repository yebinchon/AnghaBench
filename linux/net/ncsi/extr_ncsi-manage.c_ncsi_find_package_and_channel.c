
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncsi_package {int dummy; } ;
struct ncsi_dev_priv {int dummy; } ;
struct ncsi_channel {int dummy; } ;


 int NCSI_CHANNEL_INDEX (unsigned char) ;
 int NCSI_PACKAGE_INDEX (unsigned char) ;
 struct ncsi_channel* ncsi_find_channel (struct ncsi_package*,int ) ;
 struct ncsi_package* ncsi_find_package (struct ncsi_dev_priv*,int ) ;

void ncsi_find_package_and_channel(struct ncsi_dev_priv *ndp,
       unsigned char id,
       struct ncsi_package **np,
       struct ncsi_channel **nc)
{
 struct ncsi_package *p;
 struct ncsi_channel *c;

 p = ncsi_find_package(ndp, NCSI_PACKAGE_INDEX(id));
 c = p ? ncsi_find_channel(p, NCSI_CHANNEL_INDEX(id)) : ((void*)0);

 if (np)
  *np = p;
 if (nc)
  *nc = c;
}

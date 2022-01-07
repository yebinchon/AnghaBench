
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct sockaddr {char* sa_data; int sa_family; } ;
struct net_device {int dummy; } ;
struct iw_spy_data {int spy_number; TYPE_2__* spy_stat; TYPE_2__** spy_address; } ;
struct iw_request_info {int dummy; } ;
struct iw_quality {int dummy; } ;
struct TYPE_4__ {int updated; } ;


 int AF_UNIX ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int IW_QUAL_ALL_UPDATED ;
 struct iw_spy_data* get_spydata (struct net_device*) ;
 int memcpy (char*,TYPE_2__*,int) ;

int iw_handler_get_spy(struct net_device * dev,
         struct iw_request_info * info,
         union iwreq_data * wrqu,
         char * extra)
{
 struct iw_spy_data * spydata = get_spydata(dev);
 struct sockaddr * address = (struct sockaddr *) extra;
 int i;


 if (!spydata)
  return -EOPNOTSUPP;

 wrqu->data.length = spydata->spy_number;


 for (i = 0; i < spydata->spy_number; i++) {
  memcpy(address[i].sa_data, spydata->spy_address[i], ETH_ALEN);
  address[i].sa_family = AF_UNIX;
 }

 if (spydata->spy_number > 0)
  memcpy(extra + (sizeof(struct sockaddr) *spydata->spy_number),
         spydata->spy_stat,
         sizeof(struct iw_quality) * spydata->spy_number);

 for (i = 0; i < spydata->spy_number; i++)
  spydata->spy_stat[i].updated &= ~IW_QUAL_ALL_UPDATED;
 return 0;
}

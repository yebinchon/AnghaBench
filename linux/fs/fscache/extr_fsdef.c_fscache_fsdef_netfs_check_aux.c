
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int version ;
typedef int uint32_t ;
typedef int uint16_t ;
struct fscache_netfs {int version; int name; } ;
typedef int loff_t ;
typedef enum fscache_checkaux { ____Placeholder_fscache_checkaux } fscache_checkaux ;


 int FSCACHE_CHECKAUX_OBSOLETE ;
 int FSCACHE_CHECKAUX_OKAY ;
 int _enter (char*,int ,int) ;
 int _leave (char*,...) ;
 int memcpy (int *,void const*,int) ;

__attribute__((used)) static enum fscache_checkaux fscache_fsdef_netfs_check_aux(
 void *cookie_netfs_data,
 const void *data,
 uint16_t datalen,
 loff_t object_size)
{
 struct fscache_netfs *netfs = cookie_netfs_data;
 uint32_t version;

 _enter("{%s},,%hu", netfs->name, datalen);

 if (datalen != sizeof(version)) {
  _leave(" = OBSOLETE [dl=%d v=%zu]", datalen, sizeof(version));
  return FSCACHE_CHECKAUX_OBSOLETE;
 }

 memcpy(&version, data, sizeof(version));
 if (version != netfs->version) {
  _leave(" = OBSOLETE [ver=%x net=%x]", version, netfs->version);
  return FSCACHE_CHECKAUX_OBSOLETE;
 }

 _leave(" = OKAY");
 return FSCACHE_CHECKAUX_OKAY;
}

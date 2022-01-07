
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct fwdb_header {scalar_t__ magic; scalar_t__ version; struct fwdb_country* country; } ;
struct fwdb_country {int coll_ptr; } ;


 int FWDB_MAGIC ;
 int FWDB_VERSION ;
 scalar_t__ cpu_to_be32 (int ) ;
 int regdb_has_valid_signature (int const*,unsigned int) ;
 int valid_country (int const*,unsigned int,struct fwdb_country const*) ;

__attribute__((used)) static bool valid_regdb(const u8 *data, unsigned int size)
{
 const struct fwdb_header *hdr = (void *)data;
 const struct fwdb_country *country;

 if (size < sizeof(*hdr))
  return 0;

 if (hdr->magic != cpu_to_be32(FWDB_MAGIC))
  return 0;

 if (hdr->version != cpu_to_be32(FWDB_VERSION))
  return 0;

 if (!regdb_has_valid_signature(data, size))
  return 0;

 country = &hdr->country[0];
 while ((u8 *)(country + 1) <= data + size) {
  if (!country->coll_ptr)
   break;
  if (!valid_country(data, size, country))
   return 0;
  country++;
 }

 return 1;
}

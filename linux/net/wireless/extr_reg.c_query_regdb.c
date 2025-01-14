
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwdb_header {struct fwdb_country* country; } ;
struct fwdb_country {int alpha2; scalar_t__ coll_ptr; } ;


 int ASSERT_RTNL () ;
 int ENODATA ;
 scalar_t__ IS_ERR (struct fwdb_header*) ;
 int PTR_ERR (struct fwdb_header*) ;
 scalar_t__ alpha2_equal (char const*,int ) ;
 struct fwdb_header* regdb ;
 int regdb_query_country (struct fwdb_header*,struct fwdb_country const*) ;

__attribute__((used)) static int query_regdb(const char *alpha2)
{
 const struct fwdb_header *hdr = regdb;
 const struct fwdb_country *country;

 ASSERT_RTNL();

 if (IS_ERR(regdb))
  return PTR_ERR(regdb);

 country = &hdr->country[0];
 while (country->coll_ptr) {
  if (alpha2_equal(alpha2, country->alpha2))
   return regdb_query_country(regdb, country);
  country++;
 }

 return -ENODATA;
}

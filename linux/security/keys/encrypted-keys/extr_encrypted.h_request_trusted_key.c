
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct key {int dummy; } ;


 int EOPNOTSUPP ;
 struct key* ERR_PTR (int ) ;

__attribute__((used)) static inline struct key *request_trusted_key(const char *trusted_desc,
           const u8 **master_key,
           size_t *master_keylen)
{
 return ERR_PTR(-EOPNOTSUPP);
}

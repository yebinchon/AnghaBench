
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum migratetype { ____Placeholder_migratetype } migratetype ;


 int MIGRATE_HIGHATOMIC ;

__attribute__((used)) static inline bool is_migrate_highatomic(enum migratetype migratetype)
{
 return migratetype == MIGRATE_HIGHATOMIC;
}

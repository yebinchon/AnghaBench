
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bucket_table {scalar_t__ nest; } ;


 int kvfree (struct bucket_table const*) ;
 int nested_bucket_table_free (struct bucket_table const*) ;

__attribute__((used)) static void bucket_table_free(const struct bucket_table *tbl)
{
 if (tbl->nest)
  nested_bucket_table_free(tbl);

 kvfree(tbl);
}

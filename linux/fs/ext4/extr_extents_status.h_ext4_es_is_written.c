
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_status {int dummy; } ;


 int EXTENT_STATUS_WRITTEN ;
 int ext4_es_type (struct extent_status*) ;

__attribute__((used)) static inline int ext4_es_is_written(struct extent_status *es)
{
 return (ext4_es_type(es) & EXTENT_STATUS_WRITTEN) != 0;
}

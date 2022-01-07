
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcore_extract {int extract_filename; } ;


 int unlink (int ) ;

void kcore_extract__delete(struct kcore_extract *kce)
{
 unlink(kce->extract_filename);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hists {int dummy; } ;


 scalar_t__ __validate_match (struct hists*) ;

__attribute__((used)) static int validate_match(struct hists *leader, struct hists *other)
{
 return __validate_match(leader) || __validate_match(other);
}

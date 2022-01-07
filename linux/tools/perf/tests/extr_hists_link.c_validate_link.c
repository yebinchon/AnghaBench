
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hists {int dummy; } ;


 scalar_t__ __validate_link (struct hists*,int) ;

__attribute__((used)) static int validate_link(struct hists *leader, struct hists *other)
{
 return __validate_link(leader, 0) || __validate_link(other, 1);
}

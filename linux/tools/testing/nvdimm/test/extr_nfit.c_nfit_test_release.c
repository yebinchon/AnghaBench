
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfit_test {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct nfit_test*) ;
 struct nfit_test* to_nfit_test (struct device*) ;

__attribute__((used)) static void nfit_test_release(struct device *dev)
{
 struct nfit_test *nfit_test = to_nfit_test(dev);

 kfree(nfit_test);
}

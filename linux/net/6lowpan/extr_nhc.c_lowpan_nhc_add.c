
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lowpan_nhc {scalar_t__ idlen; size_t nexthdr; int (* idsetup ) (struct lowpan_nhc*) ;} ;


 int EEXIST ;
 int EINVAL ;
 scalar_t__ LOWPAN_NHC_MAX_ID_LEN ;
 int WARN_ONCE (int,char*,scalar_t__) ;
 struct lowpan_nhc** lowpan_nexthdr_nhcs ;
 int lowpan_nhc_insert (struct lowpan_nhc*) ;
 int lowpan_nhc_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct lowpan_nhc*) ;

int lowpan_nhc_add(struct lowpan_nhc *nhc)
{
 int ret;

 if (!nhc->idlen || !nhc->idsetup)
  return -EINVAL;

 WARN_ONCE(nhc->idlen > LOWPAN_NHC_MAX_ID_LEN,
    "LOWPAN_NHC_MAX_ID_LEN should be updated to %zd.\n",
    nhc->idlen);

 nhc->idsetup(nhc);

 spin_lock_bh(&lowpan_nhc_lock);

 if (lowpan_nexthdr_nhcs[nhc->nexthdr]) {
  ret = -EEXIST;
  goto out;
 }

 ret = lowpan_nhc_insert(nhc);
 if (ret < 0)
  goto out;

 lowpan_nexthdr_nhcs[nhc->nexthdr] = nhc;
out:
 spin_unlock_bh(&lowpan_nhc_lock);
 return ret;
}

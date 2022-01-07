
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct nft_limit {scalar_t__ tokens; scalar_t__ last; scalar_t__ tokens_max; int invert; int lock; } ;
typedef scalar_t__ s64 ;


 scalar_t__ ktime_get_ns () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline bool nft_limit_eval(struct nft_limit *limit, u64 cost)
{
 u64 now, tokens;
 s64 delta;

 spin_lock_bh(&limit->lock);
 now = ktime_get_ns();
 tokens = limit->tokens + now - limit->last;
 if (tokens > limit->tokens_max)
  tokens = limit->tokens_max;

 limit->last = now;
 delta = tokens - cost;
 if (delta >= 0) {
  limit->tokens = delta;
  spin_unlock_bh(&limit->lock);
  return limit->invert;
 }
 limit->tokens = tokens;
 spin_unlock_bh(&limit->lock);
 return !limit->invert;
}

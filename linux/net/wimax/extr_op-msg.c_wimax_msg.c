
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* wimax_msg_alloc (struct wimax_dev*,char const*,void const*,size_t,int ) ;
 int wimax_msg_send (struct wimax_dev*,struct sk_buff*) ;

int wimax_msg(struct wimax_dev *wimax_dev, const char *pipe_name,
       const void *buf, size_t size, gfp_t gfp_flags)
{
 int result = -ENOMEM;
 struct sk_buff *skb;

 skb = wimax_msg_alloc(wimax_dev, pipe_name, buf, size, gfp_flags);
 if (IS_ERR(skb))
  result = PTR_ERR(skb);
 else
  result = wimax_msg_send(wimax_dev, skb);
 return result;
}

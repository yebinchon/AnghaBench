; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pn_netlink.c_rtm_phonet_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pn_netlink.c_rtm_phonet_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RTNLGRP_PHONET_ROUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtm_phonet_notify(i32 %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @ENOBUFS, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = call i64 @NLMSG_ALIGN(i32 4)
  %12 = call i64 @nla_total_size(i32 1)
  %13 = add nsw i64 %11, %12
  %14 = call i64 @nla_total_size(i32 4)
  %15 = add nsw i64 %13, %14
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.sk_buff* @nlmsg_new(i64 %15, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = icmp eq %struct.sk_buff* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %45

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @fill_route(%struct.sk_buff* %22, %struct.net_device* %23, i32 %24, i32 0, i32 0, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @EMSGSIZE, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = call i32 @kfree_skb(%struct.sk_buff* %36)
  br label %45

38:                                               ; preds = %21
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = call i32 @dev_net(%struct.net_device* %40)
  %42 = load i32, i32* @RTNLGRP_PHONET_ROUTE, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32 @rtnl_notify(%struct.sk_buff* %39, i32 %41, i32 0, i32 %42, i32* null, i32 %43)
  br label %51

45:                                               ; preds = %29, %20
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = call i32 @dev_net(%struct.net_device* %46)
  %48 = load i32, i32* @RTNLGRP_PHONET_ROUTE, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @rtnl_set_sk_err(i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %38
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i64, i32) #1

declare dso_local i64 @NLMSG_ALIGN(i32) #1

declare dso_local i64 @nla_total_size(i32) #1

declare dso_local i32 @fill_route(%struct.sk_buff*, %struct.net_device*, i32, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @rtnl_set_sk_err(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

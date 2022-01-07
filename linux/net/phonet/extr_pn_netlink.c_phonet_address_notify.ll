; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pn_netlink.c_phonet_address_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pn_netlink.c_phonet_address_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RTNLGRP_PHONET_IFADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phonet_address_notify(i32 %0, %struct.net_device* %1, i32 %2) #0 {
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
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.sk_buff* @nlmsg_new(i64 %13, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = icmp eq %struct.sk_buff* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %43

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @fill_addr(%struct.sk_buff* %20, %struct.net_device* %21, i32 %22, i32 0, i32 0, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @EMSGSIZE, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON(i32 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call i32 @kfree_skb(%struct.sk_buff* %34)
  br label %43

36:                                               ; preds = %19
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = call i32 @dev_net(%struct.net_device* %38)
  %40 = load i32, i32* @RTNLGRP_PHONET_IFADDR, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32 @rtnl_notify(%struct.sk_buff* %37, i32 %39, i32 0, i32 %40, i32* null, i32 %41)
  br label %49

43:                                               ; preds = %27, %18
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = call i32 @dev_net(%struct.net_device* %44)
  %46 = load i32, i32* @RTNLGRP_PHONET_IFADDR, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @rtnl_set_sk_err(i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %36
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i64, i32) #1

declare dso_local i64 @NLMSG_ALIGN(i32) #1

declare dso_local i64 @nla_total_size(i32) #1

declare dso_local i32 @fill_addr(%struct.sk_buff*, %struct.net_device*, i32, i32, i32, i32) #1

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

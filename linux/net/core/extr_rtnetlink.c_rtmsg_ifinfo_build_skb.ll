; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtmsg_ifinfo_build_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtmsg_ifinfo_build_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.net = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RTNLGRP_LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @rtmsg_ifinfo_build_skb(i32 %0, %struct.net_device* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.net*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store %struct.net_device* %1, %struct.net_device** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load %struct.net_device*, %struct.net_device** %10, align 8
  %21 = call %struct.net* @dev_net(%struct.net_device* %20)
  store %struct.net* %21, %struct.net** %16, align 8
  %22 = load i32, i32* @ENOBUFS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %18, align 4
  %24 = load %struct.net_device*, %struct.net_device** %10, align 8
  %25 = call i64 @if_nlmsg_size(%struct.net_device* %24, i32 0)
  store i64 %25, i64* %19, align 8
  %26 = load i32, i32* %13, align 4
  %27 = call %struct.sk_buff* @nlmsg_new(i64 %25, i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %17, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %29 = icmp eq %struct.sk_buff* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %7
  br label %56

31:                                               ; preds = %7
  %32 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %33 = load %struct.net_device*, %struct.net_device** %10, align 8
  %34 = load %struct.net_device*, %struct.net_device** %10, align 8
  %35 = call %struct.net* @dev_net(%struct.net_device* %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32*, i32** %14, align 8
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @rtnl_fill_ifinfo(%struct.sk_buff* %32, %struct.net_device* %33, %struct.net* %35, i32 %36, i32 0, i32 0, i32 %37, i32 0, i32 0, i32 %38, i32* %39, i32 %40, i32 -1, i32 %41)
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %18, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %31
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* @EMSGSIZE, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ON(i32 %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %53 = call i32 @kfree_skb(%struct.sk_buff* %52)
  br label %56

54:                                               ; preds = %31
  %55 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %55, %struct.sk_buff** %8, align 8
  br label %65

56:                                               ; preds = %45, %30
  %57 = load i32, i32* %18, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.net*, %struct.net** %16, align 8
  %61 = load i32, i32* @RTNLGRP_LINK, align 4
  %62 = load i32, i32* %18, align 4
  %63 = call i32 @rtnl_set_sk_err(%struct.net* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %56
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  br label %65

65:                                               ; preds = %64, %54
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  ret %struct.sk_buff* %66
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i64, i32) #1

declare dso_local i64 @if_nlmsg_size(%struct.net_device*, i32) #1

declare dso_local i32 @rtnl_fill_ifinfo(%struct.sk_buff*, %struct.net_device*, %struct.net*, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_set_sk_err(%struct.net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

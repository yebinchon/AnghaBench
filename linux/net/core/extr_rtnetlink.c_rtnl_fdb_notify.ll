; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_fdb_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_fdb_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NTF_SELF = common dso_local global i32 0, align 4
@RTNLGRP_NEIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32*, i32, i32, i32)* @rtnl_fdb_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtnl_fdb_notify(%struct.net_device* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.net* @dev_net(%struct.net_device* %14)
  store %struct.net* %15, %struct.net** %11, align 8
  %16 = load i32, i32* @ENOBUFS, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %13, align 4
  %18 = call i32 (...) @rtnl_fdb_nlmsg_size()
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.sk_buff* @nlmsg_new(i32 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %12, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  br label %44

24:                                               ; preds = %5
  %25 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @NTF_SELF, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @nlmsg_populate_fdb_fill(%struct.sk_buff* %25, %struct.net_device* %26, i32* %27, i32 %28, i32 0, i32 0, i32 %29, i32 %30, i32 0, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %37 = call i32 @kfree_skb(%struct.sk_buff* %36)
  br label %44

38:                                               ; preds = %24
  %39 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %40 = load %struct.net*, %struct.net** %11, align 8
  %41 = load i32, i32* @RTNLGRP_NEIGH, align 4
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = call i32 @rtnl_notify(%struct.sk_buff* %39, %struct.net* %40, i32 0, i32 %41, i32* null, i32 %42)
  br label %49

44:                                               ; preds = %35, %23
  %45 = load %struct.net*, %struct.net** %11, align 8
  %46 = load i32, i32* @RTNLGRP_NEIGH, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @rtnl_set_sk_err(%struct.net* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %38
  ret void
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @rtnl_fdb_nlmsg_size(...) #1

declare dso_local i32 @nlmsg_populate_fdb_fill(%struct.sk_buff*, %struct.net_device*, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, %struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @rtnl_set_sk_err(%struct.net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

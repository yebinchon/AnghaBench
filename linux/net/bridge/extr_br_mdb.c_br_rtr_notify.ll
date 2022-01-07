; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_mdb.c_br_rtr_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_mdb.c_br_rtr_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_bridge_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NTF_SELF = common dso_local global i32 0, align 4
@RTNLGRP_MDB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_rtr_notify(%struct.net_device* %0, %struct.net_bridge_port* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_bridge_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.net* @dev_net(%struct.net_device* %11)
  store %struct.net* %12, %struct.net** %7, align 8
  %13 = load i32, i32* @ENOBUFS, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %16 = icmp ne %struct.net_bridge_port* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %19 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %17
  %25 = phi i32 [ %22, %17 ], [ 0, %23 ]
  store i32 %25, i32* %10, align 4
  %26 = call i32 (...) @rtnl_rtr_nlmsg_size()
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.sk_buff* @nlmsg_new(i32 %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %8, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %50

32:                                               ; preds = %24
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @NTF_SELF, align 4
  %38 = call i32 @nlmsg_populate_rtr_fill(%struct.sk_buff* %33, %struct.net_device* %34, i32 %35, i32 0, i32 0, i32 %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = call i32 @kfree_skb(%struct.sk_buff* %42)
  br label %50

44:                                               ; preds = %32
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = load %struct.net*, %struct.net** %7, align 8
  %47 = load i32, i32* @RTNLGRP_MDB, align 4
  %48 = load i32, i32* @GFP_ATOMIC, align 4
  %49 = call i32 @rtnl_notify(%struct.sk_buff* %45, %struct.net* %46, i32 0, i32 %47, i32* null, i32 %48)
  br label %55

50:                                               ; preds = %41, %31
  %51 = load %struct.net*, %struct.net** %7, align 8
  %52 = load i32, i32* @RTNLGRP_MDB, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @rtnl_set_sk_err(%struct.net* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %44
  ret void
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @rtnl_rtr_nlmsg_size(...) #1

declare dso_local i32 @nlmsg_populate_rtr_fill(%struct.sk_buff*, %struct.net_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, %struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @rtnl_set_sk_err(%struct.net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

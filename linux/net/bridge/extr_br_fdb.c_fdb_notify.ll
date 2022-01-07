; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_fdb.c_fdb_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_fdb.c_fdb_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.net_bridge_fdb_entry = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RTNLGRP_NEIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge*, %struct.net_bridge_fdb_entry*, i32, i32)* @fdb_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdb_notify(%struct.net_bridge* %0, %struct.net_bridge_fdb_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_bridge*, align 8
  %6 = alloca %struct.net_bridge_fdb_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %5, align 8
  store %struct.net_bridge_fdb_entry* %1, %struct.net_bridge_fdb_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %13 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.net* @dev_net(i32 %14)
  store %struct.net* %15, %struct.net** %9, align 8
  %16 = load i32, i32* @ENOBUFS, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @br_switchdev_fdb_notify(%struct.net_bridge_fdb_entry* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %4
  %25 = call i32 (...) @fdb_nlmsg_size()
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.sk_buff* @nlmsg_new(i32 %25, i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %10, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %29 = icmp eq %struct.sk_buff* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %54

31:                                               ; preds = %24
  %32 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %33 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %34 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @fdb_fill_info(%struct.sk_buff* %32, %struct.net_bridge* %33, %struct.net_bridge_fdb_entry* %34, i32 0, i32 0, i32 %35, i32 0)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @EMSGSIZE, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @WARN_ON(i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %47 = call i32 @kfree_skb(%struct.sk_buff* %46)
  br label %54

48:                                               ; preds = %31
  %49 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %50 = load %struct.net*, %struct.net** %9, align 8
  %51 = load i32, i32* @RTNLGRP_NEIGH, align 4
  %52 = load i32, i32* @GFP_ATOMIC, align 4
  %53 = call i32 @rtnl_notify(%struct.sk_buff* %49, %struct.net* %50, i32 0, i32 %51, i32* null, i32 %52)
  br label %59

54:                                               ; preds = %39, %30
  %55 = load %struct.net*, %struct.net** %9, align 8
  %56 = load i32, i32* @RTNLGRP_NEIGH, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @rtnl_set_sk_err(%struct.net* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %48
  ret void
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i32 @br_switchdev_fdb_notify(%struct.net_bridge_fdb_entry*, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @fdb_nlmsg_size(...) #1

declare dso_local i32 @fdb_fill_info(%struct.sk_buff*, %struct.net_bridge*, %struct.net_bridge_fdb_entry*, i32, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, %struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @rtnl_set_sk_err(%struct.net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

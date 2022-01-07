; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink_tunnel.c_br_fill_vlan_tinfo_range.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink_tunnel.c_br_fill_vlan_tinfo_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_bridge_vlan = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BRIDGE_VLAN_INFO_RANGE_BEGIN = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_RANGE_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_bridge_vlan*, %struct.net_bridge_vlan*)* @br_fill_vlan_tinfo_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_fill_vlan_tinfo_range(%struct.sk_buff* %0, %struct.net_bridge_vlan* %1, %struct.net_bridge_vlan* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_bridge_vlan*, align 8
  %7 = alloca %struct.net_bridge_vlan*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_bridge_vlan* %1, %struct.net_bridge_vlan** %6, align 8
  store %struct.net_bridge_vlan* %2, %struct.net_bridge_vlan** %7, align 8
  %9 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %7, align 8
  %10 = icmp ne %struct.net_bridge_vlan* %9, null
  br i1 %10, label %11, label %51

11:                                               ; preds = %3
  %12 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %7, align 8
  %13 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %6, align 8
  %16 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %11
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %6, align 8
  %23 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %6, align 8
  %26 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BRIDGE_VLAN_INFO_RANGE_BEGIN, align 4
  %30 = call i32 @br_fill_vlan_tinfo(%struct.sk_buff* %21, i64 %24, i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %20
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %67

35:                                               ; preds = %20
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %7, align 8
  %38 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %7, align 8
  %41 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @BRIDGE_VLAN_INFO_RANGE_END, align 4
  %45 = call i32 @br_fill_vlan_tinfo(%struct.sk_buff* %36, i64 %39, i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %67

50:                                               ; preds = %35
  br label %66

51:                                               ; preds = %11, %3
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %6, align 8
  %54 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %6, align 8
  %57 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @br_fill_vlan_tinfo(%struct.sk_buff* %52, i64 %55, i32 %59, i32 0)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %67

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %50
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %63, %48, %33
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @br_fill_vlan_tinfo(%struct.sk_buff*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

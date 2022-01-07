; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_fill_ifvlaninfo_range.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_fill_ifvlaninfo_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.bridge_vlan_info = type { i64, i64 }

@BRIDGE_VLAN_INFO_RANGE_BEGIN = common dso_local global i64 0, align 8
@IFLA_BRIDGE_VLAN_INFO = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_RANGE_END = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i64, i64, i64)* @br_fill_ifvlaninfo_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_fill_ifvlaninfo_range(%struct.sk_buff* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bridge_vlan_info, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = sub nsw i64 %11, %12
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %10, i32 0, i32 1
  store i64 %16, i64* %17, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @BRIDGE_VLAN_INFO_RANGE_BEGIN, align 8
  %20 = or i64 %18, %19
  %21 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %10, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = load i32, i32* @IFLA_BRIDGE_VLAN_INFO, align 4
  %24 = call i64 @nla_put(%struct.sk_buff* %22, i32 %23, i32 16, %struct.bridge_vlan_info* %10)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %52

27:                                               ; preds = %15
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %10, i32 0, i32 1
  store i64 %28, i64* %29, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @BRIDGE_VLAN_INFO_RANGE_END, align 8
  %32 = or i64 %30, %31
  %33 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %10, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load i32, i32* @IFLA_BRIDGE_VLAN_INFO, align 4
  %36 = call i64 @nla_put(%struct.sk_buff* %34, i32 %35, i32 16, %struct.bridge_vlan_info* %10)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %52

39:                                               ; preds = %27
  br label %51

40:                                               ; preds = %4
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %10, i32 0, i32 1
  store i64 %41, i64* %42, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %10, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = load i32, i32* @IFLA_BRIDGE_VLAN_INFO, align 4
  %47 = call i64 @nla_put(%struct.sk_buff* %45, i32 %46, i32 16, %struct.bridge_vlan_info* %10)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %52

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %39
  store i32 0, i32* %5, align 4
  br label %55

52:                                               ; preds = %49, %38, %26
  %53 = load i32, i32* @EMSGSIZE, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %52, %51
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.bridge_vlan_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

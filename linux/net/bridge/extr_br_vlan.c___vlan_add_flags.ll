; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c___vlan_add_flags.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c___vlan_add_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_vlan = type { i32, i32, i32, i32 }
%struct.net_bridge_vlan_group = type { i32 }

@BRIDGE_VLAN_INFO_PVID = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_UNTAGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge_vlan*, i32)* @__vlan_add_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vlan_add_flags(%struct.net_bridge_vlan* %0, i32 %1) #0 {
  %3 = alloca %struct.net_bridge_vlan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_bridge_vlan_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_bridge_vlan* %0, %struct.net_bridge_vlan** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %3, align 8
  %9 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %3, align 8
  %12 = call i64 @br_vlan_is_master(%struct.net_bridge_vlan* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %3, align 8
  %16 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.net_bridge_vlan_group* @br_vlan_group(i32 %17)
  store %struct.net_bridge_vlan_group* %18, %struct.net_bridge_vlan_group** %5, align 8
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %3, align 8
  %21 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.net_bridge_vlan_group* @nbp_vlan_group(i32 %22)
  store %struct.net_bridge_vlan_group* %23, %struct.net_bridge_vlan_group** %5, align 8
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @BRIDGE_VLAN_INFO_PVID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %5, align 8
  %31 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %3, align 8
  %32 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @__vlan_add_pvid(%struct.net_bridge_vlan_group* %30, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %41

35:                                               ; preds = %24
  %36 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %5, align 8
  %37 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %3, align 8
  %38 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @__vlan_delete_pvid(%struct.net_bridge_vlan_group* %36, i32 %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %35, %29
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @BRIDGE_VLAN_INFO_UNTAGGED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32, i32* @BRIDGE_VLAN_INFO_UNTAGGED, align 4
  %48 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %3, align 8
  %49 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %59

52:                                               ; preds = %41
  %53 = load i32, i32* @BRIDGE_VLAN_INFO_UNTAGGED, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %3, align 8
  %56 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %46
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %3, align 8
  %65 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = xor i32 %63, %66
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %62, %59
  %72 = phi i1 [ true, %59 ], [ %70, %62 ]
  %73 = zext i1 %72 to i32
  ret i32 %73
}

declare dso_local i64 @br_vlan_is_master(%struct.net_bridge_vlan*) #1

declare dso_local %struct.net_bridge_vlan_group* @br_vlan_group(i32) #1

declare dso_local %struct.net_bridge_vlan_group* @nbp_vlan_group(i32) #1

declare dso_local i32 @__vlan_add_pvid(%struct.net_bridge_vlan_group*, i32) #1

declare dso_local i32 @__vlan_delete_pvid(%struct.net_bridge_vlan_group*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

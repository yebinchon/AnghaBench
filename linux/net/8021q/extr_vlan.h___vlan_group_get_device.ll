; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan.h___vlan_group_get_device.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan.h___vlan_group_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vlan_group = type { %struct.net_device**** }

@VLAN_GROUP_ARRAY_PART_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.vlan_group*, i32, i64)* @__vlan_group_get_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @__vlan_group_get_device(%struct.vlan_group* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.vlan_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.net_device**, align 8
  store %struct.vlan_group* %0, %struct.vlan_group** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %9 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %8, i32 0, i32 0
  %10 = load %struct.net_device****, %struct.net_device***** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.net_device***, %struct.net_device**** %10, i64 %12
  %14 = load %struct.net_device***, %struct.net_device**** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @VLAN_GROUP_ARRAY_PART_LEN, align 8
  %17 = udiv i64 %15, %16
  %18 = getelementptr inbounds %struct.net_device**, %struct.net_device*** %14, i64 %17
  %19 = load %struct.net_device**, %struct.net_device*** %18, align 8
  store %struct.net_device** %19, %struct.net_device*** %7, align 8
  %20 = load %struct.net_device**, %struct.net_device*** %7, align 8
  %21 = icmp ne %struct.net_device** %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.net_device**, %struct.net_device*** %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @VLAN_GROUP_ARRAY_PART_LEN, align 8
  %26 = urem i64 %24, %25
  %27 = getelementptr inbounds %struct.net_device*, %struct.net_device** %23, i64 %26
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  br label %30

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %29, %22
  %31 = phi %struct.net_device* [ %28, %22 ], [ null, %29 ]
  ret %struct.net_device* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

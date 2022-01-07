; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan.h_vlan_group_set_device.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan.h_vlan_group_set_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlan_group = type { %struct.net_device**** }
%struct.net_device = type { i32 }

@VLAN_GROUP_ARRAY_PART_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlan_group*, i32, i64, %struct.net_device*)* @vlan_group_set_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlan_group_set_device(%struct.vlan_group* %0, i32 %1, i64 %2, %struct.net_device* %3) #0 {
  %5 = alloca %struct.vlan_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net_device**, align 8
  store %struct.vlan_group* %0, %struct.vlan_group** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.net_device* %3, %struct.net_device** %8, align 8
  %10 = load %struct.vlan_group*, %struct.vlan_group** %5, align 8
  %11 = icmp ne %struct.vlan_group* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %32

13:                                               ; preds = %4
  %14 = load %struct.vlan_group*, %struct.vlan_group** %5, align 8
  %15 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %14, i32 0, i32 0
  %16 = load %struct.net_device****, %struct.net_device***** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @vlan_proto_idx(i32 %17)
  %19 = getelementptr inbounds %struct.net_device***, %struct.net_device**** %16, i64 %18
  %20 = load %struct.net_device***, %struct.net_device**** %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @VLAN_GROUP_ARRAY_PART_LEN, align 8
  %23 = udiv i64 %21, %22
  %24 = getelementptr inbounds %struct.net_device**, %struct.net_device*** %20, i64 %23
  %25 = load %struct.net_device**, %struct.net_device*** %24, align 8
  store %struct.net_device** %25, %struct.net_device*** %9, align 8
  %26 = load %struct.net_device*, %struct.net_device** %8, align 8
  %27 = load %struct.net_device**, %struct.net_device*** %9, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @VLAN_GROUP_ARRAY_PART_LEN, align 8
  %30 = urem i64 %28, %29
  %31 = getelementptr inbounds %struct.net_device*, %struct.net_device** %27, i64 %30
  store %struct.net_device* %26, %struct.net_device** %31, align 8
  br label %32

32:                                               ; preds = %13, %12
  ret void
}

declare dso_local i64 @vlan_proto_idx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

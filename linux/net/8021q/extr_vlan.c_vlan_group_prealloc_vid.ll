; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan.c_vlan_group_prealloc_vid.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan.c_vlan_group_prealloc_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlan_group = type { %struct.net_device**** }
%struct.net_device = type { i32 }

@VLAN_GROUP_ARRAY_PART_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlan_group*, i32, i32)* @vlan_group_prealloc_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_group_prealloc_vid(%struct.vlan_group* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vlan_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vlan_group* %0, %struct.vlan_group** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = call i32 (...) @ASSERT_RTNL()
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @vlan_proto_idx(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @VLAN_GROUP_ARRAY_PART_LEN, align 4
  %17 = sdiv i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.vlan_group*, %struct.vlan_group** %5, align 8
  %19 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %18, i32 0, i32 0
  %20 = load %struct.net_device****, %struct.net_device***** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.net_device***, %struct.net_device**** %20, i64 %22
  %24 = load %struct.net_device***, %struct.net_device**** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.net_device**, %struct.net_device*** %24, i64 %26
  %28 = load %struct.net_device**, %struct.net_device*** %27, align 8
  store %struct.net_device** %28, %struct.net_device*** %8, align 8
  %29 = load %struct.net_device**, %struct.net_device*** %8, align 8
  %30 = icmp ne %struct.net_device** %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %57

32:                                               ; preds = %3
  %33 = load i32, i32* @VLAN_GROUP_ARRAY_PART_LEN, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 8, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.net_device** @kzalloc(i32 %37, i32 %38)
  store %struct.net_device** %39, %struct.net_device*** %8, align 8
  %40 = load %struct.net_device**, %struct.net_device*** %8, align 8
  %41 = icmp eq %struct.net_device** %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* @ENOBUFS, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %57

45:                                               ; preds = %32
  %46 = load %struct.net_device**, %struct.net_device*** %8, align 8
  %47 = load %struct.vlan_group*, %struct.vlan_group** %5, align 8
  %48 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %47, i32 0, i32 0
  %49 = load %struct.net_device****, %struct.net_device***** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.net_device***, %struct.net_device**** %49, i64 %51
  %53 = load %struct.net_device***, %struct.net_device**** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.net_device**, %struct.net_device*** %53, i64 %55
  store %struct.net_device** %46, %struct.net_device*** %56, align 8
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %45, %42, %31
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @vlan_proto_idx(i32) #1

declare dso_local %struct.net_device** @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

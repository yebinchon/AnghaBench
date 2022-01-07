; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_netprio_cgroup.c_netprio_set_prio.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_netprio_cgroup.c_netprio_set_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.netprio_map = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup_subsys_state*, %struct.net_device*, i64)* @netprio_set_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netprio_set_prio(%struct.cgroup_subsys_state* %0, %struct.net_device* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup_subsys_state*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.netprio_map*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %5, align 8
  %12 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.netprio_map* @rtnl_dereference(i32 %18)
  store %struct.netprio_map* %19, %struct.netprio_map** %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %3
  %23 = load %struct.netprio_map*, %struct.netprio_map** %8, align 8
  %24 = icmp ne %struct.netprio_map* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.netprio_map*, %struct.netprio_map** %8, align 8
  %27 = getelementptr inbounds %struct.netprio_map, %struct.netprio_map* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %22
  store i32 0, i32* %4, align 4
  br label %52

32:                                               ; preds = %25, %3
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @extend_netdev_table(%struct.net_device* %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %52

40:                                               ; preds = %32
  %41 = load %struct.net_device*, %struct.net_device** %6, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.netprio_map* @rtnl_dereference(i32 %43)
  store %struct.netprio_map* %44, %struct.netprio_map** %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.netprio_map*, %struct.netprio_map** %8, align 8
  %47 = getelementptr inbounds %struct.netprio_map, %struct.netprio_map* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  store i64 %45, i64* %51, align 8
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %40, %38, %31
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.netprio_map* @rtnl_dereference(i32) #1

declare dso_local i32 @extend_netdev_table(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

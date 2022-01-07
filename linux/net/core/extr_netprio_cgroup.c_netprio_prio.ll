; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_netprio_cgroup.c_netprio_prio.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_netprio_cgroup.c_netprio_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.netprio_map = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup_subsys_state*, %struct.net_device*)* @netprio_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netprio_prio(%struct.cgroup_subsys_state* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cgroup_subsys_state*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.netprio_map*, align 8
  %7 = alloca i32, align 4
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.netprio_map* @rcu_dereference_rtnl(i32 %10)
  store %struct.netprio_map* %11, %struct.netprio_map** %6, align 8
  %12 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %13 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.netprio_map*, %struct.netprio_map** %6, align 8
  %18 = icmp ne %struct.netprio_map* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.netprio_map*, %struct.netprio_map** %6, align 8
  %22 = getelementptr inbounds %struct.netprio_map, %struct.netprio_map* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.netprio_map*, %struct.netprio_map** %6, align 8
  %27 = getelementptr inbounds %struct.netprio_map, %struct.netprio_map* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %25
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.netprio_map* @rcu_dereference_rtnl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

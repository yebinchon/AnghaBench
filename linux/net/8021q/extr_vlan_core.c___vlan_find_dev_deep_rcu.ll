; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan_core.c___vlan_find_dev_deep_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan_core.c___vlan_find_dev_deep_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vlan_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @__vlan_find_dev_deep_rcu(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vlan_info*, align 8
  %9 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.vlan_info* @rcu_dereference(i32 %12)
  store %struct.vlan_info* %13, %struct.vlan_info** %8, align 8
  %14 = load %struct.vlan_info*, %struct.vlan_info** %8, align 8
  %15 = icmp ne %struct.vlan_info* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.vlan_info*, %struct.vlan_info** %8, align 8
  %18 = getelementptr inbounds %struct.vlan_info, %struct.vlan_info* %17, i32 0, i32 0
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.net_device* @vlan_group_get_device(i32* %18, i32 %19, i32 %20)
  store %struct.net_device* %21, %struct.net_device** %4, align 8
  br label %34

22:                                               ; preds = %3
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call %struct.net_device* @netdev_master_upper_dev_get_rcu(%struct.net_device* %23)
  store %struct.net_device* %24, %struct.net_device** %9, align 8
  %25 = load %struct.net_device*, %struct.net_device** %9, align 8
  %26 = icmp ne %struct.net_device* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.net_device*, %struct.net_device** %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call %struct.net_device* @__vlan_find_dev_deep_rcu(%struct.net_device* %28, i32 %29, i32 %30)
  store %struct.net_device* %31, %struct.net_device** %4, align 8
  br label %34

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32
  store %struct.net_device* null, %struct.net_device** %4, align 8
  br label %34

34:                                               ; preds = %33, %27, %16
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  ret %struct.net_device* %35
}

declare dso_local %struct.vlan_info* @rcu_dereference(i32) #1

declare dso_local %struct.net_device* @vlan_group_get_device(i32*, i32, i32) #1

declare dso_local %struct.net_device* @netdev_master_upper_dev_get_rcu(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_br_vlan_put_master.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_br_vlan_put_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_vlan = type { i32, i32, i32, i32 }
%struct.net_bridge_vlan_group = type { i32 }

@br_vlan_rht_params = common dso_local global i32 0, align 4
@br_master_vlan_rcu_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge_vlan*)* @br_vlan_put_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_vlan_put_master(%struct.net_bridge_vlan* %0) #0 {
  %2 = alloca %struct.net_bridge_vlan*, align 8
  %3 = alloca %struct.net_bridge_vlan_group*, align 8
  store %struct.net_bridge_vlan* %0, %struct.net_bridge_vlan** %2, align 8
  %4 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %2, align 8
  %5 = call i32 @br_vlan_is_master(%struct.net_bridge_vlan* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %30

8:                                                ; preds = %1
  %9 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %2, align 8
  %10 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.net_bridge_vlan_group* @br_vlan_group(i32 %11)
  store %struct.net_bridge_vlan_group* %12, %struct.net_bridge_vlan_group** %3, align 8
  %13 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %2, align 8
  %14 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %13, i32 0, i32 2
  %15 = call i64 @refcount_dec_and_test(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %8
  %18 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %3, align 8
  %19 = getelementptr inbounds %struct.net_bridge_vlan_group, %struct.net_bridge_vlan_group* %18, i32 0, i32 0
  %20 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %2, align 8
  %21 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %20, i32 0, i32 1
  %22 = load i32, i32* @br_vlan_rht_params, align 4
  %23 = call i32 @rhashtable_remove_fast(i32* %19, i32* %21, i32 %22)
  %24 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %2, align 8
  %25 = call i32 @__vlan_del_list(%struct.net_bridge_vlan* %24)
  %26 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %2, align 8
  %27 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %26, i32 0, i32 0
  %28 = load i32, i32* @br_master_vlan_rcu_free, align 4
  %29 = call i32 @call_rcu(i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %7, %17, %8
  ret void
}

declare dso_local i32 @br_vlan_is_master(%struct.net_bridge_vlan*) #1

declare dso_local %struct.net_bridge_vlan_group* @br_vlan_group(i32) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @__vlan_del_list(%struct.net_bridge_vlan*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

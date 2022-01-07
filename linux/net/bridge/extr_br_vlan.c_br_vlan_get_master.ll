; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_br_vlan_get_master.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_br_vlan_get_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_vlan = type { i32 }
%struct.net_bridge = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net_bridge_vlan_group = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_bridge_vlan* (%struct.net_bridge*, i32, %struct.netlink_ext_ack*)* @br_vlan_get_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_bridge_vlan* @br_vlan_get_master(%struct.net_bridge* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.net_bridge_vlan*, align 8
  %5 = alloca %struct.net_bridge*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net_bridge_vlan_group*, align 8
  %9 = alloca %struct.net_bridge_vlan*, align 8
  %10 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %11 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %12 = call %struct.net_bridge_vlan_group* @br_vlan_group(%struct.net_bridge* %11)
  store %struct.net_bridge_vlan_group* %12, %struct.net_bridge_vlan_group** %8, align 8
  %13 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.net_bridge_vlan* @br_vlan_find(%struct.net_bridge_vlan_group* %13, i32 %14)
  store %struct.net_bridge_vlan* %15, %struct.net_bridge_vlan** %9, align 8
  %16 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %9, align 8
  %17 = icmp ne %struct.net_bridge_vlan* %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %3
  %19 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %22 = call i64 @br_vlan_add(%struct.net_bridge* %19, i32 %20, i32 0, i32* %10, %struct.netlink_ext_ack* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store %struct.net_bridge_vlan* null, %struct.net_bridge_vlan** %4, align 8
  br label %46

25:                                               ; preds = %18
  %26 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.net_bridge_vlan* @br_vlan_find(%struct.net_bridge_vlan_group* %26, i32 %27)
  store %struct.net_bridge_vlan* %28, %struct.net_bridge_vlan** %9, align 8
  %29 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %9, align 8
  %30 = icmp ne %struct.net_bridge_vlan* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store %struct.net_bridge_vlan* null, %struct.net_bridge_vlan** %4, align 8
  br label %46

36:                                               ; preds = %25
  %37 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %9, align 8
  %38 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %37, i32 0, i32 0
  %39 = call i32 @refcount_set(i32* %38, i32 1)
  %40 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %9, align 8
  store %struct.net_bridge_vlan* %40, %struct.net_bridge_vlan** %4, align 8
  br label %46

41:                                               ; preds = %3
  %42 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %9, align 8
  %43 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %42, i32 0, i32 0
  %44 = call i32 @refcount_inc(i32* %43)
  %45 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %9, align 8
  store %struct.net_bridge_vlan* %45, %struct.net_bridge_vlan** %4, align 8
  br label %46

46:                                               ; preds = %41, %36, %35, %24
  %47 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %4, align 8
  ret %struct.net_bridge_vlan* %47
}

declare dso_local %struct.net_bridge_vlan_group* @br_vlan_group(%struct.net_bridge*) #1

declare dso_local %struct.net_bridge_vlan* @br_vlan_find(%struct.net_bridge_vlan_group*, i32) #1

declare dso_local i64 @br_vlan_add(%struct.net_bridge*, i32, i32, i32*, %struct.netlink_ext_ack*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @refcount_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

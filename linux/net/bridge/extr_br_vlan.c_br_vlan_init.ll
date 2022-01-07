; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_br_vlan_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_br_vlan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32, i32, i32 }
%struct.net_bridge_vlan_group = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@br_vlan_rht_params = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_vlan_init(%struct.net_bridge* %0) #0 {
  %2 = alloca %struct.net_bridge*, align 8
  %3 = alloca %struct.net_bridge_vlan_group*, align 8
  %4 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %2, align 8
  %5 = load i32, i32* @ENOMEM, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.net_bridge_vlan_group* @kzalloc(i32 8, i32 %7)
  store %struct.net_bridge_vlan_group* %8, %struct.net_bridge_vlan_group** %3, align 8
  %9 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %3, align 8
  %10 = icmp ne %struct.net_bridge_vlan_group* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %3, align 8
  %14 = getelementptr inbounds %struct.net_bridge_vlan_group, %struct.net_bridge_vlan_group* %13, i32 0, i32 0
  %15 = call i32 @rhashtable_init(i32* %14, i32* @br_vlan_rht_params)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %46

19:                                               ; preds = %12
  %20 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %3, align 8
  %21 = call i32 @vlan_tunnel_init(%struct.net_bridge_vlan_group* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %42

25:                                               ; preds = %19
  %26 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %3, align 8
  %27 = getelementptr inbounds %struct.net_bridge_vlan_group, %struct.net_bridge_vlan_group* %26, i32 0, i32 1
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load i32, i32* @ETH_P_8021Q, align 4
  %30 = call i32 @htons(i32 %29)
  %31 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %32 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %34 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %36 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %3, align 8
  %39 = call i32 @rcu_assign_pointer(i32 %37, %struct.net_bridge_vlan_group* %38)
  br label %40

40:                                               ; preds = %46, %25, %11
  %41 = load i32, i32* %4, align 4
  ret i32 %41

42:                                               ; preds = %24
  %43 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %3, align 8
  %44 = getelementptr inbounds %struct.net_bridge_vlan_group, %struct.net_bridge_vlan_group* %43, i32 0, i32 0
  %45 = call i32 @rhashtable_destroy(i32* %44)
  br label %46

46:                                               ; preds = %42, %18
  %47 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %3, align 8
  %48 = call i32 @kfree(%struct.net_bridge_vlan_group* %47)
  br label %40
}

declare dso_local %struct.net_bridge_vlan_group* @kzalloc(i32, i32) #1

declare dso_local i32 @rhashtable_init(i32*, i32*) #1

declare dso_local i32 @vlan_tunnel_init(%struct.net_bridge_vlan_group*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.net_bridge_vlan_group*) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.net_bridge_vlan_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_br_should_learn.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_br_should_learn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { %struct.net_bridge* }
%struct.net_bridge = type { i64 }
%struct.sk_buff = type { i64 }
%struct.net_bridge_vlan_group = type { i32 }

@BROPT_VLAN_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_should_learn(%struct.net_bridge_port* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_bridge_port*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.net_bridge_vlan_group*, align 8
  %9 = alloca %struct.net_bridge*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %11 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %10, i32 0, i32 0
  %12 = load %struct.net_bridge*, %struct.net_bridge** %11, align 8
  store %struct.net_bridge* %12, %struct.net_bridge** %9, align 8
  %13 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %14 = load i32, i32* @BROPT_VLAN_ENABLED, align 4
  %15 = call i32 @br_opt_get(%struct.net_bridge* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %65

18:                                               ; preds = %3
  %19 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %20 = call %struct.net_bridge_vlan_group* @nbp_vlan_group_rcu(%struct.net_bridge_port* %19)
  store %struct.net_bridge_vlan_group* %20, %struct.net_bridge_vlan_group** %8, align 8
  %21 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %8, align 8
  %22 = icmp ne %struct.net_bridge_vlan_group* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %8, align 8
  %25 = getelementptr inbounds %struct.net_bridge_vlan_group, %struct.net_bridge_vlan_group* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %18
  store i32 0, i32* %4, align 4
  br label %65

29:                                               ; preds = %23
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @br_vlan_get_tag(%struct.sk_buff* %30, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %39 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32*, i32** %7, align 8
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %42, %34, %29
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %8, align 8
  %50 = call i32 @br_get_pvid(%struct.net_bridge_vlan_group* %49)
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %65

56:                                               ; preds = %48
  store i32 1, i32* %4, align 4
  br label %65

57:                                               ; preds = %44
  %58 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %8, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @br_vlan_find(%struct.net_bridge_vlan_group* %58, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 1, i32* %4, align 4
  br label %65

64:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %63, %56, %55, %28, %17
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @br_opt_get(%struct.net_bridge*, i32) #1

declare dso_local %struct.net_bridge_vlan_group* @nbp_vlan_group_rcu(%struct.net_bridge_port*) #1

declare dso_local i32 @br_vlan_get_tag(%struct.sk_buff*, i32*) #1

declare dso_local i32 @br_get_pvid(%struct.net_bridge_vlan_group*) #1

declare dso_local i64 @br_vlan_find(%struct.net_bridge_vlan_group*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

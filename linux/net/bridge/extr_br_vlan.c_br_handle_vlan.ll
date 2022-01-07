; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_br_handle_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_br_handle_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.net_bridge_port = type { i32 }
%struct.net_bridge_vlan_group = type { i32 }
%struct.sk_buff = type { i64, %struct.TYPE_3__* }
%struct.br_vlan_stats = type { i32, i32, i32 }
%struct.net_bridge_vlan = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@BROPT_VLAN_STATS_ENABLED = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_UNTAGGED = common dso_local global i32 0, align 4
@BR_VLAN_TUNNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @br_handle_vlan(%struct.net_bridge* %0, %struct.net_bridge_port* %1, %struct.net_bridge_vlan_group* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_bridge*, align 8
  %7 = alloca %struct.net_bridge_port*, align 8
  %8 = alloca %struct.net_bridge_vlan_group*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.br_vlan_stats*, align 8
  %11 = alloca %struct.net_bridge_vlan*, align 8
  %12 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %6, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %7, align 8
  store %struct.net_bridge_vlan_group* %2, %struct.net_bridge_vlan_group** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %14 = call %struct.TYPE_4__* @BR_INPUT_SKB_CB(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %110

19:                                               ; preds = %4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = call i32 @br_vlan_get_tag(%struct.sk_buff* %20, i32* %12)
  %22 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %8, align 8
  %23 = load i32, i32* %12, align 4
  %24 = call %struct.net_bridge_vlan* @br_vlan_find(%struct.net_bridge_vlan_group* %22, i32 %23)
  store %struct.net_bridge_vlan* %24, %struct.net_bridge_vlan** %11, align 8
  %25 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %11, align 8
  %26 = icmp ne %struct.net_bridge_vlan* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %11, align 8
  %29 = call i32 @br_vlan_should_use(%struct.net_bridge_vlan* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %27, %19
  %32 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %33 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IFF_PROMISC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %31
  %41 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %45 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = icmp eq %struct.TYPE_3__* %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %110

49:                                               ; preds = %40, %31
  %50 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %51 = call i32 @kfree_skb(%struct.sk_buff* %50)
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %112

52:                                               ; preds = %27
  %53 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %54 = load i32, i32* @BROPT_VLAN_STATS_ENABLED, align 4
  %55 = call i64 @br_opt_get(%struct.net_bridge* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %52
  %58 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %11, align 8
  %59 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.br_vlan_stats* @this_cpu_ptr(i32 %60)
  store %struct.br_vlan_stats* %61, %struct.br_vlan_stats** %10, align 8
  %62 = load %struct.br_vlan_stats*, %struct.br_vlan_stats** %10, align 8
  %63 = getelementptr inbounds %struct.br_vlan_stats, %struct.br_vlan_stats* %62, i32 0, i32 0
  %64 = call i32 @u64_stats_update_begin(i32* %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.br_vlan_stats*, %struct.br_vlan_stats** %10, align 8
  %69 = getelementptr inbounds %struct.br_vlan_stats, %struct.br_vlan_stats* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 4
  %74 = load %struct.br_vlan_stats*, %struct.br_vlan_stats** %10, align 8
  %75 = getelementptr inbounds %struct.br_vlan_stats, %struct.br_vlan_stats* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.br_vlan_stats*, %struct.br_vlan_stats** %10, align 8
  %79 = getelementptr inbounds %struct.br_vlan_stats, %struct.br_vlan_stats* %78, i32 0, i32 0
  %80 = call i32 @u64_stats_update_end(i32* %79)
  br label %81

81:                                               ; preds = %57, %52
  %82 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %11, align 8
  %83 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @BRIDGE_VLAN_INFO_UNTAGGED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %90 = call i32 @__vlan_hwaccel_clear_tag(%struct.sk_buff* %89)
  br label %91

91:                                               ; preds = %88, %81
  %92 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %93 = icmp ne %struct.net_bridge_port* %92, null
  br i1 %93, label %94, label %109

94:                                               ; preds = %91
  %95 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %96 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @BR_VLAN_TUNNEL, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %94
  %102 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %103 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %11, align 8
  %104 = call i64 @br_handle_egress_vlan_tunnel(%struct.sk_buff* %102, %struct.net_bridge_vlan* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %108 = call i32 @kfree_skb(%struct.sk_buff* %107)
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %112

109:                                              ; preds = %101, %94, %91
  br label %110

110:                                              ; preds = %109, %48, %18
  %111 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %111, %struct.sk_buff** %5, align 8
  br label %112

112:                                              ; preds = %110, %106, %49
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %113
}

declare dso_local %struct.TYPE_4__* @BR_INPUT_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @br_vlan_get_tag(%struct.sk_buff*, i32*) #1

declare dso_local %struct.net_bridge_vlan* @br_vlan_find(%struct.net_bridge_vlan_group*, i32) #1

declare dso_local i32 @br_vlan_should_use(%struct.net_bridge_vlan*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @br_opt_get(%struct.net_bridge*, i32) #1

declare dso_local %struct.br_vlan_stats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @__vlan_hwaccel_clear_tag(%struct.sk_buff*) #1

declare dso_local i64 @br_handle_egress_vlan_tunnel(%struct.sk_buff*, %struct.net_bridge_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

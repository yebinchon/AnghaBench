; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_dp_process_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_dp_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sw_flow_key = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vport = type { %struct.datapath* }
%struct.datapath = type { i32, i32 }
%struct.sw_flow = type { i32 }
%struct.sw_flow_actions = type { i32 }
%struct.dp_stats_percpu = type { i32, i32, i32, i32 }
%struct.dp_upcall_info = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.vport* }

@OVS_PACKET_CMD_MISS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"ovs: action execution error on datapath %s: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ovs_dp_process_packet(%struct.sk_buff* %0, %struct.sw_flow_key* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sw_flow_key*, align 8
  %5 = alloca %struct.vport*, align 8
  %6 = alloca %struct.datapath*, align 8
  %7 = alloca %struct.sw_flow*, align 8
  %8 = alloca %struct.sw_flow_actions*, align 8
  %9 = alloca %struct.dp_stats_percpu*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dp_upcall_info, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call %struct.TYPE_4__* @OVS_CB(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.vport*, %struct.vport** %16, align 8
  store %struct.vport* %17, %struct.vport** %5, align 8
  %18 = load %struct.vport*, %struct.vport** %5, align 8
  %19 = getelementptr inbounds %struct.vport, %struct.vport* %18, i32 0, i32 0
  %20 = load %struct.datapath*, %struct.datapath** %19, align 8
  store %struct.datapath* %20, %struct.datapath** %6, align 8
  %21 = load %struct.datapath*, %struct.datapath** %6, align 8
  %22 = getelementptr inbounds %struct.datapath, %struct.datapath* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.dp_stats_percpu* @this_cpu_ptr(i32 %23)
  store %struct.dp_stats_percpu* %24, %struct.dp_stats_percpu** %9, align 8
  %25 = load %struct.datapath*, %struct.datapath** %6, align 8
  %26 = getelementptr inbounds %struct.datapath, %struct.datapath* %25, i32 0, i32 0
  %27 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %28 = call %struct.sw_flow* @ovs_flow_tbl_lookup_stats(i32* %26, %struct.sw_flow_key* %27, i64* %11)
  store %struct.sw_flow* %28, %struct.sw_flow** %7, align 8
  %29 = load %struct.sw_flow*, %struct.sw_flow** %7, align 8
  %30 = icmp ne %struct.sw_flow* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %2
  %36 = call i32 @memset(%struct.dp_upcall_info* %13, i32 0, i32 12)
  %37 = load i32, i32* @OVS_PACKET_CMD_MISS, align 4
  %38 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %13, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load %struct.vport*, %struct.vport** %5, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = call i32 @ovs_vport_find_upcall_portid(%struct.vport* %39, %struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %13, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = call %struct.TYPE_4__* @OVS_CB(%struct.sk_buff* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %13, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load %struct.datapath*, %struct.datapath** %6, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %51 = call i32 @ovs_dp_upcall(%struct.datapath* %48, %struct.sk_buff* %49, %struct.sw_flow_key* %50, %struct.dp_upcall_info* %13, i32 0)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %35
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = call i32 @kfree_skb(%struct.sk_buff* %56)
  br label %61

58:                                               ; preds = %35
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = call i32 @consume_skb(%struct.sk_buff* %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.dp_stats_percpu*, %struct.dp_stats_percpu** %9, align 8
  %63 = getelementptr inbounds %struct.dp_stats_percpu, %struct.dp_stats_percpu* %62, i32 0, i32 3
  store i32* %63, i32** %10, align 8
  br label %92

64:                                               ; preds = %2
  %65 = load %struct.sw_flow*, %struct.sw_flow** %7, align 8
  %66 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %67 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %71 = call i32 @ovs_flow_stats_update(%struct.sw_flow* %65, i32 %69, %struct.sk_buff* %70)
  %72 = load %struct.sw_flow*, %struct.sw_flow** %7, align 8
  %73 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.sw_flow_actions* @rcu_dereference(i32 %74)
  store %struct.sw_flow_actions* %75, %struct.sw_flow_actions** %8, align 8
  %76 = load %struct.datapath*, %struct.datapath** %6, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %78 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %8, align 8
  %79 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %80 = call i32 @ovs_execute_actions(%struct.datapath* %76, %struct.sk_buff* %77, %struct.sw_flow_actions* %78, %struct.sw_flow_key* %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %64
  %85 = load %struct.datapath*, %struct.datapath** %6, align 8
  %86 = call i32 @ovs_dp_name(%struct.datapath* %85)
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %64
  %90 = load %struct.dp_stats_percpu*, %struct.dp_stats_percpu** %9, align 8
  %91 = getelementptr inbounds %struct.dp_stats_percpu, %struct.dp_stats_percpu* %90, i32 0, i32 2
  store i32* %91, i32** %10, align 8
  br label %92

92:                                               ; preds = %89, %61
  %93 = load %struct.dp_stats_percpu*, %struct.dp_stats_percpu** %9, align 8
  %94 = getelementptr inbounds %struct.dp_stats_percpu, %struct.dp_stats_percpu* %93, i32 0, i32 0
  %95 = call i32 @u64_stats_update_begin(i32* %94)
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load i64, i64* %11, align 8
  %100 = load %struct.dp_stats_percpu*, %struct.dp_stats_percpu** %9, align 8
  %101 = getelementptr inbounds %struct.dp_stats_percpu, %struct.dp_stats_percpu* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %99
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 4
  %106 = load %struct.dp_stats_percpu*, %struct.dp_stats_percpu** %9, align 8
  %107 = getelementptr inbounds %struct.dp_stats_percpu, %struct.dp_stats_percpu* %106, i32 0, i32 0
  %108 = call i32 @u64_stats_update_end(i32* %107)
  ret void
}

declare dso_local %struct.TYPE_4__* @OVS_CB(%struct.sk_buff*) #1

declare dso_local %struct.dp_stats_percpu* @this_cpu_ptr(i32) #1

declare dso_local %struct.sw_flow* @ovs_flow_tbl_lookup_stats(i32*, %struct.sw_flow_key*, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.dp_upcall_info*, i32, i32) #1

declare dso_local i32 @ovs_vport_find_upcall_portid(%struct.vport*, %struct.sk_buff*) #1

declare dso_local i32 @ovs_dp_upcall(%struct.datapath*, %struct.sk_buff*, %struct.sw_flow_key*, %struct.dp_upcall_info*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @ovs_flow_stats_update(%struct.sw_flow*, i32, %struct.sk_buff*) #1

declare dso_local %struct.sw_flow_actions* @rcu_dereference(i32) #1

declare dso_local i32 @ovs_execute_actions(%struct.datapath*, %struct.sk_buff*, %struct.sw_flow_actions*, %struct.sw_flow_key*) #1

declare dso_local i32 @net_dbg_ratelimited(i8*, i32, i32) #1

declare dso_local i32 @ovs_dp_name(%struct.datapath*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

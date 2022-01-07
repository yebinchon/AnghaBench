; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_dp_upcall.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_dp_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datapath = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sw_flow_key = type { i32 }
%struct.dp_upcall_info = type { i64 }
%struct.dp_stats_percpu = type { i32, i32 }

@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_dp_upcall(%struct.datapath* %0, %struct.sk_buff* %1, %struct.sw_flow_key* %2, %struct.dp_upcall_info* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.datapath*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sw_flow_key*, align 8
  %10 = alloca %struct.dp_upcall_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dp_stats_percpu*, align 8
  %13 = alloca i32, align 4
  store %struct.datapath* %0, %struct.datapath** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.sw_flow_key* %2, %struct.sw_flow_key** %9, align 8
  store %struct.dp_upcall_info* %3, %struct.dp_upcall_info** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %10, align 8
  %15 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOTCONN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %13, align 4
  br label %44

21:                                               ; preds = %5
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = call i32 @skb_is_gso(%struct.sk_buff* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load %struct.datapath*, %struct.datapath** %7, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %29 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @queue_userspace_packet(%struct.datapath* %26, %struct.sk_buff* %27, %struct.sw_flow_key* %28, %struct.dp_upcall_info* %29, i32 %30)
  store i32 %31, i32* %13, align 4
  br label %39

32:                                               ; preds = %21
  %33 = load %struct.datapath*, %struct.datapath** %7, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %36 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @queue_gso_packets(%struct.datapath* %33, %struct.sk_buff* %34, %struct.sw_flow_key* %35, %struct.dp_upcall_info* %36, i32 %37)
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %32, %25
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %44

43:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %60

44:                                               ; preds = %42, %18
  %45 = load %struct.datapath*, %struct.datapath** %7, align 8
  %46 = getelementptr inbounds %struct.datapath, %struct.datapath* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.dp_stats_percpu* @this_cpu_ptr(i32 %47)
  store %struct.dp_stats_percpu* %48, %struct.dp_stats_percpu** %12, align 8
  %49 = load %struct.dp_stats_percpu*, %struct.dp_stats_percpu** %12, align 8
  %50 = getelementptr inbounds %struct.dp_stats_percpu, %struct.dp_stats_percpu* %49, i32 0, i32 0
  %51 = call i32 @u64_stats_update_begin(i32* %50)
  %52 = load %struct.dp_stats_percpu*, %struct.dp_stats_percpu** %12, align 8
  %53 = getelementptr inbounds %struct.dp_stats_percpu, %struct.dp_stats_percpu* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.dp_stats_percpu*, %struct.dp_stats_percpu** %12, align 8
  %57 = getelementptr inbounds %struct.dp_stats_percpu, %struct.dp_stats_percpu* %56, i32 0, i32 0
  %58 = call i32 @u64_stats_update_end(i32* %57)
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %44, %43
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @queue_userspace_packet(%struct.datapath*, %struct.sk_buff*, %struct.sw_flow_key*, %struct.dp_upcall_info*, i32) #1

declare dso_local i32 @queue_gso_packets(%struct.datapath*, %struct.sk_buff*, %struct.sw_flow_key*, %struct.dp_upcall_info*, i32) #1

declare dso_local %struct.dp_stats_percpu* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

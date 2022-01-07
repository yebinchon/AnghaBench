; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_next_sync_buff.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_next_sync_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_sync_buff = type { i32 }
%struct.netns_ipvs = type { i32 }
%struct.ipvs_master_sync_state = type { i32 }

@IPVS_SYNC_FLUSH_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_vs_sync_buff* (%struct.netns_ipvs*, %struct.ipvs_master_sync_state*)* @next_sync_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_vs_sync_buff* @next_sync_buff(%struct.netns_ipvs* %0, %struct.ipvs_master_sync_state* %1) #0 {
  %3 = alloca %struct.ip_vs_sync_buff*, align 8
  %4 = alloca %struct.netns_ipvs*, align 8
  %5 = alloca %struct.ipvs_master_sync_state*, align 8
  %6 = alloca %struct.ip_vs_sync_buff*, align 8
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %4, align 8
  store %struct.ipvs_master_sync_state* %1, %struct.ipvs_master_sync_state** %5, align 8
  %7 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %8 = load %struct.ipvs_master_sync_state*, %struct.ipvs_master_sync_state** %5, align 8
  %9 = call %struct.ip_vs_sync_buff* @sb_dequeue(%struct.netns_ipvs* %7, %struct.ipvs_master_sync_state* %8)
  store %struct.ip_vs_sync_buff* %9, %struct.ip_vs_sync_buff** %6, align 8
  %10 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %6, align 8
  %11 = icmp ne %struct.ip_vs_sync_buff* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %6, align 8
  store %struct.ip_vs_sync_buff* %13, %struct.ip_vs_sync_buff** %3, align 8
  br label %19

14:                                               ; preds = %2
  %15 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %16 = load %struct.ipvs_master_sync_state*, %struct.ipvs_master_sync_state** %5, align 8
  %17 = load i32, i32* @IPVS_SYNC_FLUSH_TIME, align 4
  %18 = call %struct.ip_vs_sync_buff* @get_curr_sync_buff(%struct.netns_ipvs* %15, %struct.ipvs_master_sync_state* %16, i32 %17)
  store %struct.ip_vs_sync_buff* %18, %struct.ip_vs_sync_buff** %3, align 8
  br label %19

19:                                               ; preds = %14, %12
  %20 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %3, align 8
  ret %struct.ip_vs_sync_buff* %20
}

declare dso_local %struct.ip_vs_sync_buff* @sb_dequeue(%struct.netns_ipvs*, %struct.ipvs_master_sync_state*) #1

declare dso_local %struct.ip_vs_sync_buff* @get_curr_sync_buff(%struct.netns_ipvs*, %struct.ipvs_master_sync_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

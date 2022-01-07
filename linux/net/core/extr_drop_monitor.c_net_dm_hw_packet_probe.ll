; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_net_dm_hw_packet_probe.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_net_dm_hw_packet_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_dm_hw_metadata = type { i32 }
%struct.per_cpu_dm_data = type { %struct.TYPE_5__, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.net_dm_hw_metadata* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@dm_hw_cpu_data = common dso_local global i32 0, align 4
@net_dm_queue_len = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.net_dm_hw_metadata*)* @net_dm_hw_packet_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net_dm_hw_packet_probe(%struct.sk_buff* %0, %struct.net_dm_hw_metadata* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_dm_hw_metadata*, align 8
  %5 = alloca %struct.net_dm_hw_metadata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.per_cpu_dm_data*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_dm_hw_metadata* %1, %struct.net_dm_hw_metadata** %4, align 8
  %10 = call i32 (...) @ktime_get_real()
  store i32 %10, i32* %6, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call i32 @skb_mac_header_was_set(%struct.sk_buff* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %86

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %16, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %8, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %86

22:                                               ; preds = %15
  %23 = load %struct.net_dm_hw_metadata*, %struct.net_dm_hw_metadata** %4, align 8
  %24 = call %struct.net_dm_hw_metadata* @net_dm_hw_metadata_clone(%struct.net_dm_hw_metadata* %23)
  store %struct.net_dm_hw_metadata* %24, %struct.net_dm_hw_metadata** %5, align 8
  %25 = load %struct.net_dm_hw_metadata*, %struct.net_dm_hw_metadata** %5, align 8
  %26 = icmp ne %struct.net_dm_hw_metadata* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %83

28:                                               ; preds = %22
  %29 = load %struct.net_dm_hw_metadata*, %struct.net_dm_hw_metadata** %5, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = call %struct.TYPE_7__* @NET_DM_SKB_CB(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store %struct.net_dm_hw_metadata* %29, %struct.net_dm_hw_metadata** %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = call %struct.per_cpu_dm_data* @this_cpu_ptr(i32* @dm_hw_cpu_data)
  store %struct.per_cpu_dm_data* %36, %struct.per_cpu_dm_data** %7, align 8
  %37 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %7, align 8
  %38 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %7, align 8
  %43 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %42, i32 0, i32 1
  %44 = call i64 @skb_queue_len(%struct.TYPE_6__* %43)
  %45 = load i64, i64* @net_dm_queue_len, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %28
  %48 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %7, align 8
  %49 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %48, i32 0, i32 1
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = call i32 @__skb_queue_tail(%struct.TYPE_6__* %49, %struct.sk_buff* %50)
  br label %53

52:                                               ; preds = %28
  br label %62

53:                                               ; preds = %47
  %54 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %7, align 8
  %55 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %7, align 8
  %60 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %59, i32 0, i32 2
  %61 = call i32 @schedule_work(i32* %60)
  br label %86

62:                                               ; preds = %52
  %63 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %7, align 8
  %64 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %7, align 8
  %69 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = call i32 @u64_stats_update_begin(i32* %70)
  %72 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %7, align 8
  %73 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %7, align 8
  %78 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = call i32 @u64_stats_update_end(i32* %79)
  %81 = load %struct.net_dm_hw_metadata*, %struct.net_dm_hw_metadata** %5, align 8
  %82 = call i32 @net_dm_hw_metadata_free(%struct.net_dm_hw_metadata* %81)
  br label %83

83:                                               ; preds = %62, %27
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = call i32 @consume_skb(%struct.sk_buff* %84)
  br label %86

86:                                               ; preds = %83, %53, %21, %14
  ret void
}

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @skb_mac_header_was_set(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local %struct.net_dm_hw_metadata* @net_dm_hw_metadata_clone(%struct.net_dm_hw_metadata*) #1

declare dso_local %struct.TYPE_7__* @NET_DM_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.per_cpu_dm_data* @this_cpu_ptr(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @skb_queue_len(%struct.TYPE_6__*) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_6__*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @net_dm_hw_metadata_free(%struct.net_dm_hw_metadata*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

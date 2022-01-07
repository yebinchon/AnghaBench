; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_net_dm_packet_trace_kfree_skb_hit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_net_dm_packet_trace_kfree_skb_hit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.per_cpu_dm_data = type { %struct.TYPE_5__, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@dm_cpu_data = common dso_local global i32 0, align 4
@net_dm_queue_len = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sk_buff*, i8*)* @net_dm_packet_trace_kfree_skb_hit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net_dm_packet_trace_kfree_skb_hit(i8* %0, %struct.sk_buff* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.per_cpu_dm_data*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = call i32 (...) @ktime_get_real()
  store i32 %11, i32* %7, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call i32 @skb_mac_header_was_set(%struct.sk_buff* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %78

16:                                               ; preds = %3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %17, i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %9, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %78

23:                                               ; preds = %16
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = call %struct.TYPE_7__* @NET_DM_SKB_CB(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = call %struct.per_cpu_dm_data* @this_cpu_ptr(i32* @dm_cpu_data)
  store %struct.per_cpu_dm_data* %31, %struct.per_cpu_dm_data** %8, align 8
  %32 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %8, align 8
  %33 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %8, align 8
  %38 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %37, i32 0, i32 1
  %39 = call i64 @skb_queue_len(%struct.TYPE_6__* %38)
  %40 = load i64, i64* @net_dm_queue_len, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %23
  %43 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %8, align 8
  %44 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %43, i32 0, i32 1
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %46 = call i32 @__skb_queue_tail(%struct.TYPE_6__* %44, %struct.sk_buff* %45)
  br label %48

47:                                               ; preds = %23
  br label %57

48:                                               ; preds = %42
  %49 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %8, align 8
  %50 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %8, align 8
  %55 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %54, i32 0, i32 2
  %56 = call i32 @schedule_work(i32* %55)
  br label %78

57:                                               ; preds = %47
  %58 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %8, align 8
  %59 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %8, align 8
  %64 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = call i32 @u64_stats_update_begin(i32* %65)
  %67 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %8, align 8
  %68 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %8, align 8
  %73 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = call i32 @u64_stats_update_end(i32* %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %77 = call i32 @consume_skb(%struct.sk_buff* %76)
  br label %78

78:                                               ; preds = %57, %48, %22, %15
  ret void
}

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @skb_mac_header_was_set(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_7__* @NET_DM_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.per_cpu_dm_data* @this_cpu_ptr(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @skb_queue_len(%struct.TYPE_6__*) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_6__*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

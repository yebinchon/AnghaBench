; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_metrics.c_tcp_peer_is_proven.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_metrics.c_tcp_peer_is_proven.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_sock = type { i32 }
%struct.dst_entry = type { i32 }
%struct.tcp_metrics_block = type { i32 }

@TCP_METRIC_RTT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_peer_is_proven(%struct.request_sock* %0, %struct.dst_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_sock*, align 8
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.tcp_metrics_block*, align 8
  %7 = alloca i32, align 4
  store %struct.request_sock* %0, %struct.request_sock** %4, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %5, align 8
  %8 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %9 = icmp ne %struct.dst_entry* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

11:                                               ; preds = %2
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %14 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %15 = call %struct.tcp_metrics_block* @__tcp_get_metrics_req(%struct.request_sock* %13, %struct.dst_entry* %14)
  store %struct.tcp_metrics_block* %15, %struct.tcp_metrics_block** %6, align 8
  %16 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %6, align 8
  %17 = icmp ne %struct.tcp_metrics_block* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %6, align 8
  %20 = load i32, i32* @TCP_METRIC_RTT, align 4
  %21 = call i64 @tcp_metric_get(%struct.tcp_metrics_block* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %7, align 4
  br label %25

24:                                               ; preds = %18, %11
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = call i32 (...) @rcu_read_unlock()
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %10
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tcp_metrics_block* @__tcp_get_metrics_req(%struct.request_sock*, %struct.dst_entry*) #1

declare dso_local i64 @tcp_metric_get(%struct.tcp_metrics_block*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

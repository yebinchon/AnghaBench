; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_metrics.c_tcpm_check_stamp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_metrics.c_tcpm_check_stamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_metrics_block = type { i64 }
%struct.dst_entry = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@TCP_METRICS_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_metrics_block*, %struct.dst_entry*)* @tcpm_check_stamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpm_check_stamp(%struct.tcp_metrics_block* %0, %struct.dst_entry* %1) #0 {
  %3 = alloca %struct.tcp_metrics_block*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  store %struct.tcp_metrics_block* %0, %struct.tcp_metrics_block** %3, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %4, align 8
  %5 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %3, align 8
  %6 = icmp ne %struct.tcp_metrics_block* %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = load i32, i32* @jiffies, align 4
  %9 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %3, align 8
  %10 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TCP_METRICS_TIMEOUT, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @time_after(i32 %8, i64 %13)
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %7
  %18 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %3, align 8
  %19 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %20 = call i32 @tcpm_suck_dst(%struct.tcp_metrics_block* %18, %struct.dst_entry* %19, i32 0)
  br label %21

21:                                               ; preds = %17, %7, %2
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @time_after(i32, i64) #1

declare dso_local i32 @tcpm_suck_dst(%struct.tcp_metrics_block*, %struct.dst_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

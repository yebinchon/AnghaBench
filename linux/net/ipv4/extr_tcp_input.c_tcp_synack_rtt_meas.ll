; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_synack_rtt_meas.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_synack_rtt_meas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.request_sock = type { i32 }
%struct.rate_sample = type { i32 }
%struct.TYPE_2__ = type { i64 }

@FLAG_SYN_ACKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_synack_rtt_meas(%struct.sock* %0, %struct.request_sock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.request_sock*, align 8
  %5 = alloca %struct.rate_sample, align 4
  %6 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.request_sock* %1, %struct.request_sock** %4, align 8
  store i64 -1, i64* %6, align 8
  %7 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %8 = icmp ne %struct.request_sock* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %11 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %9
  %15 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %16 = call %struct.TYPE_2__* @tcp_rsk(%struct.request_sock* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = call i32 (...) @tcp_clock_us()
  %22 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %23 = call %struct.TYPE_2__* @tcp_rsk(%struct.request_sock* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @tcp_stamp_us_delta(i32 %21, i64 %25)
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %20, %14, %9, %2
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = load i32, i32* @FLAG_SYN_ACKED, align 4
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @tcp_ack_update_rtt(%struct.sock* %28, i32 %29, i64 %30, i64 -1, i64 %31, %struct.rate_sample* %5)
  ret void
}

declare dso_local %struct.TYPE_2__* @tcp_rsk(%struct.request_sock*) #1

declare dso_local i64 @tcp_stamp_us_delta(i32, i64) #1

declare dso_local i32 @tcp_clock_us(...) #1

declare dso_local i32 @tcp_ack_update_rtt(%struct.sock*, i32, i64, i64, i64, %struct.rate_sample*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

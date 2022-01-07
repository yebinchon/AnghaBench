; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid3.c_ccid3_hc_rx_send_feedback.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid3.c_ccid3_hc_rx_send_feedback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ccid3_hc_rx_sock = type { i32, i64, i32, i32, i32 }
%struct.dccp_sock = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Interval %lldusec, X_recv=%u, 1/p=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*, i32)* @ccid3_hc_rx_send_feedback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid3_hc_rx_send_feedback(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccid3_hc_rx_sock*, align 8
  %8 = alloca %struct.dccp_sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.ccid3_hc_rx_sock* @ccid3_hc_rx_sk(%struct.sock* %11)
  store %struct.ccid3_hc_rx_sock* %12, %struct.ccid3_hc_rx_sock** %7, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %13)
  store %struct.dccp_sock* %14, %struct.dccp_sock** %8, align 8
  %15 = call i32 (...) @ktime_get()
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %46 [
    i32 130, label %17
    i32 129, label %22
    i32 128, label %29
  ]

17:                                               ; preds = %3
  %18 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %7, align 8
  %19 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %18, i32 0, i32 4
  store i32 0, i32* %19, align 8
  %20 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %7, align 8
  %21 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %20, i32 0, i32 0
  store i32 -1, i32* %21, align 8
  br label %47

22:                                               ; preds = %3
  %23 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %7, align 8
  %24 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %47

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %3, %28
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %7, align 8
  %32 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ktime_us_delta(i32 %30, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 1, i32* %10, align 4
  br label %38

38:                                               ; preds = %37, %29
  %39 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %7, align 8
  %40 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @scaled_div32(i64 %41, i32 %42)
  %44 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %7, align 8
  %45 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  br label %47

46:                                               ; preds = %3
  br label %71

47:                                               ; preds = %38, %27, %17
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %7, align 8
  %50 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %7, align 8
  %53 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ccid3_pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %7, align 8
  %58 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = call %struct.TYPE_2__* @dccp_hdr(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %7, align 8
  %64 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %7, align 8
  %66 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %68 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %67, i32 0, i32 0
  store i32 1, i32* %68, align 4
  %69 = load %struct.sock*, %struct.sock** %4, align 8
  %70 = call i32 @dccp_send_ack(%struct.sock* %69)
  br label %71

71:                                               ; preds = %47, %46
  ret void
}

declare dso_local %struct.ccid3_hc_rx_sock* @ccid3_hc_rx_sk(%struct.sock*) #1

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_us_delta(i32, i32) #1

declare dso_local i32 @scaled_div32(i64, i32) #1

declare dso_local i32 @ccid3_pr_debug(i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @dccp_send_ack(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_pacing_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_pacing_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64, i64, i32 }

@HRTIMER_MODE_ABS_PINNED_SOFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @tcp_pacing_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_pacing_check(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %5)
  store %struct.tcp_sock* %6, %struct.tcp_sock** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call i32 @tcp_needs_internal_pacing(%struct.sock* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

11:                                               ; preds = %1
  %12 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %13 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %16 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sle i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %37

20:                                               ; preds = %11
  %21 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %22 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %21, i32 0, i32 2
  %23 = call i32 @hrtimer_is_queued(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %20
  %26 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %27 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %26, i32 0, i32 2
  %28 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %29 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @ns_to_ktime(i64 %30)
  %32 = load i32, i32* @HRTIMER_MODE_ABS_PINNED_SOFT, align 4
  %33 = call i32 @hrtimer_start(i32* %27, i32 %31, i32 %32)
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = call i32 @sock_hold(%struct.sock* %34)
  br label %36

36:                                               ; preds = %25, %20
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %19, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_needs_internal_pacing(%struct.sock*) #1

declare dso_local i32 @hrtimer_is_queued(i32*) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i64) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

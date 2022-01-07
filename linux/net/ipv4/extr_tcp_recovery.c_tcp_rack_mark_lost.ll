; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_recovery.c_tcp_rack_mark_lost.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_recovery.c_tcp_rack_mark_lost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@TCP_TIMEOUT_MIN = common dso_local global i64 0, align 8
@ICSK_TIME_REO_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_rack_mark_lost(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %5)
  store %struct.tcp_sock* %6, %struct.tcp_sock** %3, align 8
  %7 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %8 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %34

13:                                               ; preds = %1
  %14 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %15 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.sock*, %struct.sock** %2, align 8
  %18 = call i32 @tcp_rack_detect_loss(%struct.sock* %17, i64* %4)
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %13
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @usecs_to_jiffies(i64 %22)
  %24 = load i64, i64* @TCP_TIMEOUT_MIN, align 8
  %25 = add nsw i64 %23, %24
  store i64 %25, i64* %4, align 8
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = load i32, i32* @ICSK_TIME_REO_TIMEOUT, align 4
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.sock*, %struct.sock** %2, align 8
  %30 = call %struct.TYPE_4__* @inet_csk(%struct.sock* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @inet_csk_reset_xmit_timer(%struct.sock* %26, i32 %27, i64 %28, i32 %32)
  br label %34

34:                                               ; preds = %12, %21, %13
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_rack_detect_loss(%struct.sock*, i64*) #1

declare dso_local i64 @usecs_to_jiffies(i64) #1

declare dso_local i32 @inet_csk_reset_xmit_timer(%struct.sock*, i32, i64, i32) #1

declare dso_local %struct.TYPE_4__* @inet_csk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

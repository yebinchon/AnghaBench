; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_recovery.c_tcp_rack_advance.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_recovery.c_tcp_rack_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sock = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i64 }

@TCPCB_RETRANS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_rack_advance(%struct.tcp_sock* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.tcp_sock* %0, %struct.tcp_sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %11 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @tcp_stamp_us_delta(i32 %12, i32 %13)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %17 = call i64 @tcp_min_rtt(%struct.tcp_sock* %16)
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @TCPCB_RETRANS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %54

25:                                               ; preds = %19, %4
  %26 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %27 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  store i64 %29, i64* %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %35 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %40 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @tcp_rack_sent_after(i32 %33, i32 %37, i64 %38, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %25
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %48 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %52 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i64 %50, i64* %53, align 8
  br label %54

54:                                               ; preds = %24, %45, %25
  ret void
}

declare dso_local i64 @tcp_stamp_us_delta(i32, i32) #1

declare dso_local i64 @tcp_min_rtt(%struct.tcp_sock*) #1

declare dso_local i64 @tcp_rack_sent_after(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

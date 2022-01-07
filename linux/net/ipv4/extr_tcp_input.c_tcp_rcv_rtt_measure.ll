; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_rcv_rtt_measure.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_rcv_rtt_measure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sock = type { i64, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_sock*)* @tcp_rcv_rtt_measure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_rcv_rtt_measure(%struct.tcp_sock* %0) #0 {
  %2 = alloca %struct.tcp_sock*, align 8
  %3 = alloca i32, align 4
  store %struct.tcp_sock* %0, %struct.tcp_sock** %2, align 8
  %4 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %5 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %37

10:                                               ; preds = %1
  %11 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %12 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %15 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @before(i64 %13, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %54

21:                                               ; preds = %10
  %22 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %23 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %26 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @tcp_stamp_us_delta(i64 %24, i64 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %21
  %34 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @tcp_rcv_rtt_update(%struct.tcp_sock* %34, i32 %35, i32 1)
  br label %37

37:                                               ; preds = %33, %9
  %38 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %39 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %42 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %46 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i64 %44, i64* %47, align 8
  %48 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %49 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %52 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  br label %54

54:                                               ; preds = %37, %20
  ret void
}

declare dso_local i64 @before(i64, i64) #1

declare dso_local i32 @tcp_stamp_us_delta(i64, i64) #1

declare dso_local i32 @tcp_rcv_rtt_update(%struct.tcp_sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

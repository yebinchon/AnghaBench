; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_rate.c_tcp_rate_check_app_limited.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_rate.c_tcp_rate_check_app_limited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64, i64, i64, i64, i64, i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_rate_check_app_limited(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %4)
  store %struct.tcp_sock* %5, %struct.tcp_sock** %3, align 8
  %6 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %7 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %10 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %8, %11
  %13 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %14 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %1
  %18 = load %struct.sock*, %struct.sock** %2, align 8
  %19 = call i64 @sk_wmem_alloc_get(%struct.sock* %18)
  %20 = call i64 @SKB_TRUESIZE(i32 1)
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %17
  %23 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %24 = call i64 @tcp_packets_in_flight(%struct.tcp_sock* %23)
  %25 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %26 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %22
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %34 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp sle i64 %32, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %29
  %38 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %39 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %38, i32 0, i32 7
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %42 = call i64 @tcp_packets_in_flight(%struct.tcp_sock* %41)
  %43 = add nsw i64 %40, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %47

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %45
  %48 = phi i64 [ %43, %45 ], [ 1, %46 ]
  %49 = trunc i64 %48 to i32
  %50 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %51 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %47, %29, %22, %17, %1
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @sk_wmem_alloc_get(%struct.sock*) #1

declare dso_local i64 @SKB_TRUESIZE(i32) #1

declare dso_local i64 @tcp_packets_in_flight(%struct.tcp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

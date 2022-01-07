; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_ack_update_rtt.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_ack_update_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rate_sample = type { i64 }
%struct.tcp_sock = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

@FLAG_ACKED = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@USEC_PER_SEC = common dso_local global i64 0, align 8
@TCP_TS_HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32, i64, i64, i64, %struct.rate_sample*)* @tcp_ack_update_rtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_ack_update_rtt(%struct.sock* %0, i32 %1, i64 %2, i64 %3, i64 %4, %struct.rate_sample* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.rate_sample*, align 8
  %14 = alloca %struct.tcp_sock*, align 8
  %15 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.rate_sample* %5, %struct.rate_sample** %13, align 8
  %16 = load %struct.sock*, %struct.sock** %8, align 8
  %17 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %16)
  store %struct.tcp_sock* %17, %struct.tcp_sock** %14, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i64, i64* %11, align 8
  store i64 %21, i64* %10, align 8
  br label %22

22:                                               ; preds = %20, %6
  %23 = load i64, i64* %10, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %68

25:                                               ; preds = %22
  %26 = load %struct.tcp_sock*, %struct.tcp_sock** %14, align 8
  %27 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %68

31:                                               ; preds = %25
  %32 = load %struct.tcp_sock*, %struct.tcp_sock** %14, align 8
  %33 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @FLAG_ACKED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %37
  %43 = load %struct.tcp_sock*, %struct.tcp_sock** %14, align 8
  %44 = call i64 @tcp_time_stamp(%struct.tcp_sock* %43)
  %45 = load %struct.tcp_sock*, %struct.tcp_sock** %14, align 8
  %46 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %44, %48
  store i64 %49, i64* %15, align 8
  %50 = load i64, i64* %15, align 8
  %51 = load i64, i64* @INT_MAX, align 8
  %52 = load i64, i64* @USEC_PER_SEC, align 8
  %53 = load i64, i64* @TCP_TS_HZ, align 8
  %54 = sdiv i64 %52, %53
  %55 = sdiv i64 %51, %54
  %56 = icmp slt i64 %50, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @likely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %42
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* @USEC_PER_SEC, align 8
  %63 = load i64, i64* @TCP_TS_HZ, align 8
  %64 = sdiv i64 %62, %63
  %65 = mul nsw i64 %61, %64
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %10, align 8
  store i64 %66, i64* %12, align 8
  br label %67

67:                                               ; preds = %60, %42
  br label %68

68:                                               ; preds = %67, %37, %31, %25, %22
  %69 = load i64, i64* %12, align 8
  %70 = load %struct.rate_sample*, %struct.rate_sample** %13, align 8
  %71 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load i64, i64* %10, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, i32* %7, align 4
  br label %88

75:                                               ; preds = %68
  %76 = load %struct.sock*, %struct.sock** %8, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @tcp_update_rtt_min(%struct.sock* %76, i64 %77, i32 %78)
  %80 = load %struct.sock*, %struct.sock** %8, align 8
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @tcp_rtt_estimator(%struct.sock* %80, i64 %81)
  %83 = load %struct.sock*, %struct.sock** %8, align 8
  %84 = call i32 @tcp_set_rto(%struct.sock* %83)
  %85 = load %struct.sock*, %struct.sock** %8, align 8
  %86 = call %struct.TYPE_4__* @inet_csk(%struct.sock* %85)
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  store i32 1, i32* %7, align 4
  br label %88

88:                                               ; preds = %75, %74
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @tcp_time_stamp(%struct.tcp_sock*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @tcp_update_rtt_min(%struct.sock*, i64, i32) #1

declare dso_local i32 @tcp_rtt_estimator(%struct.sock*, i64) #1

declare dso_local i32 @tcp_set_rto(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @inet_csk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

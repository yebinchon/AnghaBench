; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_set_cwnd.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_set_cwnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rate_sample = type { i32 }
%struct.tcp_sock = type { i64, i64, i64 }
%struct.bbr = type { i64 }

@TCP_INIT_CWND = common dso_local global i64 0, align 8
@bbr_cwnd_min_target = common dso_local global i64 0, align 8
@BBR_PROBE_RTT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.rate_sample*, i64, i64, i32)* @bbr_set_cwnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_set_cwnd(%struct.sock* %0, %struct.rate_sample* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.rate_sample*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tcp_sock*, align 8
  %12 = alloca %struct.bbr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.rate_sample* %1, %struct.rate_sample** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.sock*, %struct.sock** %6, align 8
  %16 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %15)
  store %struct.tcp_sock* %16, %struct.tcp_sock** %11, align 8
  %17 = load %struct.sock*, %struct.sock** %6, align 8
  %18 = call %struct.bbr* @inet_csk_ca(%struct.sock* %17)
  store %struct.bbr* %18, %struct.bbr** %12, align 8
  %19 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %20 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  br label %72

25:                                               ; preds = %5
  %26 = load %struct.sock*, %struct.sock** %6, align 8
  %27 = load %struct.rate_sample*, %struct.rate_sample** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @bbr_set_cwnd_to_recover_or_restore(%struct.sock* %26, %struct.rate_sample* %27, i64 %28, i64* %13)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %72

32:                                               ; preds = %25
  %33 = load %struct.sock*, %struct.sock** %6, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i64 @bbr_bdp(%struct.sock* %33, i64 %34, i32 %35)
  store i64 %36, i64* %14, align 8
  %37 = load %struct.sock*, %struct.sock** %6, align 8
  %38 = call i64 @bbr_ack_aggregation_cwnd(%struct.sock* %37)
  %39 = load i64, i64* %14, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %14, align 8
  %41 = load %struct.sock*, %struct.sock** %6, align 8
  %42 = load i64, i64* %14, align 8
  %43 = call i64 @bbr_quantization_budget(%struct.sock* %41, i64 %42)
  store i64 %43, i64* %14, align 8
  %44 = load %struct.sock*, %struct.sock** %6, align 8
  %45 = call i64 @bbr_full_bw_reached(%struct.sock* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %32
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %8, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i64, i64* %14, align 8
  %52 = call i64 @min(i64 %50, i64 %51)
  store i64 %52, i64* %13, align 8
  br label %68

53:                                               ; preds = %32
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %14, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %59 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TCP_INIT_CWND, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57, %53
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 %64, %65
  store i64 %66, i64* %13, align 8
  br label %67

67:                                               ; preds = %63, %57
  br label %68

68:                                               ; preds = %67, %47
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* @bbr_cwnd_min_target, align 8
  %71 = call i64 @max(i64 %69, i64 %70)
  store i64 %71, i64* %13, align 8
  br label %72

72:                                               ; preds = %68, %31, %24
  %73 = load i64, i64* %13, align 8
  %74 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %75 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @min(i64 %73, i64 %76)
  %78 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %79 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.bbr*, %struct.bbr** %12, align 8
  %81 = getelementptr inbounds %struct.bbr, %struct.bbr* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @BBR_PROBE_RTT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %72
  %86 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %87 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @bbr_cwnd_min_target, align 8
  %90 = call i64 @min(i64 %88, i64 %89)
  %91 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %92 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %85, %72
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.bbr* @inet_csk_ca(%struct.sock*) #1

declare dso_local i64 @bbr_set_cwnd_to_recover_or_restore(%struct.sock*, %struct.rate_sample*, i64, i64*) #1

declare dso_local i64 @bbr_bdp(%struct.sock*, i64, i32) #1

declare dso_local i64 @bbr_ack_aggregation_cwnd(%struct.sock*) #1

declare dso_local i64 @bbr_quantization_budget(%struct.sock*, i64) #1

declare dso_local i64 @bbr_full_bw_reached(%struct.sock*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

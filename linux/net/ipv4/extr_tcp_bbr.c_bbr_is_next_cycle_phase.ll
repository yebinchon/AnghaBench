; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_is_next_cycle_phase.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_is_next_cycle_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rate_sample = type { i64, i32 }
%struct.tcp_sock = type { i32 }
%struct.bbr = type { i64, i64, i32 }

@BBR_UNIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.rate_sample*)* @bbr_is_next_cycle_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_is_next_cycle_phase(%struct.sock* %0, %struct.rate_sample* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.rate_sample*, align 8
  %6 = alloca %struct.tcp_sock*, align 8
  %7 = alloca %struct.bbr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.rate_sample* %1, %struct.rate_sample** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %11)
  store %struct.tcp_sock* %12, %struct.tcp_sock** %6, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call %struct.bbr* @inet_csk_ca(%struct.sock* %13)
  store %struct.bbr* %14, %struct.bbr** %7, align 8
  %15 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %16 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.bbr*, %struct.bbr** %7, align 8
  %19 = getelementptr inbounds %struct.bbr, %struct.bbr* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @tcp_stamp_us_delta(i32 %17, i32 %20)
  %22 = load %struct.bbr*, %struct.bbr** %7, align 8
  %23 = getelementptr inbounds %struct.bbr, %struct.bbr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load %struct.bbr*, %struct.bbr** %7, align 8
  %28 = getelementptr inbounds %struct.bbr, %struct.bbr* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BBR_UNIT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %82

34:                                               ; preds = %2
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = load %struct.rate_sample*, %struct.rate_sample** %5, align 8
  %37 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @bbr_packets_in_net_at_edt(%struct.sock* %35, i32 %38)
  store i64 %39, i64* %9, align 8
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = call i64 @bbr_max_bw(%struct.sock* %40)
  store i64 %41, i64* %10, align 8
  %42 = load %struct.bbr*, %struct.bbr** %7, align 8
  %43 = getelementptr inbounds %struct.bbr, %struct.bbr* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BBR_UNIT, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %34
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = load %struct.rate_sample*, %struct.rate_sample** %5, align 8
  %52 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %50
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.sock*, %struct.sock** %4, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.bbr*, %struct.bbr** %7, align 8
  %60 = getelementptr inbounds %struct.bbr, %struct.bbr* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @bbr_inflight(%struct.sock* %57, i64 %58, i64 %61)
  %63 = icmp sge i64 %56, %62
  br label %64

64:                                               ; preds = %55, %50
  %65 = phi i1 [ true, %50 ], [ %63, %55 ]
  br label %66

66:                                               ; preds = %64, %47
  %67 = phi i1 [ false, %47 ], [ %65, %64 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %3, align 4
  br label %82

69:                                               ; preds = %34
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.sock*, %struct.sock** %4, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* @BBR_UNIT, align 8
  %77 = call i64 @bbr_inflight(%struct.sock* %74, i64 %75, i64 %76)
  %78 = icmp sle i64 %73, %77
  br label %79

79:                                               ; preds = %72, %69
  %80 = phi i1 [ true, %69 ], [ %78, %72 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %66, %32
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.bbr* @inet_csk_ca(%struct.sock*) #1

declare dso_local i64 @tcp_stamp_us_delta(i32, i32) #1

declare dso_local i64 @bbr_packets_in_net_at_edt(%struct.sock*, i32) #1

declare dso_local i64 @bbr_max_bw(%struct.sock*) #1

declare dso_local i64 @bbr_inflight(%struct.sock*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_check_drain.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_check_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rate_sample = type { i32 }
%struct.bbr = type { i64 }
%struct.TYPE_3__ = type { i64 }

@BBR_STARTUP = common dso_local global i64 0, align 8
@BBR_DRAIN = common dso_local global i64 0, align 8
@BBR_UNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.rate_sample*)* @bbr_check_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_check_drain(%struct.sock* %0, %struct.rate_sample* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.rate_sample*, align 8
  %5 = alloca %struct.bbr*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.rate_sample* %1, %struct.rate_sample** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.bbr* @inet_csk_ca(%struct.sock* %6)
  store %struct.bbr* %7, %struct.bbr** %5, align 8
  %8 = load %struct.bbr*, %struct.bbr** %5, align 8
  %9 = getelementptr inbounds %struct.bbr, %struct.bbr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BBR_STARTUP, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = call i64 @bbr_full_bw_reached(%struct.sock* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load i64, i64* @BBR_DRAIN, align 8
  %19 = load %struct.bbr*, %struct.bbr** %5, align 8
  %20 = getelementptr inbounds %struct.bbr, %struct.bbr* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = call i32 @bbr_max_bw(%struct.sock* %22)
  %24 = load i32, i32* @BBR_UNIT, align 4
  %25 = call i64 @bbr_inflight(%struct.sock* %21, i32 %23, i32 %24)
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = call %struct.TYPE_3__* @tcp_sk(%struct.sock* %26)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  br label %29

29:                                               ; preds = %17, %13, %2
  %30 = load %struct.bbr*, %struct.bbr** %5, align 8
  %31 = getelementptr inbounds %struct.bbr, %struct.bbr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BBR_DRAIN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = call %struct.TYPE_3__* @tcp_sk(%struct.sock* %37)
  %39 = call i32 @tcp_packets_in_flight(%struct.TYPE_3__* %38)
  %40 = call i64 @bbr_packets_in_net_at_edt(%struct.sock* %36, i32 %39)
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = load %struct.sock*, %struct.sock** %3, align 8
  %43 = call i32 @bbr_max_bw(%struct.sock* %42)
  %44 = load i32, i32* @BBR_UNIT, align 4
  %45 = call i64 @bbr_inflight(%struct.sock* %41, i32 %43, i32 %44)
  %46 = icmp sle i64 %40, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load %struct.sock*, %struct.sock** %3, align 8
  %49 = call i32 @bbr_reset_probe_bw_mode(%struct.sock* %48)
  br label %50

50:                                               ; preds = %47, %35, %29
  ret void
}

declare dso_local %struct.bbr* @inet_csk_ca(%struct.sock*) #1

declare dso_local i64 @bbr_full_bw_reached(%struct.sock*) #1

declare dso_local i64 @bbr_inflight(%struct.sock*, i32, i32) #1

declare dso_local i32 @bbr_max_bw(%struct.sock*) #1

declare dso_local %struct.TYPE_3__* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @bbr_packets_in_net_at_edt(%struct.sock*, i32) #1

declare dso_local i32 @tcp_packets_in_flight(%struct.TYPE_3__*) #1

declare dso_local i32 @bbr_reset_probe_bw_mode(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

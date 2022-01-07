; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_cwnd_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_cwnd_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i64 }
%struct.bbr = type { i32, i64, i64, i32 }

@CA_EVENT_TX_START = common dso_local global i32 0, align 4
@BBR_PROBE_BW = common dso_local global i64 0, align 8
@BBR_UNIT = common dso_local global i32 0, align 4
@BBR_PROBE_RTT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @bbr_cwnd_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_cwnd_event(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca %struct.bbr*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7)
  store %struct.tcp_sock* %8, %struct.tcp_sock** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.bbr* @inet_csk_ca(%struct.sock* %9)
  store %struct.bbr* %10, %struct.bbr** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @CA_EVENT_TX_START, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %51

14:                                               ; preds = %2
  %15 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %16 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %14
  %20 = load %struct.bbr*, %struct.bbr** %6, align 8
  %21 = getelementptr inbounds %struct.bbr, %struct.bbr* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %23 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.bbr*, %struct.bbr** %6, align 8
  %26 = getelementptr inbounds %struct.bbr, %struct.bbr* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.bbr*, %struct.bbr** %6, align 8
  %28 = getelementptr inbounds %struct.bbr, %struct.bbr* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.bbr*, %struct.bbr** %6, align 8
  %30 = getelementptr inbounds %struct.bbr, %struct.bbr* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @BBR_PROBE_BW, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %19
  %35 = load %struct.sock*, %struct.sock** %3, align 8
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = call i32 @bbr_bw(%struct.sock* %36)
  %38 = load i32, i32* @BBR_UNIT, align 4
  %39 = call i32 @bbr_set_pacing_rate(%struct.sock* %35, i32 %37, i32 %38)
  br label %50

40:                                               ; preds = %19
  %41 = load %struct.bbr*, %struct.bbr** %6, align 8
  %42 = getelementptr inbounds %struct.bbr, %struct.bbr* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BBR_PROBE_RTT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.sock*, %struct.sock** %3, align 8
  %48 = call i32 @bbr_check_probe_rtt_done(%struct.sock* %47)
  br label %49

49:                                               ; preds = %46, %40
  br label %50

50:                                               ; preds = %49, %34
  br label %51

51:                                               ; preds = %50, %14, %2
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.bbr* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @bbr_set_pacing_rate(%struct.sock*, i32, i32) #1

declare dso_local i32 @bbr_bw(%struct.sock*) #1

declare dso_local i32 @bbr_check_probe_rtt_done(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_init_pacing_rate_from_rtt.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_init_pacing_rate_from_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i64 }
%struct.bbr = type { i32 }

@USEC_PER_MSEC = common dso_local global i32 0, align 4
@BW_UNIT = common dso_local global i32 0, align 4
@bbr_high_gain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @bbr_init_pacing_rate_from_rtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_init_pacing_rate_from_rtt(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.bbr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7)
  store %struct.tcp_sock* %8, %struct.tcp_sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.bbr* @inet_csk_ca(%struct.sock* %9)
  store %struct.bbr* %10, %struct.bbr** %4, align 8
  %11 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %12 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %17 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = ashr i32 %18, 3
  %20 = call i32 @max(i32 %19, i32 1)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.bbr*, %struct.bbr** %4, align 8
  %22 = getelementptr inbounds %struct.bbr, %struct.bbr* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  br label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @USEC_PER_MSEC, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %23, %15
  %26 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %27 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @BW_UNIT, align 4
  %31 = mul nsw i32 %29, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @do_div(i32 %32, i32 %33)
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @bbr_high_gain, align 4
  %38 = call i32 @bbr_bw_to_pacing_rate(%struct.sock* %35, i32 %36, i32 %37)
  %39 = load %struct.sock*, %struct.sock** %2, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.bbr* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @bbr_bw_to_pacing_rate(%struct.sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

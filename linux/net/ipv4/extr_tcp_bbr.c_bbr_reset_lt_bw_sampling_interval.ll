; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_reset_lt_bw_sampling_interval.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_reset_lt_bw_sampling_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32, i32 }
%struct.bbr = type { i64, i32, i32, i32 }

@USEC_PER_MSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @bbr_reset_lt_bw_sampling_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_reset_lt_bw_sampling_interval(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.bbr*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %5)
  store %struct.tcp_sock* %6, %struct.tcp_sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.bbr* @inet_csk_ca(%struct.sock* %7)
  store %struct.bbr* %8, %struct.bbr** %4, align 8
  %9 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %10 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @USEC_PER_MSEC, align 4
  %13 = call i32 @div_u64(i32 %11, i32 %12)
  %14 = load %struct.bbr*, %struct.bbr** %4, align 8
  %15 = getelementptr inbounds %struct.bbr, %struct.bbr* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %17 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bbr*, %struct.bbr** %4, align 8
  %20 = getelementptr inbounds %struct.bbr, %struct.bbr* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %22 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bbr*, %struct.bbr** %4, align 8
  %25 = getelementptr inbounds %struct.bbr, %struct.bbr* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.bbr*, %struct.bbr** %4, align 8
  %27 = getelementptr inbounds %struct.bbr, %struct.bbr* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.bbr* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @div_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

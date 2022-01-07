; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_save_cwnd.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_save_cwnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.bbr = type { i64, i64, i32 }

@TCP_CA_Recovery = common dso_local global i64 0, align 8
@BBR_PROBE_RTT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @bbr_save_cwnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_save_cwnd(%struct.sock* %0) #0 {
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
  %9 = load %struct.bbr*, %struct.bbr** %4, align 8
  %10 = getelementptr inbounds %struct.bbr, %struct.bbr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TCP_CA_Recovery, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.bbr*, %struct.bbr** %4, align 8
  %16 = getelementptr inbounds %struct.bbr, %struct.bbr* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BBR_PROBE_RTT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %22 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bbr*, %struct.bbr** %4, align 8
  %25 = getelementptr inbounds %struct.bbr, %struct.bbr* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  br label %36

26:                                               ; preds = %14, %1
  %27 = load %struct.bbr*, %struct.bbr** %4, align 8
  %28 = getelementptr inbounds %struct.bbr, %struct.bbr* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @max(i32 %29, i32 %32)
  %34 = load %struct.bbr*, %struct.bbr** %4, align 8
  %35 = getelementptr inbounds %struct.bbr, %struct.bbr* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %26, %20
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.bbr* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

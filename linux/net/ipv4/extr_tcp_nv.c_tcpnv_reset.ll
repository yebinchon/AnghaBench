; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_nv.c_tcpnv_reset.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_nv.c_tcpnv_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpnv = type { i32, i64, i32, i64, i64, i64, i64, i64 }
%struct.sock = type { i32 }
%struct.tcp_sock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpnv*, %struct.sock*)* @tcpnv_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpnv_reset(%struct.tcpnv* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.tcpnv*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  store %struct.tcpnv* %0, %struct.tcpnv** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %4, align 8
  %7 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %6)
  store %struct.tcp_sock* %7, %struct.tcp_sock** %5, align 8
  %8 = load %struct.tcpnv*, %struct.tcpnv** %3, align 8
  %9 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %8, i32 0, i32 7
  store i64 0, i64* %9, align 8
  %10 = load %struct.tcpnv*, %struct.tcpnv** %3, align 8
  %11 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %10, i32 0, i32 6
  store i64 0, i64* %11, align 8
  %12 = load %struct.tcpnv*, %struct.tcpnv** %3, align 8
  %13 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %12, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = load %struct.tcpnv*, %struct.tcpnv** %3, align 8
  %15 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.tcpnv*, %struct.tcpnv** %3, align 8
  %17 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %19 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tcpnv*, %struct.tcpnv** %3, align 8
  %22 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.tcpnv*, %struct.tcpnv** %3, align 8
  %24 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %26 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tcpnv*, %struct.tcpnv** %3, align 8
  %29 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

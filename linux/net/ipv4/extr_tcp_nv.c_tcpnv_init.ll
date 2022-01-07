; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_nv.c_tcpnv_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_nv.c_tcpnv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcpnv = type { i32, i32, i32, i64, i64, i32, i8*, i8*, i64 }

@BPF_SOCK_OPS_BASE_RTT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@NV_INIT_RTT = common dso_local global i8* null, align 8
@NV_MIN_CWND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tcpnv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpnv_init(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcpnv*, align 8
  %4 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.tcpnv* @inet_csk_ca(%struct.sock* %5)
  store %struct.tcpnv* %6, %struct.tcpnv** %3, align 8
  %7 = load %struct.tcpnv*, %struct.tcpnv** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call i32 @tcpnv_reset(%struct.tcpnv* %7, %struct.sock* %8)
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = load i32, i32* @BPF_SOCK_OPS_BASE_RTT, align 4
  %12 = call i32 @tcp_call_bpf(%struct.sock* %10, i32 %11, i32 0, i32* null)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.tcpnv*, %struct.tcpnv** %3, align 8
  %18 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 %19, 205
  %21 = ashr i32 %20, 8
  %22 = load %struct.tcpnv*, %struct.tcpnv** %3, align 8
  %23 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  br label %29

24:                                               ; preds = %1
  %25 = load %struct.tcpnv*, %struct.tcpnv** %3, align 8
  %26 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.tcpnv*, %struct.tcpnv** %3, align 8
  %28 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %24, %15
  %30 = load %struct.tcpnv*, %struct.tcpnv** %3, align 8
  %31 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %30, i32 0, i32 2
  store i32 1, i32* %31, align 8
  %32 = load i64, i64* @jiffies, align 8
  %33 = load i32, i32* @HZ, align 4
  %34 = mul nsw i32 2, %33
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = load %struct.tcpnv*, %struct.tcpnv** %3, align 8
  %38 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %37, i32 0, i32 8
  store i64 %36, i64* %38, align 8
  %39 = load i8*, i8** @NV_INIT_RTT, align 8
  %40 = load %struct.tcpnv*, %struct.tcpnv** %3, align 8
  %41 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %40, i32 0, i32 7
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** @NV_INIT_RTT, align 8
  %43 = load %struct.tcpnv*, %struct.tcpnv** %3, align 8
  %44 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %43, i32 0, i32 6
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @NV_MIN_CWND, align 4
  %46 = load %struct.tcpnv*, %struct.tcpnv** %3, align 8
  %47 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  %48 = load %struct.tcpnv*, %struct.tcpnv** %3, align 8
  %49 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.tcpnv*, %struct.tcpnv** %3, align 8
  %51 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  ret void
}

declare dso_local %struct.tcpnv* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @tcpnv_reset(%struct.tcpnv*, %struct.sock*) #1

declare dso_local i32 @tcp_call_bpf(%struct.sock*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

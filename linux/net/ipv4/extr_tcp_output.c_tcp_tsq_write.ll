; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_tsq_write.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_tsq_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64, i64, i64, i32 }

@TCPF_ESTABLISHED = common dso_local global i32 0, align 4
@TCPF_FIN_WAIT1 = common dso_local global i32 0, align 4
@TCPF_CLOSING = common dso_local global i32 0, align 4
@TCPF_CLOSE_WAIT = common dso_local global i32 0, align 4
@TCPF_LAST_ACK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tcp_tsq_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_tsq_write(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = getelementptr inbounds %struct.sock, %struct.sock* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = shl i32 1, %6
  %8 = load i32, i32* @TCPF_ESTABLISHED, align 4
  %9 = load i32, i32* @TCPF_FIN_WAIT1, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @TCPF_CLOSING, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @TCPF_CLOSE_WAIT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @TCPF_LAST_ACK, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %7, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %1
  %20 = load %struct.sock*, %struct.sock** %2, align 8
  %21 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %20)
  store %struct.tcp_sock* %21, %struct.tcp_sock** %3, align 8
  %22 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %23 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %26 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %19
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %34 = call i64 @tcp_packets_in_flight(%struct.tcp_sock* %33)
  %35 = icmp sgt i64 %32, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %38 = call i32 @tcp_mstamp_refresh(%struct.tcp_sock* %37)
  %39 = load %struct.sock*, %struct.sock** %2, align 8
  %40 = call i32 @tcp_xmit_retransmit_queue(%struct.sock* %39)
  br label %41

41:                                               ; preds = %36, %29, %19
  %42 = load %struct.sock*, %struct.sock** %2, align 8
  %43 = load %struct.sock*, %struct.sock** %2, align 8
  %44 = call i32 @tcp_current_mss(%struct.sock* %43)
  %45 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %46 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @GFP_ATOMIC, align 4
  %49 = call i32 @tcp_write_xmit(%struct.sock* %42, i32 %44, i32 %47, i32 0, i32 %48)
  br label %50

50:                                               ; preds = %41, %1
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @tcp_packets_in_flight(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_mstamp_refresh(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_xmit_retransmit_queue(%struct.sock*) #1

declare dso_local i32 @tcp_write_xmit(%struct.sock*, i32, i32, i32, i32) #1

declare dso_local i32 @tcp_current_mss(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_rtx_synack.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_rtx_synack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.request_sock = type { i32 }
%struct.tcp_request_sock_ops = type { i32 (%struct.sock.0*, i32*, %struct.flowi*, %struct.request_sock.1*, i32*, i32)* }
%struct.sock.0 = type opaque
%struct.flowi = type opaque
%struct.request_sock.1 = type opaque
%struct.flowi.2 = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.tcp_request_sock_ops* }
%struct.TYPE_3__ = type { i32 }

@TCP_SYNACK_NORMAL = common dso_local global i32 0, align 4
@TCP_MIB_RETRANSSEGS = common dso_local global i32 0, align 4
@LINUX_MIB_TCPSYNRETRANS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_rtx_synack(%struct.sock* %0, %struct.request_sock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.request_sock*, align 8
  %5 = alloca %struct.tcp_request_sock_ops*, align 8
  %6 = alloca %struct.flowi.2, align 4
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.request_sock* %1, %struct.request_sock** %4, align 8
  %8 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %9 = call %struct.TYPE_4__* @tcp_rsk(%struct.request_sock* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.tcp_request_sock_ops*, %struct.tcp_request_sock_ops** %10, align 8
  store %struct.tcp_request_sock_ops* %11, %struct.tcp_request_sock_ops** %5, align 8
  %12 = call i32 (...) @net_tx_rndhash()
  %13 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %14 = call %struct.TYPE_4__* @tcp_rsk(%struct.request_sock* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  %16 = load %struct.tcp_request_sock_ops*, %struct.tcp_request_sock_ops** %5, align 8
  %17 = getelementptr inbounds %struct.tcp_request_sock_ops, %struct.tcp_request_sock_ops* %16, i32 0, i32 0
  %18 = load i32 (%struct.sock.0*, i32*, %struct.flowi*, %struct.request_sock.1*, i32*, i32)*, i32 (%struct.sock.0*, i32*, %struct.flowi*, %struct.request_sock.1*, i32*, i32)** %17, align 8
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = bitcast %struct.sock* %19 to %struct.sock.0*
  %21 = bitcast %struct.flowi.2* %6 to %struct.flowi*
  %22 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %23 = bitcast %struct.request_sock* %22 to %struct.request_sock.1*
  %24 = load i32, i32* @TCP_SYNACK_NORMAL, align 4
  %25 = call i32 %18(%struct.sock.0* %20, i32* null, %struct.flowi* %21, %struct.request_sock.1* %23, i32* null, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %2
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = call i32 @sock_net(%struct.sock* %29)
  %31 = load i32, i32* @TCP_MIB_RETRANSSEGS, align 4
  %32 = call i32 @__TCP_INC_STATS(i32 %30, i32 %31)
  %33 = load %struct.sock*, %struct.sock** %3, align 8
  %34 = call i32 @sock_net(%struct.sock* %33)
  %35 = load i32, i32* @LINUX_MIB_TCPSYNRETRANS, align 4
  %36 = call i32 @__NET_INC_STATS(i32 %34, i32 %35)
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = call i32 @tcp_passive_fastopen(%struct.sock* %37)
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %28
  %42 = load %struct.sock*, %struct.sock** %3, align 8
  %43 = call %struct.TYPE_3__* @tcp_sk(%struct.sock* %42)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %41, %28
  %48 = load %struct.sock*, %struct.sock** %3, align 8
  %49 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %50 = call i32 @trace_tcp_retransmit_synack(%struct.sock* %48, %struct.request_sock* %49)
  br label %51

51:                                               ; preds = %47, %2
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_4__* @tcp_rsk(%struct.request_sock*) #1

declare dso_local i32 @net_tx_rndhash(...) #1

declare dso_local i32 @__TCP_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @__NET_INC_STATS(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tcp_passive_fastopen(%struct.sock*) #1

declare dso_local %struct.TYPE_3__* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @trace_tcp_retransmit_synack(%struct.sock*, %struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

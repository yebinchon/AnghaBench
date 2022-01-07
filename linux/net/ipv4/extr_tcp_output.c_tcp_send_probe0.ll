; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_send_probe0.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_send_probe0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_connection_sock = type { i64, i64 }
%struct.tcp_sock = type { i64 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@LINUX_MIB_TCPWINPROBE = common dso_local global i32 0, align 4
@TCP_RTO_MAX = common dso_local global i32 0, align 4
@TCP_RESOURCE_PROBE_INTERVAL = common dso_local global i64 0, align 8
@ICSK_TIME_PROBE0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_send_probe0(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_connection_sock*, align 8
  %4 = alloca %struct.tcp_sock*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %8)
  store %struct.inet_connection_sock* %9, %struct.inet_connection_sock** %3, align 8
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %10)
  store %struct.tcp_sock* %11, %struct.tcp_sock** %4, align 8
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = call %struct.net* @sock_net(%struct.sock* %12)
  store %struct.net* %13, %struct.net** %5, align 8
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = load i32, i32* @LINUX_MIB_TCPWINPROBE, align 4
  %16 = call i32 @tcp_write_wakeup(%struct.sock* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %18 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load %struct.sock*, %struct.sock** %2, align 8
  %23 = call i64 @tcp_write_queue_empty(%struct.sock* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21, %1
  %26 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %27 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %29 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %63

30:                                               ; preds = %21
  %31 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %32 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = load i32, i32* %7, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %30
  %38 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %39 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.net*, %struct.net** %5, align 8
  %42 = getelementptr inbounds %struct.net, %struct.net* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %40, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %48 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %46, %37
  %52 = load %struct.sock*, %struct.sock** %2, align 8
  %53 = load i32, i32* @TCP_RTO_MAX, align 4
  %54 = call i64 @tcp_probe0_when(%struct.sock* %52, i32 %53)
  store i64 %54, i64* %6, align 8
  br label %57

55:                                               ; preds = %30
  %56 = load i64, i64* @TCP_RESOURCE_PROBE_INTERVAL, align 8
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %55, %51
  %58 = load %struct.sock*, %struct.sock** %2, align 8
  %59 = load i32, i32* @ICSK_TIME_PROBE0, align 4
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* @TCP_RTO_MAX, align 4
  %62 = call i32 @tcp_reset_xmit_timer(%struct.sock* %58, i32 %59, i64 %60, i32 %61, i32* null)
  br label %63

63:                                               ; preds = %57, %25
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @tcp_write_wakeup(%struct.sock*, i32) #1

declare dso_local i64 @tcp_write_queue_empty(%struct.sock*) #1

declare dso_local i64 @tcp_probe0_when(%struct.sock*, i32) #1

declare dso_local i32 @tcp_reset_xmit_timer(%struct.sock*, i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

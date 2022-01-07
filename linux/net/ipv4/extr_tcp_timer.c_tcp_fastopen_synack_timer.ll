; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_tcp_fastopen_synack_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_tcp_fastopen_synack_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.request_sock = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.request_sock*)* }
%struct.inet_connection_sock = type { i32, i64 }
%struct.tcp_sock = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ICSK_TIME_RETRANS = common dso_local global i32 0, align 4
@TCP_TIMEOUT_INIT = common dso_local global i32 0, align 4
@TCP_RTO_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.request_sock*)* @tcp_fastopen_synack_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_fastopen_synack_timer(%struct.sock* %0, %struct.request_sock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.request_sock*, align 8
  %5 = alloca %struct.inet_connection_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.request_sock* %1, %struct.request_sock** %4, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %8)
  store %struct.inet_connection_sock* %9, %struct.inet_connection_sock** %5, align 8
  %10 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %11 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %23

15:                                               ; preds = %2
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = call %struct.TYPE_6__* @sock_net(%struct.sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  br label %23

23:                                               ; preds = %15, %14
  %24 = phi i64 [ %12, %14 ], [ %22, %15 ]
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %26)
  store %struct.tcp_sock* %27, %struct.tcp_sock** %7, align 8
  %28 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %29 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32 (%struct.request_sock*)*, i32 (%struct.request_sock*)** %31, align 8
  %33 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %34 = call i32 %32(%struct.request_sock* %33)
  %35 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %36 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %23
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = call i32 @tcp_write_err(%struct.sock* %41)
  br label %82

43:                                               ; preds = %23
  %44 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %45 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.sock*, %struct.sock** %3, align 8
  %50 = call i32 @tcp_enter_loss(%struct.sock* %49)
  br label %51

51:                                               ; preds = %48, %43
  %52 = load %struct.sock*, %struct.sock** %3, align 8
  %53 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %54 = call i32 @inet_rtx_syn_ack(%struct.sock* %52, %struct.request_sock* %53)
  %55 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %56 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %60 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %64 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %51
  %68 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %69 = call i64 @tcp_time_stamp(%struct.tcp_sock* %68)
  %70 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %71 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %67, %51
  %73 = load %struct.sock*, %struct.sock** %3, align 8
  %74 = load i32, i32* @ICSK_TIME_RETRANS, align 4
  %75 = load i32, i32* @TCP_TIMEOUT_INIT, align 4
  %76 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %77 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = shl i32 %75, %78
  %80 = load i32, i32* @TCP_RTO_MAX, align 4
  %81 = call i32 @inet_csk_reset_xmit_timer(%struct.sock* %73, i32 %74, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %72, %40
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.TYPE_6__* @sock_net(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_write_err(%struct.sock*) #1

declare dso_local i32 @tcp_enter_loss(%struct.sock*) #1

declare dso_local i32 @inet_rtx_syn_ack(%struct.sock*, %struct.request_sock*) #1

declare dso_local i64 @tcp_time_stamp(%struct.tcp_sock*) #1

declare dso_local i32 @inet_csk_reset_xmit_timer(%struct.sock*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

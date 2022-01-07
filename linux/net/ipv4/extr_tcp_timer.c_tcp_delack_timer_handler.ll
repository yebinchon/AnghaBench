; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_tcp_delack_timer_handler.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_tcp_delack_timer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_connection_sock = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TCPF_CLOSE = common dso_local global i32 0, align 4
@TCPF_LISTEN = common dso_local global i32 0, align 4
@ICSK_ACK_TIMER = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@TCP_ATO_MIN = common dso_local global i32 0, align 4
@LINUX_MIB_DELAYEDACKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_delack_timer_handler(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_connection_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %4)
  store %struct.inet_connection_sock* %5, %struct.inet_connection_sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call i32 @sk_mem_reclaim_partial(%struct.sock* %6)
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 1, %10
  %12 = load i32, i32* @TCPF_CLOSE, align 4
  %13 = load i32, i32* @TCPF_LISTEN, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %1
  %18 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %19 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ICSK_ACK_TIMER, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17, %1
  br label %89

26:                                               ; preds = %17
  %27 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %28 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @jiffies, align 4
  %32 = call i64 @time_after(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %37 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %36, i32 0, i32 2
  %38 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %39 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @sk_reset_timer(%struct.sock* %35, i32* %37, i32 %41)
  br label %89

43:                                               ; preds = %26
  %44 = load i32, i32* @ICSK_ACK_TIMER, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %47 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %45
  store i32 %50, i32* %48, align 4
  %51 = load %struct.sock*, %struct.sock** %2, align 8
  %52 = call i64 @inet_csk_ack_scheduled(%struct.sock* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %88

54:                                               ; preds = %43
  %55 = load %struct.sock*, %struct.sock** %2, align 8
  %56 = call i32 @inet_csk_in_pingpong_mode(%struct.sock* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %54
  %59 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %60 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 1
  %64 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %65 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @min(i32 %63, i32 %66)
  %68 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %69 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  br label %78

71:                                               ; preds = %54
  %72 = load %struct.sock*, %struct.sock** %2, align 8
  %73 = call i32 @inet_csk_exit_pingpong_mode(%struct.sock* %72)
  %74 = load i32, i32* @TCP_ATO_MIN, align 4
  %75 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %76 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  br label %78

78:                                               ; preds = %71, %58
  %79 = load %struct.sock*, %struct.sock** %2, align 8
  %80 = call i32 @tcp_sk(%struct.sock* %79)
  %81 = call i32 @tcp_mstamp_refresh(i32 %80)
  %82 = load %struct.sock*, %struct.sock** %2, align 8
  %83 = call i32 @tcp_send_ack(%struct.sock* %82)
  %84 = load %struct.sock*, %struct.sock** %2, align 8
  %85 = call i32 @sock_net(%struct.sock* %84)
  %86 = load i32, i32* @LINUX_MIB_DELAYEDACKS, align 4
  %87 = call i32 @__NET_INC_STATS(i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %78, %43
  br label %89

89:                                               ; preds = %88, %34, %25
  %90 = load %struct.sock*, %struct.sock** %2, align 8
  %91 = call i64 @tcp_under_memory_pressure(%struct.sock* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load %struct.sock*, %struct.sock** %2, align 8
  %95 = call i32 @sk_mem_reclaim(%struct.sock* %94)
  br label %96

96:                                               ; preds = %93, %89
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @sk_mem_reclaim_partial(%struct.sock*) #1

declare dso_local i64 @time_after(i32, i32) #1

declare dso_local i32 @sk_reset_timer(%struct.sock*, i32*, i32) #1

declare dso_local i64 @inet_csk_ack_scheduled(%struct.sock*) #1

declare dso_local i32 @inet_csk_in_pingpong_mode(%struct.sock*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @inet_csk_exit_pingpong_mode(%struct.sock*) #1

declare dso_local i32 @tcp_mstamp_refresh(i32) #1

declare dso_local i32 @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_send_ack(%struct.sock*) #1

declare dso_local i32 @__NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i64 @tcp_under_memory_pressure(%struct.sock*) #1

declare dso_local i32 @sk_mem_reclaim(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

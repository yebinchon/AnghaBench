; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }

@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@TCPF_ESTABLISHED = common dso_local global i32 0, align 4
@TCPF_SYN_SENT = common dso_local global i32 0, align 4
@TCPF_SYN_RECV = common dso_local global i32 0, align 4
@TCPF_CLOSE_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_shutdown(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SEND_SHUTDOWN, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %32

10:                                               ; preds = %2
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 1, %13
  %15 = load i32, i32* @TCPF_ESTABLISHED, align 4
  %16 = load i32, i32* @TCPF_SYN_SENT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @TCPF_SYN_RECV, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @TCPF_CLOSE_WAIT, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %14, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %10
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = call i64 @tcp_close_state(%struct.sock* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = call i32 @tcp_send_fin(%struct.sock* %29)
  br label %31

31:                                               ; preds = %28, %24
  br label %32

32:                                               ; preds = %9, %31, %10
  ret void
}

declare dso_local i64 @tcp_close_state(%struct.sock*) #1

declare dso_local i32 @tcp_send_fin(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

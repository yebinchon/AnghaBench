; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_send_window_probe.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_send_window_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.TYPE_3__ = type { i64, i64 }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@LINUX_MIB_TCPWINPROBE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_send_window_probe(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %3 = load %struct.sock*, %struct.sock** %2, align 8
  %4 = getelementptr inbounds %struct.sock, %struct.sock* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @TCP_ESTABLISHED, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.TYPE_3__* @tcp_sk(%struct.sock* %9)
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %12, 1
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = call %struct.TYPE_3__* @tcp_sk(%struct.sock* %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i64 %13, i64* %16, align 8
  %17 = load %struct.sock*, %struct.sock** %2, align 8
  %18 = call %struct.TYPE_3__* @tcp_sk(%struct.sock* %17)
  %19 = call i32 @tcp_mstamp_refresh(%struct.TYPE_3__* %18)
  %20 = load %struct.sock*, %struct.sock** %2, align 8
  %21 = load i32, i32* @LINUX_MIB_TCPWINPROBE, align 4
  %22 = call i32 @tcp_xmit_probe_skb(%struct.sock* %20, i32 0, i32 %21)
  br label %23

23:                                               ; preds = %8, %1
  ret void
}

declare dso_local %struct.TYPE_3__* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_mstamp_refresh(%struct.TYPE_3__*) #1

declare dso_local i32 @tcp_xmit_probe_skb(%struct.sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

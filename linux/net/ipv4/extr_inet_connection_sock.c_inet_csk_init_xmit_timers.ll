; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_inet_csk_init_xmit_timers.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_inet_csk_init_xmit_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.timer_list = type opaque
%struct.timer_list.0 = type opaque
%struct.timer_list.1 = type opaque
%struct.inet_connection_sock = type { %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.timer_list.2 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet_csk_init_xmit_timers(%struct.sock* %0, void (%struct.timer_list*)* %1, void (%struct.timer_list.0*)* %2, void (%struct.timer_list.1*)* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca void (%struct.timer_list*)*, align 8
  %7 = alloca void (%struct.timer_list.0*)*, align 8
  %8 = alloca void (%struct.timer_list.1*)*, align 8
  %9 = alloca %struct.inet_connection_sock*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store void (%struct.timer_list*)* %1, void (%struct.timer_list*)** %6, align 8
  store void (%struct.timer_list.0*)* %2, void (%struct.timer_list.0*)** %7, align 8
  store void (%struct.timer_list.1*)* %3, void (%struct.timer_list.1*)** %8, align 8
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %10)
  store %struct.inet_connection_sock* %11, %struct.inet_connection_sock** %9, align 8
  %12 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %9, align 8
  %13 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %12, i32 0, i32 3
  %14 = load void (%struct.timer_list*)*, void (%struct.timer_list*)** %6, align 8
  %15 = bitcast void (%struct.timer_list*)* %14 to void (%struct.timer_list.2*)*
  %16 = call i32 @timer_setup(i32* %13, void (%struct.timer_list.2*)* %15, i32 0)
  %17 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %9, align 8
  %18 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %17, i32 0, i32 2
  %19 = load void (%struct.timer_list.0*)*, void (%struct.timer_list.0*)** %7, align 8
  %20 = bitcast void (%struct.timer_list.0*)* %19 to void (%struct.timer_list.2*)*
  %21 = call i32 @timer_setup(i32* %18, void (%struct.timer_list.2*)* %20, i32 0)
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = load void (%struct.timer_list.1*)*, void (%struct.timer_list.1*)** %8, align 8
  %25 = bitcast void (%struct.timer_list.1*)* %24 to void (%struct.timer_list.2*)*
  %26 = call i32 @timer_setup(i32* %23, void (%struct.timer_list.2*)* %25, i32 0)
  %27 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %9, align 8
  %28 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %9, align 8
  %31 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @timer_setup(i32*, void (%struct.timer_list.2*)*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

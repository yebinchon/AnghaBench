; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_event_data_sent.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_event_data_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sock = type { i64 }
%struct.sock = type { i32 }
%struct.inet_connection_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@tcp_jiffies32 = common dso_local global i64 0, align 8
@CA_EVENT_TX_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_sock*, %struct.sock*)* @tcp_event_data_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_event_data_sent(%struct.tcp_sock* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.inet_connection_sock*, align 8
  %6 = alloca i64, align 8
  store %struct.tcp_sock* %0, %struct.tcp_sock** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %7)
  store %struct.inet_connection_sock* %8, %struct.inet_connection_sock** %5, align 8
  %9 = load i64, i64* @tcp_jiffies32, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %11 = call i64 @tcp_packets_in_flight(%struct.tcp_sock* %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = load i32, i32* @CA_EVENT_TX_START, align 4
  %16 = call i32 @tcp_ca_event(%struct.sock* %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %19 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %22 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @before(i64 %20, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %17
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %30 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %28, %32
  %34 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %35 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %33, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = call i32 @inet_csk_inc_pingpong_cnt(%struct.sock* %40)
  br label %42

42:                                               ; preds = %39, %27, %17
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %45 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i64 @tcp_packets_in_flight(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_ca_event(%struct.sock*, i32) #1

declare dso_local i64 @before(i64, i64) #1

declare dso_local i32 @inet_csk_inc_pingpong_cnt(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

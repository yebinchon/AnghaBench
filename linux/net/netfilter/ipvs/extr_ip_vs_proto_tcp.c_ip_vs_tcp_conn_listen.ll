; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto_tcp.c_ip_vs_tcp_conn_listen.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto_tcp.c_ip_vs_tcp_conn_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i64, i32, i32, i32 }
%struct.ip_vs_proto_data = type { i32* }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@IP_VS_TCP_S_LISTEN = common dso_local global i64 0, align 8
@tcp_timeouts = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_vs_tcp_conn_listen(%struct.ip_vs_conn* %0) #0 {
  %2 = alloca %struct.ip_vs_conn*, align 8
  %3 = alloca %struct.ip_vs_proto_data*, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %2, align 8
  %4 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %5 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @IPPROTO_TCP, align 4
  %8 = call %struct.ip_vs_proto_data* @ip_vs_proto_data_get(i32 %6, i32 %7)
  store %struct.ip_vs_proto_data* %8, %struct.ip_vs_proto_data** %3, align 8
  %9 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %10 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %9, i32 0, i32 1
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load i64, i64* @IP_VS_TCP_S_LISTEN, align 8
  %13 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %14 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %3, align 8
  %16 = icmp ne %struct.ip_vs_proto_data* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %3, align 8
  %19 = getelementptr inbounds %struct.ip_vs_proto_data, %struct.ip_vs_proto_data* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @IP_VS_TCP_S_LISTEN, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  br label %29

24:                                               ; preds = %1
  %25 = load i32*, i32** @tcp_timeouts, align 8
  %26 = load i64, i64* @IP_VS_TCP_S_LISTEN, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  br label %29

29:                                               ; preds = %24, %17
  %30 = phi i32 [ %23, %17 ], [ %28, %24 ]
  %31 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %32 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %34 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %33, i32 0, i32 1
  %35 = call i32 @spin_unlock_bh(i32* %34)
  ret void
}

declare dso_local %struct.ip_vs_proto_data* @ip_vs_proto_data_get(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

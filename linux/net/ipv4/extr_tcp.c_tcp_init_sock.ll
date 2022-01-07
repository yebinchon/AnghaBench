; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_init_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_init_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32, i32, i8* }
%struct.inet_connection_sock = type { i32, i32 }
%struct.tcp_sock = type { i32, %struct.TYPE_4__, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32*, i32 }

@RB_ROOT = common dso_local global i8* null, align 8
@TCP_TIMEOUT_INIT = common dso_local global i32 0, align 4
@tcp_jiffies32 = common dso_local global i32 0, align 4
@TCP_INIT_CWND = common dso_local global i32 0, align 4
@TCP_INFINITE_SSTHRESH = common dso_local global i32 0, align 4
@TCP_MSS_DEFAULT = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@sk_stream_write_space = common dso_local global i32 0, align 4
@SOCK_USE_WRITE_QUEUE = common dso_local global i32 0, align 4
@tcp_sync_mss = common dso_local global i32 0, align 4
@NETIF_F_GSO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_init_sock(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_connection_sock*, align 8
  %4 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %5)
  store %struct.inet_connection_sock* %6, %struct.inet_connection_sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7)
  store %struct.tcp_sock* %8, %struct.tcp_sock** %4, align 8
  %9 = load i8*, i8** @RB_ROOT, align 8
  %10 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %11 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %10, i32 0, i32 12
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** @RB_ROOT, align 8
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 5
  store i8* %12, i8** %14, align 8
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = call i32 @tcp_init_xmit_timers(%struct.sock* %15)
  %17 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %18 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %17, i32 0, i32 11
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %21 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %20, i32 0, i32 10
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load i32, i32* @TCP_TIMEOUT_INIT, align 4
  %24 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %25 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @TCP_TIMEOUT_INIT, align 4
  %27 = call i32 @jiffies_to_usecs(i32 %26)
  %28 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %29 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 8
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 8
  %32 = load i32, i32* @tcp_jiffies32, align 4
  %33 = call i32 @minmax_reset(i32* %31, i32 %32, i32 -1)
  %34 = load i32, i32* @TCP_INIT_CWND, align 4
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %36 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  %37 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %38 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %37, i32 0, i32 0
  store i32 -1, i32* %38, align 8
  %39 = load i32, i32* @TCP_INFINITE_SSTHRESH, align 4
  %40 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %41 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %43 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %42, i32 0, i32 5
  store i32 -1, i32* %43, align 8
  %44 = load i32, i32* @TCP_MSS_DEFAULT, align 4
  %45 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %46 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.sock*, %struct.sock** %2, align 8
  %48 = call %struct.TYPE_6__* @sock_net(%struct.sock* %47)
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %53 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.sock*, %struct.sock** %2, align 8
  %55 = call i32 @tcp_assign_congestion_control(%struct.sock* %54)
  %56 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %57 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %59 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  %61 = load i32, i32* @TCP_CLOSE, align 4
  %62 = load %struct.sock*, %struct.sock** %2, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @sk_stream_write_space, align 4
  %65 = load %struct.sock*, %struct.sock** %2, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.sock*, %struct.sock** %2, align 8
  %68 = load i32, i32* @SOCK_USE_WRITE_QUEUE, align 4
  %69 = call i32 @sock_set_flag(%struct.sock* %67, i32 %68)
  %70 = load i32, i32* @tcp_sync_mss, align 4
  %71 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %72 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.sock*, %struct.sock** %2, align 8
  %74 = getelementptr inbounds %struct.sock, %struct.sock* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.sock*, %struct.sock** %2, align 8
  %77 = call %struct.TYPE_6__* @sock_net(%struct.sock* %76)
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @WRITE_ONCE(i32 %75, i32 %82)
  %84 = load %struct.sock*, %struct.sock** %2, align 8
  %85 = getelementptr inbounds %struct.sock, %struct.sock* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.sock*, %struct.sock** %2, align 8
  %88 = call %struct.TYPE_6__* @sock_net(%struct.sock* %87)
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @WRITE_ONCE(i32 %86, i32 %93)
  %95 = load %struct.sock*, %struct.sock** %2, align 8
  %96 = call i32 @sk_sockets_allocated_inc(%struct.sock* %95)
  %97 = load i32, i32* @NETIF_F_GSO, align 4
  %98 = load %struct.sock*, %struct.sock** %2, align 8
  %99 = getelementptr inbounds %struct.sock, %struct.sock* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_init_xmit_timers(%struct.sock*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @jiffies_to_usecs(i32) #1

declare dso_local i32 @minmax_reset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @sock_net(%struct.sock*) #1

declare dso_local i32 @tcp_assign_congestion_control(%struct.sock*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @sk_sockets_allocated_inc(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

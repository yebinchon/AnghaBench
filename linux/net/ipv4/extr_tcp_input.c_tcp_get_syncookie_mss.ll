; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_get_syncookie_mss.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_get_syncookie_mss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_sock_ops = type { i32 }
%struct.tcp_request_sock_ops = type { i64 }
%struct.sock = type { i32 }
%struct.tcphdr = type { i32 }
%struct.tcp_sock = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@LINUX_MIB_LISTENOVERFLOWS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tcp_get_syncookie_mss(%struct.request_sock_ops* %0, %struct.tcp_request_sock_ops* %1, %struct.sock* %2, %struct.tcphdr* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.request_sock_ops*, align 8
  %7 = alloca %struct.tcp_request_sock_ops*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca %struct.tcp_sock*, align 8
  %11 = alloca i64, align 8
  store %struct.request_sock_ops* %0, %struct.request_sock_ops** %6, align 8
  store %struct.tcp_request_sock_ops* %1, %struct.tcp_request_sock_ops** %7, align 8
  store %struct.sock* %2, %struct.sock** %8, align 8
  store %struct.tcphdr* %3, %struct.tcphdr** %9, align 8
  %12 = load %struct.sock*, %struct.sock** %8, align 8
  %13 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %12)
  store %struct.tcp_sock* %13, %struct.tcp_sock** %10, align 8
  %14 = load %struct.sock*, %struct.sock** %8, align 8
  %15 = call %struct.TYPE_7__* @sock_net(%struct.sock* %14)
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load %struct.sock*, %struct.sock** %8, align 8
  %22 = call i32 @inet_csk_reqsk_queue_is_full(%struct.sock* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i64 0, i64* %5, align 8
  br label %57

25:                                               ; preds = %20, %4
  %26 = load %struct.sock*, %struct.sock** %8, align 8
  %27 = load %struct.request_sock_ops*, %struct.request_sock_ops** %6, align 8
  %28 = getelementptr inbounds %struct.request_sock_ops, %struct.request_sock_ops* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @tcp_syn_flood_action(%struct.sock* %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store i64 0, i64* %5, align 8
  br label %57

33:                                               ; preds = %25
  %34 = load %struct.sock*, %struct.sock** %8, align 8
  %35 = call i64 @sk_acceptq_is_full(%struct.sock* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.sock*, %struct.sock** %8, align 8
  %39 = call %struct.TYPE_7__* @sock_net(%struct.sock* %38)
  %40 = load i32, i32* @LINUX_MIB_LISTENOVERFLOWS, align 4
  %41 = call i32 @NET_INC_STATS(%struct.TYPE_7__* %39, i32 %40)
  store i64 0, i64* %5, align 8
  br label %57

42:                                               ; preds = %33
  %43 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %44 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %45 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @tcp_parse_mss_option(%struct.tcphdr* %43, i32 %47)
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %42
  %52 = load %struct.tcp_request_sock_ops*, %struct.tcp_request_sock_ops** %7, align 8
  %53 = getelementptr inbounds %struct.tcp_request_sock_ops, %struct.tcp_request_sock_ops* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %11, align 8
  br label %55

55:                                               ; preds = %51, %42
  %56 = load i64, i64* %11, align 8
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %55, %37, %32, %24
  %58 = load i64, i64* %5, align 8
  ret i64 %58
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_7__* @sock_net(%struct.sock*) #1

declare dso_local i32 @inet_csk_reqsk_queue_is_full(%struct.sock*) #1

declare dso_local i32 @tcp_syn_flood_action(%struct.sock*, i32) #1

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local i32 @NET_INC_STATS(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @tcp_parse_mss_option(%struct.tcphdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

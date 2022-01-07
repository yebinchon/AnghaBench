; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_fastopen.c_tcp_fastopen_create_child.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_fastopen.c_tcp_fastopen_create_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.request_sock = type { i32 }
%struct.tcp_sock = type { i64, i64, i32, i32, i32 }
%struct.request_sock_queue = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__*, %struct.request_sock_queue }
%struct.TYPE_7__ = type { %struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, i32*, i32*, i32*)* }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@ICSK_TIME_RETRANS = common dso_local global i32 0, align 4
@TCP_TIMEOUT_INIT = common dso_local global i32 0, align 4
@TCP_RTO_MAX = common dso_local global i32 0, align 4
@BPF_SOCK_OPS_PASSIVE_ESTABLISHED_CB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*)* @tcp_fastopen_create_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @tcp_fastopen_create_child(%struct.sock* %0, %struct.sk_buff* %1, %struct.request_sock* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.request_sock*, align 8
  %8 = alloca %struct.tcp_sock*, align 8
  %9 = alloca %struct.request_sock_queue*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.request_sock* %2, %struct.request_sock** %7, align 8
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = call %struct.TYPE_11__* @inet_csk(%struct.sock* %12)
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  store %struct.request_sock_queue* %14, %struct.request_sock_queue** %9, align 8
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = call %struct.TYPE_11__* @inet_csk(%struct.sock* %15)
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, i32*, i32*, i32*)*, %struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, i32*, i32*, i32*)** %19, align 8
  %21 = load %struct.sock*, %struct.sock** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %24 = call %struct.sock* %20(%struct.sock* %21, %struct.sk_buff* %22, %struct.request_sock* %23, i32* null, i32* null, i32* %11)
  store %struct.sock* %24, %struct.sock** %10, align 8
  %25 = load %struct.sock*, %struct.sock** %10, align 8
  %26 = icmp ne %struct.sock* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store %struct.sock* null, %struct.sock** %4, align 8
  br label %97

28:                                               ; preds = %3
  %29 = load %struct.request_sock_queue*, %struct.request_sock_queue** %9, align 8
  %30 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.request_sock_queue*, %struct.request_sock_queue** %9, align 8
  %34 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.request_sock_queue*, %struct.request_sock_queue** %9, align 8
  %39 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load %struct.sock*, %struct.sock** %10, align 8
  %43 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %42)
  store %struct.tcp_sock* %43, %struct.tcp_sock** %8, align 8
  %44 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %45 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %48 = call i32 @rcu_assign_pointer(i32 %46, %struct.request_sock* %47)
  %49 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %50 = call %struct.TYPE_9__* @tcp_rsk(%struct.request_sock* %49)
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = call %struct.TYPE_10__* @tcp_hdr(%struct.sk_buff* %52)
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ntohs(i32 %55)
  %57 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %58 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %60 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %63 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.sock*, %struct.sock** %10, align 8
  %65 = load i32, i32* @ICSK_TIME_RETRANS, align 4
  %66 = load i32, i32* @TCP_TIMEOUT_INIT, align 4
  %67 = load i32, i32* @TCP_RTO_MAX, align 4
  %68 = call i32 @inet_csk_reset_xmit_timer(%struct.sock* %64, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %70 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %69, i32 0, i32 0
  %71 = call i32 @refcount_set(i32* %70, i32 2)
  %72 = load %struct.sock*, %struct.sock** %10, align 8
  %73 = load i32, i32* @BPF_SOCK_OPS_PASSIVE_ESTABLISHED_CB, align 4
  %74 = call i32 @tcp_init_transfer(%struct.sock* %72, i32 %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = call %struct.TYPE_12__* @TCP_SKB_CB(%struct.sk_buff* %75)
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  %80 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %81 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.sock*, %struct.sock** %10, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = call i32 @tcp_fastopen_add_skb(%struct.sock* %82, %struct.sk_buff* %83)
  %85 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %86 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %89 = call %struct.TYPE_9__* @tcp_rsk(%struct.request_sock* %88)
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  store i64 %87, i64* %90, align 8
  %91 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %92 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %95 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %96, %struct.sock** %4, align 8
  br label %97

97:                                               ; preds = %28, %27
  %98 = load %struct.sock*, %struct.sock** %4, align 8
  ret %struct.sock* %98
}

declare dso_local %struct.TYPE_11__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.request_sock*) #1

declare dso_local %struct.TYPE_9__* @tcp_rsk(%struct.request_sock*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.TYPE_10__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @inet_csk_reset_xmit_timer(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @tcp_init_transfer(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_12__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @tcp_fastopen_add_skb(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

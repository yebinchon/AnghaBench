; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c___tipc_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c___tipc_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32, i32 }
%struct.tipc_sock = type { i32, i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i64 }

@CONN_TIMEOUT_DEFAULT = common dso_local global i64 0, align 8
@TIPC_DISCONNECTING = common dso_local global i64 0, align 8
@TIPC_CRITICAL_IMPORTANCE = common dso_local global i32 0, align 4
@TIPC_CONN_MSG = common dso_local global i32 0, align 4
@SHORT_H_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*, i32)* @__tipc_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tipc_shutdown(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.tipc_sock*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.socket*, %struct.socket** %3, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %5, align 8
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = call %struct.tipc_sock* @tipc_sk(%struct.sock* %14)
  store %struct.tipc_sock* %15, %struct.tipc_sock** %6, align 8
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = call %struct.net* @sock_net(%struct.sock* %16)
  store %struct.net* %17, %struct.net** %7, align 8
  %18 = load i64, i64* @CONN_TIMEOUT_DEFAULT, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %20 = call i32 @tsk_peer_node(%struct.tipc_sock* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.socket*, %struct.socket** %3, align 8
  %22 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %23 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %28 = call i32 @tsk_conn_cong(%struct.tipc_sock* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %26, %2
  %32 = phi i1 [ false, %2 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @tipc_wait_for_cond(%struct.socket* %21, i64* %8, i32 %33)
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 2
  %37 = call i32 @__skb_queue_purge(i32* %36)
  br label %38

38:                                               ; preds = %72, %49, %31
  %39 = load %struct.sock*, %struct.sock** %5, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 1
  %41 = call %struct.sk_buff* @__skb_dequeue(i32* %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %10, align 8
  %42 = icmp ne %struct.sk_buff* %41, null
  br i1 %42, label %43, label %77

43:                                               ; preds = %38
  %44 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %45 = call %struct.TYPE_2__* @TIPC_SKB_CB(%struct.sk_buff* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %51 = call i32 @kfree_skb(%struct.sk_buff* %50)
  br label %38

52:                                               ; preds = %43
  %53 = load %struct.sock*, %struct.sock** %5, align 8
  %54 = call i64 @tipc_sk_type_connectionless(%struct.sock* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %52
  %57 = load %struct.sock*, %struct.sock** %5, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TIPC_DISCONNECTING, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load %struct.sock*, %struct.sock** %5, align 8
  %64 = load i64, i64* @TIPC_DISCONNECTING, align 8
  %65 = call i32 @tipc_set_sk_state(%struct.sock* %63, i64 %64)
  %66 = load %struct.net*, %struct.net** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %69 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @tipc_node_remove_conn(%struct.net* %66, i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %62, %56, %52
  %73 = load %struct.sock*, %struct.sock** %5, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @tipc_sk_respond(%struct.sock* %73, %struct.sk_buff* %74, i32 %75)
  br label %38

77:                                               ; preds = %38
  %78 = load %struct.sock*, %struct.sock** %5, align 8
  %79 = call i64 @tipc_sk_type_connectionless(%struct.sock* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %122

82:                                               ; preds = %77
  %83 = load %struct.sock*, %struct.sock** %5, align 8
  %84 = getelementptr inbounds %struct.sock, %struct.sock* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @TIPC_DISCONNECTING, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %122

88:                                               ; preds = %82
  %89 = load i32, i32* @TIPC_CRITICAL_IMPORTANCE, align 4
  %90 = load i32, i32* @TIPC_CONN_MSG, align 4
  %91 = load i32, i32* @SHORT_H_SIZE, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %94 = call i32 @tsk_own_node(%struct.tipc_sock* %93)
  %95 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %96 = call i32 @tsk_peer_port(%struct.tipc_sock* %95)
  %97 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %98 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call %struct.sk_buff* @tipc_msg_create(i32 %89, i32 %90, i32 %91, i32 0, i32 %92, i32 %94, i32 %96, i32 %99, i32 %100)
  store %struct.sk_buff* %101, %struct.sk_buff** %10, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %103 = icmp ne %struct.sk_buff* %102, null
  br i1 %103, label %104, label %112

104:                                              ; preds = %88
  %105 = load %struct.net*, %struct.net** %7, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %109 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @tipc_node_xmit_skb(%struct.net* %105, %struct.sk_buff* %106, i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %104, %88
  %113 = load %struct.net*, %struct.net** %7, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %116 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @tipc_node_remove_conn(%struct.net* %113, i32 %114, i32 %117)
  %119 = load %struct.sock*, %struct.sock** %5, align 8
  %120 = load i64, i64* @TIPC_DISCONNECTING, align 8
  %121 = call i32 @tipc_set_sk_state(%struct.sock* %119, i64 %120)
  br label %122

122:                                              ; preds = %81, %112, %82
  ret void
}

declare dso_local %struct.tipc_sock* @tipc_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @tsk_peer_node(%struct.tipc_sock*) #1

declare dso_local i32 @tipc_wait_for_cond(%struct.socket*, i64*, i32) #1

declare dso_local i32 @tsk_conn_cong(%struct.tipc_sock*) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local %struct.TYPE_2__* @TIPC_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @tipc_sk_type_connectionless(%struct.sock*) #1

declare dso_local i32 @tipc_set_sk_state(%struct.sock*, i64) #1

declare dso_local i32 @tipc_node_remove_conn(%struct.net*, i32, i32) #1

declare dso_local i32 @tipc_sk_respond(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @tipc_msg_create(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tsk_own_node(%struct.tipc_sock*) #1

declare dso_local i32 @tsk_peer_port(%struct.tipc_sock*) #1

declare dso_local i32 @tipc_node_xmit_skb(%struct.net*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

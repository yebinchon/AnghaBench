; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_send_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_send_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_sock = type { i32, i32, %struct.sock, i32, i32 }
%struct.sock = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@CONN_MANAGER = common dso_local global i32 0, align 4
@CONN_ACK = common dso_local global i32 0, align 4
@INT_H_SIZE = common dso_local global i32 0, align 4
@TIPC_OK = common dso_local global i32 0, align 4
@TIPC_BLOCK_FLOWCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_sock*)* @tipc_sk_send_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_sk_send_ack(%struct.tipc_sock* %0) #0 {
  %2 = alloca %struct.tipc_sock*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tipc_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tipc_sock* %0, %struct.tipc_sock** %2, align 8
  %9 = load %struct.tipc_sock*, %struct.tipc_sock** %2, align 8
  %10 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %9, i32 0, i32 2
  store %struct.sock* %10, %struct.sock** %3, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.net* @sock_net(%struct.sock* %11)
  store %struct.net* %12, %struct.net** %4, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  %13 = load %struct.tipc_sock*, %struct.tipc_sock** %2, align 8
  %14 = call i32 @tsk_peer_port(%struct.tipc_sock* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.tipc_sock*, %struct.tipc_sock** %2, align 8
  %16 = call i32 @tsk_peer_node(%struct.tipc_sock* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = call i32 @tipc_sk_connected(%struct.sock* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %73

21:                                               ; preds = %1
  %22 = load i32, i32* @CONN_MANAGER, align 4
  %23 = load i32, i32* @CONN_ACK, align 4
  %24 = load i32, i32* @INT_H_SIZE, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.tipc_sock*, %struct.tipc_sock** %2, align 8
  %27 = call i32 @tsk_own_node(%struct.tipc_sock* %26)
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.tipc_sock*, %struct.tipc_sock** %2, align 8
  %30 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TIPC_OK, align 4
  %33 = call %struct.sk_buff* @tipc_msg_create(i32 %22, i32 %23, i32 %24, i32 0, i32 %25, i32 %27, i32 %28, i32 %31, i32 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %5, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %21
  br label %73

37:                                               ; preds = %21
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %38)
  store %struct.tipc_msg* %39, %struct.tipc_msg** %6, align 8
  %40 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %41 = load %struct.tipc_sock*, %struct.tipc_sock** %2, align 8
  %42 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @msg_set_conn_ack(%struct.tipc_msg* %40, i32 %43)
  %45 = load %struct.tipc_sock*, %struct.tipc_sock** %2, align 8
  %46 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %45, i32 0, i32 3
  store i32 0, i32* %46, align 4
  %47 = load %struct.tipc_sock*, %struct.tipc_sock** %2, align 8
  %48 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TIPC_BLOCK_FLOWCTL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %37
  %54 = load %struct.tipc_sock*, %struct.tipc_sock** %2, align 8
  %55 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @tsk_adv_blocks(i32 %57)
  %59 = load %struct.tipc_sock*, %struct.tipc_sock** %2, align 8
  %60 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %62 = load %struct.tipc_sock*, %struct.tipc_sock** %2, align 8
  %63 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @msg_set_adv_win(%struct.tipc_msg* %61, i32 %64)
  br label %66

66:                                               ; preds = %53, %37
  %67 = load %struct.net*, %struct.net** %4, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %71 = call i32 @msg_link_selector(%struct.tipc_msg* %70)
  %72 = call i32 @tipc_node_xmit_skb(%struct.net* %67, %struct.sk_buff* %68, i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %66, %36, %20
  ret void
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @tsk_peer_port(%struct.tipc_sock*) #1

declare dso_local i32 @tsk_peer_node(%struct.tipc_sock*) #1

declare dso_local i32 @tipc_sk_connected(%struct.sock*) #1

declare dso_local %struct.sk_buff* @tipc_msg_create(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tsk_own_node(%struct.tipc_sock*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_set_conn_ack(%struct.tipc_msg*, i32) #1

declare dso_local i32 @tsk_adv_blocks(i32) #1

declare dso_local i32 @msg_set_adv_win(%struct.tipc_msg*, i32) #1

declare dso_local i32 @tipc_node_xmit_skb(%struct.net*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @msg_link_selector(%struct.tipc_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

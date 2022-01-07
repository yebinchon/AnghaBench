; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_check_probing_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_check_probing_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 (%struct.sock*)*, i32 }
%struct.sk_buff_head = type { i32 }
%struct.tipc_sock = type { i32, i32 }
%struct.sk_buff = type { i32 }

@TIPC_DISCONNECTING = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@CONN_MANAGER = common dso_local global i32 0, align 4
@CONN_PROBE = common dso_local global i32 0, align 4
@INT_H_SIZE = common dso_local global i32 0, align 4
@TIPC_OK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@CONN_PROBING_INTV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff_head*)* @tipc_sk_check_probing_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_sk_check_probing_state(%struct.sock* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff_head*, align 8
  %5 = alloca %struct.tipc_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %4, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.tipc_sock* @tipc_sk(%struct.sock* %11)
  store %struct.tipc_sock* %12, %struct.tipc_sock** %5, align 8
  %13 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %14 = call i32 @tsk_peer_node(%struct.tipc_sock* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %16 = call i32 @tsk_peer_port(%struct.tipc_sock* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %18 = call i32 @tsk_own_node(%struct.tipc_sock* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %20 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %23 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %2
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = load i32, i32* @TIPC_DISCONNECTING, align 4
  %29 = call i32 @tipc_set_sk_state(%struct.sock* %27, i32 %28)
  %30 = load i32, i32* @ECONNABORTED, align 4
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.sock*, %struct.sock** %3, align 8
  %34 = call i32 @sock_net(%struct.sock* %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @tipc_node_remove_conn(i32 %34, i32 %35, i32 %36)
  %38 = load %struct.sock*, %struct.sock** %3, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 1
  %40 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %39, align 8
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = call i32 %40(%struct.sock* %41)
  br label %69

43:                                               ; preds = %2
  %44 = load i32, i32* @CONN_MANAGER, align 4
  %45 = load i32, i32* @CONN_PROBE, align 4
  %46 = load i32, i32* @INT_H_SIZE, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @TIPC_OK, align 4
  %52 = call %struct.sk_buff* @tipc_msg_create(i32 %44, i32 %45, i32 %46, i32 0, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51)
  store %struct.sk_buff* %52, %struct.sk_buff** %10, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %54 = icmp ne %struct.sk_buff* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %58 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %56, %struct.sk_buff* %57)
  br label %59

59:                                               ; preds = %55, %43
  %60 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %61 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = load %struct.sock*, %struct.sock** %3, align 8
  %63 = load %struct.sock*, %struct.sock** %3, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 0
  %65 = load i64, i64* @jiffies, align 8
  %66 = load i64, i64* @CONN_PROBING_INTV, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @sk_reset_timer(%struct.sock* %62, i32* %64, i64 %67)
  br label %69

69:                                               ; preds = %59, %26
  ret void
}

declare dso_local %struct.tipc_sock* @tipc_sk(%struct.sock*) #1

declare dso_local i32 @tsk_peer_node(%struct.tipc_sock*) #1

declare dso_local i32 @tsk_peer_port(%struct.tipc_sock*) #1

declare dso_local i32 @tsk_own_node(%struct.tipc_sock*) #1

declare dso_local i32 @tipc_set_sk_state(%struct.sock*, i32) #1

declare dso_local i32 @tipc_node_remove_conn(i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.sk_buff* @tipc_msg_create(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @sk_reset_timer(%struct.sock*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

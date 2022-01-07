; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_finish_conn.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_finish_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_sock = type { i32, i8*, i8*, i32, i32, %struct.tipc_msg, %struct.sock }
%struct.tipc_msg = type { i32 }
%struct.sock = type { i32, i32 }
%struct.net = type { i32 }

@TIPC_CONN_MSG = common dso_local global i32 0, align 4
@SHORT_H_SIZE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@CONN_PROBING_INTV = common dso_local global i64 0, align 8
@TIPC_ESTABLISHED = common dso_local global i32 0, align 4
@TIPC_BLOCK_FLOWCTL = common dso_local global i32 0, align 4
@FLOWCTL_MSG_WIN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_sock*, i32, i32)* @tipc_sk_finish_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_sk_finish_conn(%struct.tipc_sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tipc_sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.tipc_msg*, align 8
  store %struct.tipc_sock* %0, %struct.tipc_sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %11 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %10, i32 0, i32 6
  store %struct.sock* %11, %struct.sock** %7, align 8
  %12 = load %struct.sock*, %struct.sock** %7, align 8
  %13 = call %struct.net* @sock_net(%struct.sock* %12)
  store %struct.net* %13, %struct.net** %8, align 8
  %14 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %15 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %14, i32 0, i32 5
  store %struct.tipc_msg* %15, %struct.tipc_msg** %9, align 8
  %16 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %17 = call i32 @msg_set_syn(%struct.tipc_msg* %16, i32 0)
  %18 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @msg_set_destnode(%struct.tipc_msg* %18, i32 %19)
  %21 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @msg_set_destport(%struct.tipc_msg* %21, i32 %22)
  %24 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %25 = load i32, i32* @TIPC_CONN_MSG, align 4
  %26 = call i32 @msg_set_type(%struct.tipc_msg* %24, i32 %25)
  %27 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %28 = call i32 @msg_set_lookup_scope(%struct.tipc_msg* %27, i32 0)
  %29 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %30 = load i32, i32* @SHORT_H_SIZE, align 4
  %31 = call i32 @msg_set_hdr_sz(%struct.tipc_msg* %29, i32 %30)
  %32 = load %struct.sock*, %struct.sock** %7, align 8
  %33 = load %struct.sock*, %struct.sock** %7, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 1
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i64, i64* @CONN_PROBING_INTV, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @sk_reset_timer(%struct.sock* %32, i32* %34, i64 %37)
  %39 = load %struct.sock*, %struct.sock** %7, align 8
  %40 = load i32, i32* @TIPC_ESTABLISHED, align 4
  %41 = call i32 @tipc_set_sk_state(%struct.sock* %39, i32 %40)
  %42 = load %struct.net*, %struct.net** %8, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %45 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @tipc_node_add_conn(%struct.net* %42, i32 %43, i32 %46, i32 %47)
  %49 = load %struct.net*, %struct.net** %8, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %52 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @tipc_node_get_mtu(%struct.net* %49, i32 %50, i32 %53)
  %55 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %56 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.net*, %struct.net** %8, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @tipc_node_get_capabilities(%struct.net* %57, i32 %58)
  %60 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %61 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.sock*, %struct.sock** %7, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 0
  %64 = call i32 @__skb_queue_purge(i32* %63)
  %65 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %66 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @TIPC_BLOCK_FLOWCTL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %3
  br label %79

72:                                               ; preds = %3
  %73 = load i8*, i8** @FLOWCTL_MSG_WIN, align 8
  %74 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %75 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** @FLOWCTL_MSG_WIN, align 8
  %77 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %78 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %72, %71
  ret void
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @msg_set_syn(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_destnode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_destport(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_type(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_lookup_scope(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_hdr_sz(%struct.tipc_msg*, i32) #1

declare dso_local i32 @sk_reset_timer(%struct.sock*, i32*, i64) #1

declare dso_local i32 @tipc_set_sk_state(%struct.sock*, i32) #1

declare dso_local i32 @tipc_node_add_conn(%struct.net*, i32, i32, i32) #1

declare dso_local i32 @tipc_node_get_mtu(%struct.net*, i32, i32) #1

declare dso_local i32 @tipc_node_get_capabilities(%struct.net*, i32) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

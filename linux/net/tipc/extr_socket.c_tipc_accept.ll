; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_sock = type { i32, i32 }
%struct.tipc_msg = type { i32 }
%struct.msghdr = type { i32* }

@TIPC_LISTEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32, i32)* @tipc_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_accept(%struct.socket* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.tipc_sock*, align 8
  %13 = alloca %struct.tipc_msg*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.msghdr, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.socket*, %struct.socket** %5, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  store %struct.sock* %19, %struct.sock** %10, align 8
  %20 = load %struct.sock*, %struct.sock** %10, align 8
  %21 = call i32 @lock_sock(%struct.sock* %20)
  %22 = load %struct.sock*, %struct.sock** %10, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TIPC_LISTEN, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %15, align 4
  br label %122

30:                                               ; preds = %4
  %31 = load %struct.sock*, %struct.sock** %10, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @O_NONBLOCK, align 4
  %34 = and i32 %32, %33
  %35 = call i64 @sock_rcvtimeo(%struct.sock* %31, i32 %34)
  store i64 %35, i64* %14, align 8
  %36 = load %struct.socket*, %struct.socket** %5, align 8
  %37 = load i64, i64* %14, align 8
  %38 = call i32 @tipc_wait_for_accept(%struct.socket* %36, i64 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %122

42:                                               ; preds = %30
  %43 = load %struct.sock*, %struct.sock** %10, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 1
  %45 = call %struct.sk_buff* @skb_peek(i32* %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %11, align 8
  %46 = load %struct.socket*, %struct.socket** %5, align 8
  %47 = getelementptr inbounds %struct.socket, %struct.socket* %46, i32 0, i32 0
  %48 = load %struct.sock*, %struct.sock** %47, align 8
  %49 = call i32 @sock_net(%struct.sock* %48)
  %50 = load %struct.socket*, %struct.socket** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @tipc_sk_create(i32 %49, %struct.socket* %50, i32 0, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  br label %122

56:                                               ; preds = %42
  %57 = load %struct.socket*, %struct.socket** %5, align 8
  %58 = getelementptr inbounds %struct.socket, %struct.socket* %57, i32 0, i32 0
  %59 = load %struct.sock*, %struct.sock** %58, align 8
  %60 = load %struct.socket*, %struct.socket** %6, align 8
  %61 = getelementptr inbounds %struct.socket, %struct.socket* %60, i32 0, i32 0
  %62 = load %struct.sock*, %struct.sock** %61, align 8
  %63 = call i32 @security_sk_clone(%struct.sock* %59, %struct.sock* %62)
  %64 = load %struct.socket*, %struct.socket** %6, align 8
  %65 = getelementptr inbounds %struct.socket, %struct.socket* %64, i32 0, i32 0
  %66 = load %struct.sock*, %struct.sock** %65, align 8
  store %struct.sock* %66, %struct.sock** %9, align 8
  %67 = load %struct.sock*, %struct.sock** %9, align 8
  %68 = call %struct.tipc_sock* @tipc_sk(%struct.sock* %67)
  store %struct.tipc_sock* %68, %struct.tipc_sock** %12, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %70 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %69)
  store %struct.tipc_msg* %70, %struct.tipc_msg** %13, align 8
  %71 = load %struct.sock*, %struct.sock** %9, align 8
  %72 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %73 = call i32 @lock_sock_nested(%struct.sock* %71, i32 %72)
  %74 = load %struct.sock*, %struct.sock** %9, align 8
  %75 = call i32 @tsk_rej_rx_queue(%struct.sock* %74)
  %76 = load %struct.tipc_sock*, %struct.tipc_sock** %12, align 8
  %77 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %78 = call i32 @msg_origport(%struct.tipc_msg* %77)
  %79 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %80 = call i32 @msg_orignode(%struct.tipc_msg* %79)
  %81 = call i32 @tipc_sk_finish_conn(%struct.tipc_sock* %76, i32 %78, i32 %80)
  %82 = load %struct.tipc_sock*, %struct.tipc_sock** %12, align 8
  %83 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %84 = call i32 @msg_importance(%struct.tipc_msg* %83)
  %85 = call i32 @tsk_set_importance(%struct.tipc_sock* %82, i32 %84)
  %86 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %87 = call i64 @msg_named(%struct.tipc_msg* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %56
  %90 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %91 = call i32 @msg_nametype(%struct.tipc_msg* %90)
  %92 = load %struct.tipc_sock*, %struct.tipc_sock** %12, align 8
  %93 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %95 = call i32 @msg_nameinst(%struct.tipc_msg* %94)
  %96 = load %struct.tipc_sock*, %struct.tipc_sock** %12, align 8
  %97 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %89, %56
  %99 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %100 = call i32 @msg_data_sz(%struct.tipc_msg* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %98
  %103 = bitcast %struct.msghdr* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %103, i8 0, i64 8, i1 false)
  %104 = load %struct.sock*, %struct.sock** %10, align 8
  %105 = call i32 @tsk_advance_rx_queue(%struct.sock* %104)
  %106 = load %struct.socket*, %struct.socket** %6, align 8
  %107 = call i32 @__tipc_sendstream(%struct.socket* %106, %struct.msghdr* %16, i32 0)
  br label %119

108:                                              ; preds = %98
  %109 = load %struct.sock*, %struct.sock** %10, align 8
  %110 = getelementptr inbounds %struct.sock, %struct.sock* %109, i32 0, i32 1
  %111 = call i32 @__skb_dequeue(i32* %110)
  %112 = load %struct.sock*, %struct.sock** %9, align 8
  %113 = getelementptr inbounds %struct.sock, %struct.sock* %112, i32 0, i32 1
  %114 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %115 = call i32 @__skb_queue_head(i32* %113, %struct.sk_buff* %114)
  %116 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %117 = load %struct.sock*, %struct.sock** %9, align 8
  %118 = call i32 @skb_set_owner_r(%struct.sk_buff* %116, %struct.sock* %117)
  br label %119

119:                                              ; preds = %108, %102
  %120 = load %struct.sock*, %struct.sock** %9, align 8
  %121 = call i32 @release_sock(%struct.sock* %120)
  br label %122

122:                                              ; preds = %119, %55, %41, %27
  %123 = load %struct.sock*, %struct.sock** %10, align 8
  %124 = call i32 @release_sock(%struct.sock* %123)
  %125 = load i32, i32* %15, align 4
  ret i32 %125
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i32 @tipc_wait_for_accept(%struct.socket*, i64) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i32 @tipc_sk_create(i32, %struct.socket*, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @security_sk_clone(%struct.sock*, %struct.sock*) #1

declare dso_local %struct.tipc_sock* @tipc_sk(%struct.sock*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @lock_sock_nested(%struct.sock*, i32) #1

declare dso_local i32 @tsk_rej_rx_queue(%struct.sock*) #1

declare dso_local i32 @tipc_sk_finish_conn(%struct.tipc_sock*, i32, i32) #1

declare dso_local i32 @msg_origport(%struct.tipc_msg*) #1

declare dso_local i32 @msg_orignode(%struct.tipc_msg*) #1

declare dso_local i32 @tsk_set_importance(%struct.tipc_sock*, i32) #1

declare dso_local i32 @msg_importance(%struct.tipc_msg*) #1

declare dso_local i64 @msg_named(%struct.tipc_msg*) #1

declare dso_local i32 @msg_nametype(%struct.tipc_msg*) #1

declare dso_local i32 @msg_nameinst(%struct.tipc_msg*) #1

declare dso_local i32 @msg_data_sz(%struct.tipc_msg*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @tsk_advance_rx_queue(%struct.sock*) #1

declare dso_local i32 @__tipc_sendstream(%struct.socket*, %struct.msghdr*, i32) #1

declare dso_local i32 @__skb_dequeue(i32*) #1

declare dso_local i32 @__skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @skb_set_owner_r(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

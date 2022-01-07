; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_conn_proto_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_conn_proto_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_sock = type { i32, i32, i32, i32, %struct.sock }
%struct.sock = type { i32 (%struct.sock*)*, i32 (%struct.sock*)* }
%struct.sk_buff = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.tipc_msg = type { i32 }

@TIPC_DUMP_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"@proto_rcv!\00", align 1
@TIPC_DISCONNECTING = common dso_local global i32 0, align 4
@TIPC_CRITICAL_IMPORTANCE = common dso_local global i32 0, align 4
@TIPC_CONN_MSG = common dso_local global i32 0, align 4
@BASIC_H_SIZE = common dso_local global i32 0, align 4
@CONN_PROBE = common dso_local global i32 0, align 4
@CONN_PROBE_REPLY = common dso_local global i32 0, align 4
@TIPC_OK = common dso_local global i32 0, align 4
@CONN_ACK = common dso_local global i32 0, align 4
@TIPC_BLOCK_FLOWCTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Received unknown CONN_PROTO msg\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_sock*, %struct.sk_buff*, %struct.sk_buff_head*, %struct.sk_buff_head*)* @tipc_sk_conn_proto_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_sk_conn_proto_rcv(%struct.tipc_sock* %0, %struct.sk_buff* %1, %struct.sk_buff_head* %2, %struct.sk_buff_head* %3) #0 {
  %5 = alloca %struct.tipc_sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  %8 = alloca %struct.sk_buff_head*, align 8
  %9 = alloca %struct.tipc_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tipc_sock* %0, %struct.tipc_sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %7, align 8
  store %struct.sk_buff_head* %3, %struct.sk_buff_head** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %14)
  store %struct.tipc_msg* %15, %struct.tipc_msg** %9, align 8
  %16 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %17 = call i32 @tsk_own_node(%struct.tipc_sock* %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %19 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %18, i32 0, i32 4
  store %struct.sock* %19, %struct.sock** %11, align 8
  %20 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %21 = call i32 @msg_type(%struct.tipc_msg* %20)
  store i32 %21, i32* %12, align 4
  %22 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %23 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %24 = call i32 @tsk_peer_msg(%struct.tipc_sock* %22, %struct.tipc_msg* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %4
  %27 = load %struct.sock*, %struct.sock** %11, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = load i32, i32* @TIPC_DUMP_NONE, align 4
  %30 = call i32 @trace_tipc_sk_drop_msg(%struct.sock* %27, %struct.sk_buff* %28, i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %131

31:                                               ; preds = %4
  %32 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %33 = call i32 @msg_errcode(%struct.tipc_msg* %32)
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %31
  %37 = load %struct.sock*, %struct.sock** %11, align 8
  %38 = load i32, i32* @TIPC_DISCONNECTING, align 4
  %39 = call i32 @tipc_set_sk_state(%struct.sock* %37, i32 %38)
  %40 = load %struct.sock*, %struct.sock** %11, align 8
  %41 = call i32 @sock_net(%struct.sock* %40)
  %42 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %43 = call i32 @tsk_peer_node(%struct.tipc_sock* %42)
  %44 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %45 = call i32 @tsk_peer_port(%struct.tipc_sock* %44)
  %46 = call i32 @tipc_node_remove_conn(i32 %41, i32 %43, i32 %45)
  %47 = load %struct.sock*, %struct.sock** %11, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 1
  %49 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %48, align 8
  %50 = load %struct.sock*, %struct.sock** %11, align 8
  %51 = call i32 %49(%struct.sock* %50)
  %52 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %53 = load i32, i32* @TIPC_CRITICAL_IMPORTANCE, align 4
  %54 = call i32 @msg_set_user(%struct.tipc_msg* %52, i32 %53)
  %55 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %56 = load i32, i32* @TIPC_CONN_MSG, align 4
  %57 = call i32 @msg_set_type(%struct.tipc_msg* %55, i32 %56)
  %58 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %59 = load i32, i32* @BASIC_H_SIZE, align 4
  %60 = call i32 @msg_set_size(%struct.tipc_msg* %58, i32 %59)
  %61 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %62 = load i32, i32* @BASIC_H_SIZE, align 4
  %63 = call i32 @msg_set_hdr_sz(%struct.tipc_msg* %61, i32 %62)
  %64 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %64, %struct.sk_buff* %65)
  br label %134

67:                                               ; preds = %31
  %68 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %69 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @CONN_PROBE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %67
  %74 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %75 = load i32, i32* @CONN_PROBE_REPLY, align 4
  %76 = call i32 @msg_set_type(%struct.tipc_msg* %74, i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @TIPC_OK, align 4
  %79 = call i64 @tipc_msg_reverse(i32 %77, %struct.sk_buff** %6, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %82, %struct.sk_buff* %83)
  br label %85

85:                                               ; preds = %81, %73
  br label %134

86:                                               ; preds = %67
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @CONN_ACK, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %122

90:                                               ; preds = %86
  %91 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %92 = call i32 @tsk_conn_cong(%struct.tipc_sock* %91)
  store i32 %92, i32* %13, align 4
  %93 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %94 = call i64 @msg_conn_ack(%struct.tipc_msg* %93)
  %95 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %96 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = sub nsw i64 %98, %94
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 4
  %101 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %102 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @TIPC_BLOCK_FLOWCTL, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %90
  %108 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %109 = call i32 @msg_adv_win(%struct.tipc_msg* %108)
  %110 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %111 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %107, %90
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load %struct.sock*, %struct.sock** %11, align 8
  %117 = getelementptr inbounds %struct.sock, %struct.sock* %116, i32 0, i32 0
  %118 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %117, align 8
  %119 = load %struct.sock*, %struct.sock** %11, align 8
  %120 = call i32 %118(%struct.sock* %119)
  br label %121

121:                                              ; preds = %115, %112
  br label %129

122:                                              ; preds = %86
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @CONN_PROBE_REPLY, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %122
  br label %129

129:                                              ; preds = %128, %121
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130, %26
  %132 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %133 = call i32 @kfree_skb(%struct.sk_buff* %132)
  br label %134

134:                                              ; preds = %131, %85, %36
  ret void
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @tsk_own_node(%struct.tipc_sock*) #1

declare dso_local i32 @msg_type(%struct.tipc_msg*) #1

declare dso_local i32 @tsk_peer_msg(%struct.tipc_sock*, %struct.tipc_msg*) #1

declare dso_local i32 @trace_tipc_sk_drop_msg(%struct.sock*, %struct.sk_buff*, i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @msg_errcode(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_set_sk_state(%struct.sock*, i32) #1

declare dso_local i32 @tipc_node_remove_conn(i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @tsk_peer_node(%struct.tipc_sock*) #1

declare dso_local i32 @tsk_peer_port(%struct.tipc_sock*) #1

declare dso_local i32 @msg_set_user(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_type(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_size(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_hdr_sz(%struct.tipc_msg*, i32) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i64 @tipc_msg_reverse(i32, %struct.sk_buff**, i32) #1

declare dso_local i32 @tsk_conn_cong(%struct.tipc_sock*) #1

declare dso_local i64 @msg_conn_ack(%struct.tipc_msg*) #1

declare dso_local i32 @msg_adv_win(%struct.tipc_msg*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

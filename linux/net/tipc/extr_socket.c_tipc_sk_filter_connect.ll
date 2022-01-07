; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_filter_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_filter_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_sock = type { i32, i32, i32, %struct.sock }
%struct.sock = type { i32, i32 (%struct.sock*)*, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.tipc_msg = type { i32 }

@TIPC_ERR_OVERLOAD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@TIPC_SYN_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unknown sk_state %u\0A\00", align 1
@ECONNREFUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_sock*, %struct.sk_buff*)* @tipc_sk_filter_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_sk_filter_connect(%struct.tipc_sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.tipc_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.tipc_sock* %0, %struct.tipc_sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %16 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %17 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %16, i32 0, i32 3
  store %struct.sock* %17, %struct.sock** %6, align 8
  %18 = load %struct.sock*, %struct.sock** %6, align 8
  %19 = call %struct.net* @sock_net(%struct.sock* %18)
  store %struct.net* %19, %struct.net** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %20)
  store %struct.tipc_msg* %21, %struct.tipc_msg** %8, align 8
  %22 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %23 = call i32 @msg_connected(%struct.tipc_msg* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %25 = call i32 @tsk_peer_port(%struct.tipc_sock* %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %27 = call i32 @tsk_peer_node(%struct.tipc_sock* %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %29 = call i32 @msg_origport(%struct.tipc_msg* %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %31 = call i32 @msg_orignode(%struct.tipc_msg* %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %33 = call i32 @msg_errcode(%struct.tipc_msg* %32)
  store i32 %33, i32* %14, align 4
  %34 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %35 = call i32 @msg_mcast(%struct.tipc_msg* %34)
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %195

39:                                               ; preds = %2
  %40 = load %struct.sock*, %struct.sock** %6, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %179 [
    i32 132, label %43
    i32 128, label %114
    i32 131, label %114
    i32 129, label %115
    i32 130, label %135
  ]

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @likely(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %43
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %184

51:                                               ; preds = %47
  %52 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @tipc_sk_finish_conn(%struct.tipc_sock* %52, i32 %53, i32 %54)
  %56 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %57 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %56, i32 0, i32 2
  %58 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %59 = call i32 @msg_importance(%struct.tipc_msg* %58)
  %60 = call i32 @msg_set_importance(i32* %57, i32 %59)
  %61 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %62 = call i32 @msg_data_sz(%struct.tipc_msg* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %195

65:                                               ; preds = %51
  %66 = load %struct.sock*, %struct.sock** %6, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 1
  %68 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %67, align 8
  %69 = load %struct.sock*, %struct.sock** %6, align 8
  %70 = call i32 %68(%struct.sock* %69)
  %71 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %72 = call i32 @msg_set_dest_droppable(%struct.tipc_msg* %71, i32 1)
  store i32 0, i32* %3, align 4
  br label %195

73:                                               ; preds = %43
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77, %73
  store i32 0, i32* %3, align 4
  br label %195

82:                                               ; preds = %77
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @TIPC_ERR_OVERLOAD, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %184

87:                                               ; preds = %82
  %88 = load %struct.sock*, %struct.sock** %6, align 8
  %89 = getelementptr inbounds %struct.sock, %struct.sock* %88, i32 0, i32 4
  %90 = call i32 @skb_queue_empty(i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %184

93:                                               ; preds = %87
  %94 = call i32 @get_random_bytes(i64* %15, i32 2)
  %95 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %96 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sdiv i32 %97, 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %15, align 8
  %101 = urem i64 %100, %99
  store i64 %101, i64* %15, align 8
  %102 = load i64, i64* %15, align 8
  %103 = add i64 %102, 100
  %104 = call i64 @msecs_to_jiffies(i64 %103)
  store i64 %104, i64* %15, align 8
  %105 = load %struct.sock*, %struct.sock** %6, align 8
  %106 = load %struct.sock*, %struct.sock** %6, align 8
  %107 = getelementptr inbounds %struct.sock, %struct.sock* %106, i32 0, i32 3
  %108 = load i32, i32* @jiffies, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %15, align 8
  %111 = add i64 %109, %110
  %112 = trunc i64 %111 to i32
  %113 = call i32 @sk_reset_timer(%struct.sock* %105, i32* %107, i32 %112)
  store i32 0, i32* %3, align 4
  br label %195

114:                                              ; preds = %39, %39
  store i32 0, i32* %3, align 4
  br label %195

115:                                              ; preds = %39
  %116 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %117 = call i32 @msg_is_syn(%struct.tipc_msg* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %115
  %120 = load %struct.net*, %struct.net** %7, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @tipc_node_get_capabilities(%struct.net* %120, i32 %121)
  %123 = load i32, i32* @TIPC_SYN_BIT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  store i32 0, i32* %3, align 4
  br label %195

127:                                              ; preds = %119, %115
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %130
  store i32 1, i32* %3, align 4
  br label %195

134:                                              ; preds = %130, %127
  store i32 0, i32* %3, align 4
  br label %195

135:                                              ; preds = %39
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %135
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %13, align 4
  %148 = icmp eq i32 %146, %147
  br label %149

149:                                              ; preds = %145, %141, %138, %135
  %150 = phi i1 [ false, %141 ], [ false, %138 ], [ false, %135 ], [ %148, %145 ]
  %151 = zext i1 %150 to i32
  %152 = call i32 @likely(i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  store i32 1, i32* %3, align 4
  br label %195

155:                                              ; preds = %149
  %156 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %157 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %158 = call i32 @tsk_peer_msg(%struct.tipc_sock* %156, %struct.tipc_msg* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %155
  store i32 0, i32* %3, align 4
  br label %195

161:                                              ; preds = %155
  %162 = load i32, i32* %14, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  store i32 1, i32* %3, align 4
  br label %195

165:                                              ; preds = %161
  %166 = load %struct.sock*, %struct.sock** %6, align 8
  %167 = call i32 @tipc_set_sk_state(%struct.sock* %166, i32 131)
  %168 = load %struct.net*, %struct.net** %7, align 8
  %169 = load i32, i32* %11, align 4
  %170 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %171 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @tipc_node_remove_conn(%struct.net* %168, i32 %169, i32 %172)
  %174 = load %struct.sock*, %struct.sock** %6, align 8
  %175 = getelementptr inbounds %struct.sock, %struct.sock* %174, i32 0, i32 1
  %176 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %175, align 8
  %177 = load %struct.sock*, %struct.sock** %6, align 8
  %178 = call i32 %176(%struct.sock* %177)
  store i32 1, i32* %3, align 4
  br label %195

179:                                              ; preds = %39
  %180 = load %struct.sock*, %struct.sock** %6, align 8
  %181 = getelementptr inbounds %struct.sock, %struct.sock* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %179, %92, %86, %50
  %185 = load %struct.sock*, %struct.sock** %6, align 8
  %186 = call i32 @tipc_set_sk_state(%struct.sock* %185, i32 131)
  %187 = load i32, i32* @ECONNREFUSED, align 4
  %188 = load %struct.sock*, %struct.sock** %6, align 8
  %189 = getelementptr inbounds %struct.sock, %struct.sock* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 8
  %190 = load %struct.sock*, %struct.sock** %6, align 8
  %191 = getelementptr inbounds %struct.sock, %struct.sock* %190, i32 0, i32 1
  %192 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %191, align 8
  %193 = load %struct.sock*, %struct.sock** %6, align 8
  %194 = call i32 %192(%struct.sock* %193)
  store i32 1, i32* %3, align 4
  br label %195

195:                                              ; preds = %184, %165, %164, %160, %154, %134, %133, %126, %114, %93, %81, %65, %64, %38
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_connected(%struct.tipc_msg*) #1

declare dso_local i32 @tsk_peer_port(%struct.tipc_sock*) #1

declare dso_local i32 @tsk_peer_node(%struct.tipc_sock*) #1

declare dso_local i32 @msg_origport(%struct.tipc_msg*) #1

declare dso_local i32 @msg_orignode(%struct.tipc_msg*) #1

declare dso_local i32 @msg_errcode(%struct.tipc_msg*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @msg_mcast(%struct.tipc_msg*) #1

declare dso_local i32 @likely(i32) #1

declare dso_local i32 @tipc_sk_finish_conn(%struct.tipc_sock*, i32, i32) #1

declare dso_local i32 @msg_set_importance(i32*, i32) #1

declare dso_local i32 @msg_importance(%struct.tipc_msg*) #1

declare dso_local i32 @msg_data_sz(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_dest_droppable(%struct.tipc_msg*, i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @get_random_bytes(i64*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @sk_reset_timer(%struct.sock*, i32*, i32) #1

declare dso_local i32 @msg_is_syn(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_node_get_capabilities(%struct.net*, i32) #1

declare dso_local i32 @tsk_peer_msg(%struct.tipc_sock*, %struct.tipc_msg*) #1

declare dso_local i32 @tipc_set_sk_state(%struct.sock*, i32) #1

declare dso_local i32 @tipc_node_remove_conn(%struct.net*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

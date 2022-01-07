; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_filter_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_filter_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, %struct.sk_buff_head, i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_sock = type { %struct.TYPE_3__, %struct.tipc_group* }
%struct.TYPE_3__ = type { i32 }
%struct.tipc_group = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.net = type { i32 }
%struct.TYPE_4__ = type { i64 }

@TIPC_OK = common dso_local global i32 0, align 4
@TIPC_DUMP_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@TIPC_MCAST_MSG = common dso_local global i32 0, align 4
@TIPC_ERR_NO_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"err_overload2!\00", align 1
@TIPC_ERR_OVERLOAD = common dso_local global i32 0, align 4
@TIPC_DUMP_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"@filter_rcv!\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"rcvq >90% allocated!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*, %struct.sk_buff_head*)* @tipc_sk_filter_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_sk_filter_rcv(%struct.sock* %0, %struct.sk_buff* %1, %struct.sk_buff_head* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tipc_sock*, align 8
  %9 = alloca %struct.tipc_group*, align 8
  %10 = alloca %struct.tipc_msg*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.sk_buff_head, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %6, align 8
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call i32 @tipc_sk_type_connectionless(%struct.sock* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = call %struct.tipc_sock* @tipc_sk(%struct.sock* %21)
  store %struct.tipc_sock* %22, %struct.tipc_sock** %8, align 8
  %23 = load %struct.tipc_sock*, %struct.tipc_sock** %8, align 8
  %24 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %23, i32 0, i32 1
  %25 = load %struct.tipc_group*, %struct.tipc_group** %24, align 8
  store %struct.tipc_group* %25, %struct.tipc_group** %9, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %26)
  store %struct.tipc_msg* %27, %struct.tipc_msg** %10, align 8
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = call %struct.net* @sock_net(%struct.sock* %28)
  store %struct.net* %29, %struct.net** %11, align 8
  %30 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %31 = call i32 @msg_type(%struct.tipc_msg* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* @TIPC_OK, align 4
  store i32 %32, i32* %15, align 4
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = load i32, i32* @TIPC_DUMP_ALL, align 4
  %36 = call i32 @trace_tipc_sk_filter_rcv(%struct.sock* %33, %struct.sk_buff* %34, i32 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call %struct.TYPE_4__* @TIPC_SKB_CB(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %12)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %12, %struct.sk_buff* %41)
  %43 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %44 = call i32 @msg_isdata(%struct.tipc_msg* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %3
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %53 = call i32 @tipc_sk_proto_rcv(%struct.sock* %51, %struct.sk_buff_head* %12, %struct.sk_buff_head* %52)
  br label %54

54:                                               ; preds = %50, %3
  %55 = load %struct.tipc_group*, %struct.tipc_group** %9, align 8
  %56 = ptrtoint %struct.tipc_group* %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.tipc_group*, %struct.tipc_group** %9, align 8
  %61 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %62 = call i32 @tipc_group_filter_msg(%struct.tipc_group* %60, %struct.sk_buff_head* %12, %struct.sk_buff_head* %61)
  br label %63

63:                                               ; preds = %59, %54
  %64 = load %struct.tipc_group*, %struct.tipc_group** %9, align 8
  %65 = icmp ne %struct.tipc_group* %64, null
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %63
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @TIPC_MCAST_MSG, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load %struct.net*, %struct.net** %11, align 8
  %76 = load %struct.tipc_sock*, %struct.tipc_sock** %8, align 8
  %77 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = call i32 @tipc_mcast_filter_msg(%struct.net* %75, i32* %78, %struct.sk_buff_head* %12)
  br label %80

80:                                               ; preds = %74, %70, %63
  br label %81

81:                                               ; preds = %152, %150, %80
  %82 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %12)
  store %struct.sk_buff* %82, %struct.sk_buff** %5, align 8
  %83 = icmp ne %struct.sk_buff* %82, null
  br i1 %83, label %84, label %169

84:                                               ; preds = %81
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %85)
  store %struct.tipc_msg* %86, %struct.tipc_msg** %10, align 8
  %87 = load %struct.sock*, %struct.sock** %4, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = call i32 @rcvbuf_limit(%struct.sock* %87, %struct.sk_buff* %88)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load %struct.tipc_sock*, %struct.tipc_sock** %8, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = call i32 @tipc_sk_filter_connect(%struct.tipc_sock* %93, %struct.sk_buff* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %92, %84
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %102 = call i64 @msg_connected(%struct.tipc_msg* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %100, %97
  %105 = load %struct.tipc_group*, %struct.tipc_group** %9, align 8
  %106 = icmp ne %struct.tipc_group* %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %109 = call i64 @msg_in_group(%struct.tipc_msg* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107, %100, %92
  %112 = load i32, i32* @TIPC_ERR_NO_PORT, align 4
  store i32 %112, i32* %15, align 4
  br label %132

113:                                              ; preds = %107, %104
  %114 = load %struct.sock*, %struct.sock** %4, align 8
  %115 = call i32 @sk_rmem_alloc_get(%struct.sock* %114)
  %116 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %115, %118
  %120 = load i32, i32* %14, align 4
  %121 = icmp sge i32 %119, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %113
  %123 = load %struct.sock*, %struct.sock** %4, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %125 = load i32, i32* @TIPC_DUMP_ALL, align 4
  %126 = call i32 @trace_tipc_sk_dump(%struct.sock* %123, %struct.sk_buff* %124, i32 %125, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %127 = load %struct.sock*, %struct.sock** %4, align 8
  %128 = getelementptr inbounds %struct.sock, %struct.sock* %127, i32 0, i32 2
  %129 = call i32 @atomic_inc(i32* %128)
  %130 = load i32, i32* @TIPC_ERR_OVERLOAD, align 4
  store i32 %130, i32* %15, align 4
  br label %131

131:                                              ; preds = %122, %113
  br label %132

132:                                              ; preds = %131, %111
  %133 = load i32, i32* %15, align 4
  %134 = call i64 @unlikely(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %132
  %137 = load %struct.net*, %struct.net** %11, align 8
  %138 = call i32 @tipc_own_addr(%struct.net* %137)
  %139 = load i32, i32* %15, align 4
  %140 = call i64 @tipc_msg_reverse(i32 %138, %struct.sk_buff** %5, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %136
  %143 = load %struct.sock*, %struct.sock** %4, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %145 = load i32, i32* @TIPC_DUMP_NONE, align 4
  %146 = call i32 @trace_tipc_sk_rej_msg(%struct.sock* %143, %struct.sk_buff* %144, i32 %145, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %147 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %149 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %147, %struct.sk_buff* %148)
  br label %150

150:                                              ; preds = %142, %136
  %151 = load i32, i32* @TIPC_OK, align 4
  store i32 %151, i32* %15, align 4
  br label %81

152:                                              ; preds = %132
  %153 = load %struct.sock*, %struct.sock** %4, align 8
  %154 = getelementptr inbounds %struct.sock, %struct.sock* %153, i32 0, i32 1
  %155 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %156 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %154, %struct.sk_buff* %155)
  %157 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %158 = load %struct.sock*, %struct.sock** %4, align 8
  %159 = call i32 @skb_set_owner_r(%struct.sk_buff* %157, %struct.sock* %158)
  %160 = load %struct.sock*, %struct.sock** %4, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %162 = load i32, i32* @TIPC_DUMP_ALL, align 4
  %163 = call i32 @trace_tipc_sk_overlimit2(%struct.sock* %160, %struct.sk_buff* %161, i32 %162, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %164 = load %struct.sock*, %struct.sock** %4, align 8
  %165 = getelementptr inbounds %struct.sock, %struct.sock* %164, i32 0, i32 0
  %166 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %165, align 8
  %167 = load %struct.sock*, %struct.sock** %4, align 8
  %168 = call i32 %166(%struct.sock* %167)
  br label %81

169:                                              ; preds = %81
  ret void
}

declare dso_local i32 @tipc_sk_type_connectionless(%struct.sock*) #1

declare dso_local %struct.tipc_sock* @tipc_sk(%struct.sock*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @msg_type(%struct.tipc_msg*) #1

declare dso_local i32 @trace_tipc_sk_filter_rcv(%struct.sock*, %struct.sk_buff*, i32, i8*) #1

declare dso_local %struct.TYPE_4__* @TIPC_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @msg_isdata(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_sk_proto_rcv(%struct.sock*, %struct.sk_buff_head*, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_group_filter_msg(%struct.tipc_group*, %struct.sk_buff_head*, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_mcast_filter_msg(%struct.net*, i32*, %struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @rcvbuf_limit(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tipc_sk_filter_connect(%struct.tipc_sock*, %struct.sk_buff*) #1

declare dso_local i64 @msg_connected(%struct.tipc_msg*) #1

declare dso_local i64 @msg_in_group(%struct.tipc_msg*) #1

declare dso_local i32 @sk_rmem_alloc_get(%struct.sock*) #1

declare dso_local i32 @trace_tipc_sk_dump(%struct.sock*, %struct.sk_buff*, i32, i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @tipc_msg_reverse(i32, %struct.sk_buff**, i32) #1

declare dso_local i32 @tipc_own_addr(%struct.net*) #1

declare dso_local i32 @trace_tipc_sk_rej_msg(%struct.sock*, %struct.sk_buff*, i32, i8*) #1

declare dso_local i32 @skb_set_owner_r(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @trace_tipc_sk_overlimit2(%struct.sock*, %struct.sk_buff*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

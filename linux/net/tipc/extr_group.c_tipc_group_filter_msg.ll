; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_group.c_tipc_group_filter_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_group.c_tipc_group_filter_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_group = type { i32, i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_member = type { i32, i32, %struct.sk_buff_head, i32 }
%struct.tipc_msg = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MBR_LEAVING = common dso_local global i32 0, align 4
@GRP_ACK_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_group_filter_msg(%struct.tipc_group* %0, %struct.sk_buff_head* %1, %struct.sk_buff_head* %2) #0 {
  %4 = alloca %struct.tipc_group*, align 8
  %5 = alloca %struct.sk_buff_head*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff_head*, align 8
  %13 = alloca %struct.tipc_member*, align 8
  %14 = alloca %struct.tipc_msg*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.tipc_group* %0, %struct.tipc_group** %4, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %5, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %6, align 8
  %19 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %20 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %7, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %163

24:                                               ; preds = %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %25)
  store %struct.tipc_msg* %26, %struct.tipc_msg** %14, align 8
  %27 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %28 = call i32 @msg_orignode(%struct.tipc_msg* %27)
  store i32 %28, i32* %15, align 4
  %29 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %30 = call i32 @msg_origport(%struct.tipc_msg* %29)
  store i32 %30, i32* %16, align 4
  %31 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %32 = call i32 @msg_in_group(%struct.tipc_msg* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  br label %160

35:                                               ; preds = %24
  %36 = load %struct.tipc_group*, %struct.tipc_group** %4, align 8
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %16, align 4
  %39 = call %struct.tipc_member* @tipc_group_find_member(%struct.tipc_group* %36, i32 %37, i32 %38)
  store %struct.tipc_member* %39, %struct.tipc_member** %13, align 8
  %40 = load %struct.tipc_member*, %struct.tipc_member** %13, align 8
  %41 = call i32 @tipc_group_is_sender(%struct.tipc_member* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  br label %160

44:                                               ; preds = %35
  %45 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %46 = call i32 @msg_grp_bc_seqno(%struct.tipc_msg* %45)
  %47 = load %struct.tipc_member*, %struct.tipc_member** %13, align 8
  %48 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @less(i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %160

53:                                               ; preds = %44
  %54 = load %struct.tipc_member*, %struct.tipc_member** %13, align 8
  %55 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = call %struct.TYPE_2__* @TIPC_SKB_CB(%struct.sk_buff* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.tipc_member*, %struct.tipc_member** %13, align 8
  %61 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %60, i32 0, i32 2
  store %struct.sk_buff_head* %61, %struct.sk_buff_head** %12, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = load %struct.sk_buff_head*, %struct.sk_buff_head** %12, align 8
  %64 = call i32 @tipc_group_sort_msg(%struct.sk_buff* %62, %struct.sk_buff_head* %63)
  br label %65

65:                                               ; preds = %152, %151, %53
  %66 = load %struct.sk_buff_head*, %struct.sk_buff_head** %12, align 8
  %67 = call %struct.sk_buff* @skb_peek(%struct.sk_buff_head* %66)
  store %struct.sk_buff* %67, %struct.sk_buff** %7, align 8
  %68 = icmp ne %struct.sk_buff* %67, null
  br i1 %68, label %69, label %159

69:                                               ; preds = %65
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %70)
  store %struct.tipc_msg* %71, %struct.tipc_msg** %14, align 8
  %72 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %73 = call i32 @msg_type(%struct.tipc_msg* %72)
  store i32 %73, i32* %17, align 4
  %74 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %75 = call i32 @msg_blocks(%struct.tipc_msg* %74)
  store i32 %75, i32* %18, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %76 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %77 = call i32 @msg_grp_bc_seqno(%struct.tipc_msg* %76)
  %78 = load %struct.tipc_member*, %struct.tipc_member** %13, align 8
  %79 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @more(i32 %77, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  br label %159

84:                                               ; preds = %69
  %85 = load i32, i32* %17, align 4
  switch i32 %85, label %117 [
    i32 130, label %86
    i32 131, label %95
    i32 128, label %102
    i32 129, label %103
  ]

86:                                               ; preds = %84
  %87 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %88 = call i32 @msg_nameinst(%struct.tipc_msg* %87)
  %89 = load %struct.tipc_group*, %struct.tipc_group** %4, align 8
  %90 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %93, %86
  br label %95

95:                                               ; preds = %84, %94
  %96 = load %struct.tipc_member*, %struct.tipc_member** %13, align 8
  %97 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %101 = call i32 @msg_grp_bc_ack_req(%struct.tipc_msg* %100)
  store i32 %101, i32* %8, align 4
  br label %118

102:                                              ; preds = %84
  br label %118

103:                                              ; preds = %84
  %104 = load %struct.tipc_member*, %struct.tipc_member** %13, align 8
  %105 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @MBR_LEAVING, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 1, i32* %11, align 4
  br label %110

110:                                              ; preds = %109, %103
  %111 = load %struct.tipc_group*, %struct.tipc_group** %4, align 8
  %112 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %110
  store i32 0, i32* %9, align 4
  br label %116

116:                                              ; preds = %115, %110
  br label %118

117:                                              ; preds = %84
  br label %118

118:                                              ; preds = %117, %116, %102, %95
  %119 = load %struct.sk_buff_head*, %struct.sk_buff_head** %12, align 8
  %120 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %119)
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %126 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %124, %struct.sk_buff* %125)
  br label %130

127:                                              ; preds = %118
  %128 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %129 = call i32 @kfree_skb(%struct.sk_buff* %128)
  br label %130

130:                                              ; preds = %127, %123
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load %struct.tipc_group*, %struct.tipc_group** %4, align 8
  %135 = load %struct.tipc_member*, %struct.tipc_member** %13, align 8
  %136 = load i32, i32* @GRP_ACK_MSG, align 4
  %137 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %138 = call i32 @tipc_group_proto_xmit(%struct.tipc_group* %134, %struct.tipc_member* %135, i32 %136, %struct.sk_buff_head* %137)
  br label %139

139:                                              ; preds = %133, %130
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load %struct.sk_buff_head*, %struct.sk_buff_head** %12, align 8
  %144 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %143)
  %145 = load %struct.tipc_group*, %struct.tipc_group** %4, align 8
  %146 = load %struct.tipc_member*, %struct.tipc_member** %13, align 8
  %147 = call i32 @tipc_group_delete_member(%struct.tipc_group* %145, %struct.tipc_member* %146)
  br label %159

148:                                              ; preds = %139
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %148
  br label %65

152:                                              ; preds = %148
  %153 = load %struct.tipc_group*, %struct.tipc_group** %4, align 8
  %154 = load i32, i32* %18, align 4
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %16, align 4
  %157 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %158 = call i32 @tipc_group_update_rcv_win(%struct.tipc_group* %153, i32 %154, i32 %155, i32 %156, %struct.sk_buff_head* %157)
  br label %65

159:                                              ; preds = %142, %83, %65
  br label %163

160:                                              ; preds = %52, %43, %34
  %161 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %162 = call i32 @kfree_skb(%struct.sk_buff* %161)
  br label %163

163:                                              ; preds = %160, %159, %23
  ret void
}

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_orignode(%struct.tipc_msg*) #1

declare dso_local i32 @msg_origport(%struct.tipc_msg*) #1

declare dso_local i32 @msg_in_group(%struct.tipc_msg*) #1

declare dso_local %struct.tipc_member* @tipc_group_find_member(%struct.tipc_group*, i32, i32) #1

declare dso_local i32 @tipc_group_is_sender(%struct.tipc_member*) #1

declare dso_local i64 @less(i32, i32) #1

declare dso_local i32 @msg_grp_bc_seqno(%struct.tipc_msg*) #1

declare dso_local %struct.TYPE_2__* @TIPC_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @tipc_group_sort_msg(%struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @skb_peek(%struct.sk_buff_head*) #1

declare dso_local i32 @msg_type(%struct.tipc_msg*) #1

declare dso_local i32 @msg_blocks(%struct.tipc_msg*) #1

declare dso_local i64 @more(i32, i32) #1

declare dso_local i32 @msg_nameinst(%struct.tipc_msg*) #1

declare dso_local i32 @msg_grp_bc_ack_req(%struct.tipc_msg*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @tipc_group_proto_xmit(%struct.tipc_group*, %struct.tipc_member*, i32, %struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_purge(%struct.sk_buff_head*) #1

declare dso_local i32 @tipc_group_delete_member(%struct.tipc_group*, %struct.tipc_member*) #1

declare dso_local i32 @tipc_group_update_rcv_win(%struct.tipc_group*, i32, i32, i32, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

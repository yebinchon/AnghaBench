; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_mcast_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_mcast_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }
%struct.list_head = type { i32 }
%struct.tipc_msg = type { i32 }

@TIPC_GRP_UCAST_MSG = common dso_local global i32 0, align 4
@GROUP_PROTOCOL = common dso_local global i32 0, align 4
@TIPC_NODE_SCOPE = common dso_local global i64 0, align 8
@TIPC_CLUSTER_SCOPE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to clone mcast rcv buffer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_sk_mcast_rcv(%struct.net* %0, %struct.sk_buff_head* %1, %struct.sk_buff_head* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sk_buff_head*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.sk_buff_head, align 4
  %17 = alloca %struct.list_head, align 4
  %18 = alloca %struct.tipc_msg*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %5, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %6, align 8
  %23 = load %struct.net*, %struct.net** %4, align 8
  %24 = call i64 @tipc_own_addr(%struct.net* %23)
  store i64 %24, i64* %7, align 8
  %25 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %16)
  %26 = call i32 @INIT_LIST_HEAD(%struct.list_head* %17)
  %27 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %28 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %29 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %28, i32 0, i32 0
  %30 = call %struct.sk_buff* @tipc_skb_peek(%struct.sk_buff_head* %27, i32* %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %12, align 8
  br label %31

31:                                               ; preds = %145, %3
  %32 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %34, label %150

34:                                               ; preds = %31
  %35 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %36 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %35)
  store %struct.tipc_msg* %36, %struct.tipc_msg** %18, align 8
  %37 = load %struct.tipc_msg*, %struct.tipc_msg** %18, align 8
  %38 = call i32 @msg_user(%struct.tipc_msg* %37)
  store i32 %38, i32* %19, align 4
  %39 = load %struct.tipc_msg*, %struct.tipc_msg** %18, align 8
  %40 = call i32 @msg_type(%struct.tipc_msg* %39)
  store i32 %40, i32* %20, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %42 = call i32 @skb_headroom(%struct.sk_buff* %41)
  %43 = load %struct.tipc_msg*, %struct.tipc_msg** %18, align 8
  %44 = call i32 @msg_hdr_sz(%struct.tipc_msg* %43)
  %45 = add nsw i32 %42, %44
  store i32 %45, i32* %21, align 4
  %46 = load %struct.tipc_msg*, %struct.tipc_msg** %18, align 8
  %47 = call i64 @msg_orignode(%struct.tipc_msg* %46)
  store i64 %47, i64* %15, align 8
  %48 = load %struct.tipc_msg*, %struct.tipc_msg** %18, align 8
  %49 = call i64 @msg_nametype(%struct.tipc_msg* %48)
  store i64 %49, i64* %8, align 8
  %50 = load i32, i32* %20, align 4
  %51 = load i32, i32* @TIPC_GRP_UCAST_MSG, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %34
  %54 = load i32, i32* %19, align 4
  %55 = load i32, i32* @GROUP_PROTOCOL, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %53, %34
  %58 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %59 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %58, i32 0, i32 0
  %60 = call i32 @spin_lock_bh(i32* %59)
  %61 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %62 = call %struct.sk_buff* @skb_peek(%struct.sk_buff_head* %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %64 = icmp eq %struct.sk_buff* %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %67 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %66)
  %68 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %70 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %68, %struct.sk_buff* %69)
  br label %71

71:                                               ; preds = %65, %57
  %72 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %73 = call i32 @kfree_skb(%struct.sk_buff* %72)
  %74 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %75 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock_bh(i32* %75)
  br label %145

77:                                               ; preds = %53
  %78 = load %struct.tipc_msg*, %struct.tipc_msg** %18, align 8
  %79 = call i64 @msg_in_group(%struct.tipc_msg* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  store i64 0, i64* %9, align 8
  store i64 -1, i64* %10, align 8
  %82 = load %struct.tipc_msg*, %struct.tipc_msg** %18, align 8
  %83 = call i64 @msg_lookup_scope(%struct.tipc_msg* %82)
  store i64 %83, i64* %11, align 8
  store i32 1, i32* %22, align 4
  br label %97

84:                                               ; preds = %77
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* %7, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i64, i64* @TIPC_NODE_SCOPE, align 8
  store i64 %89, i64* %11, align 8
  br label %92

90:                                               ; preds = %84
  %91 = load i64, i64* @TIPC_CLUSTER_SCOPE, align 8
  store i64 %91, i64* %11, align 8
  br label %92

92:                                               ; preds = %90, %88
  store i32 0, i32* %22, align 4
  %93 = load %struct.tipc_msg*, %struct.tipc_msg** %18, align 8
  %94 = call i64 @msg_namelower(%struct.tipc_msg* %93)
  store i64 %94, i64* %9, align 8
  %95 = load %struct.tipc_msg*, %struct.tipc_msg** %18, align 8
  %96 = call i64 @msg_nameupper(%struct.tipc_msg* %95)
  store i64 %96, i64* %10, align 8
  br label %97

97:                                               ; preds = %92, %81
  %98 = load %struct.net*, %struct.net** %4, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i32, i32* %22, align 4
  %104 = call i32 @tipc_nametbl_mc_lookup(%struct.net* %98, i64 %99, i64 %100, i64 %101, i64 %102, i32 %103, %struct.list_head* %17)
  br label %105

105:                                              ; preds = %122, %115, %97
  %106 = call i64 @tipc_dest_pop(%struct.list_head* %17, i32* null, i64* %14)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %105
  %109 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %110 = load i32, i32* %21, align 4
  %111 = load i32, i32* @GFP_ATOMIC, align 4
  %112 = call %struct.sk_buff* @__pskb_copy(%struct.sk_buff* %109, i32 %110, i32 %111)
  store %struct.sk_buff* %112, %struct.sk_buff** %13, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %114 = icmp ne %struct.sk_buff* %113, null
  br i1 %114, label %115, label %122

115:                                              ; preds = %108
  %116 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %117 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %116)
  %118 = load i64, i64* %14, align 8
  %119 = call i32 @msg_set_destport(%struct.tipc_msg* %117, i64 %118)
  %120 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %121 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %16, %struct.sk_buff* %120)
  br label %105

122:                                              ; preds = %108
  %123 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %105

124:                                              ; preds = %105
  %125 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %126 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %125, i32 0, i32 0
  %127 = call i32 @spin_lock_bh(i32* %126)
  %128 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %129 = call %struct.sk_buff* @skb_peek(%struct.sk_buff_head* %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %131 = icmp eq %struct.sk_buff* %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %124
  %133 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %134 = call i32 @skb_queue_splice_tail_init(%struct.sk_buff_head* %16, %struct.sk_buff_head* %133)
  %135 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %136 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %135)
  %137 = call i32 @kfree_skb(%struct.sk_buff* %136)
  br label %138

138:                                              ; preds = %132, %124
  %139 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %140 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %139, i32 0, i32 0
  %141 = call i32 @spin_unlock_bh(i32* %140)
  %142 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %16)
  %143 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %144 = call i32 @kfree_skb(%struct.sk_buff* %143)
  br label %145

145:                                              ; preds = %138, %71
  %146 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %147 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %148 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %147, i32 0, i32 0
  %149 = call %struct.sk_buff* @tipc_skb_peek(%struct.sk_buff_head* %146, i32* %148)
  store %struct.sk_buff* %149, %struct.sk_buff** %12, align 8
  br label %31

150:                                              ; preds = %31
  %151 = load %struct.net*, %struct.net** %4, align 8
  %152 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %153 = call i32 @tipc_sk_rcv(%struct.net* %151, %struct.sk_buff_head* %152)
  ret void
}

declare dso_local i64 @tipc_own_addr(%struct.net*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local %struct.sk_buff* @tipc_skb_peek(%struct.sk_buff_head*, i32*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_user(%struct.tipc_msg*) #1

declare dso_local i32 @msg_type(%struct.tipc_msg*) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @msg_hdr_sz(%struct.tipc_msg*) #1

declare dso_local i64 @msg_orignode(%struct.tipc_msg*) #1

declare dso_local i64 @msg_nametype(%struct.tipc_msg*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(%struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @msg_in_group(%struct.tipc_msg*) #1

declare dso_local i64 @msg_lookup_scope(%struct.tipc_msg*) #1

declare dso_local i64 @msg_namelower(%struct.tipc_msg*) #1

declare dso_local i64 @msg_nameupper(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_nametbl_mc_lookup(%struct.net*, i64, i64, i64, i64, i32, %struct.list_head*) #1

declare dso_local i64 @tipc_dest_pop(%struct.list_head*, i32*, i64*) #1

declare dso_local %struct.sk_buff* @__pskb_copy(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @msg_set_destport(%struct.tipc_msg*, i64) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @skb_queue_splice_tail_init(%struct.sk_buff_head*, %struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_purge(%struct.sk_buff_head*) #1

declare dso_local i32 @tipc_sk_rcv(%struct.net*, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

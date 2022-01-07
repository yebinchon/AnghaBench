; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_bc_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_bc_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.tipc_bclink_entry = type { %struct.sk_buff_head, %struct.sk_buff_head, i32 }
%struct.tipc_link_entry = type { i32, i32 }
%struct.tipc_msg = type { i32 }
%struct.tipc_node = type { %struct.tipc_bclink_entry, %struct.tipc_link_entry* }

@BCAST_PROTOCOL = common dso_local global i32 0, align 4
@TIPC_LINK_SND_STATE = common dso_local global i32 0, align 4
@TIPC_LINK_DOWN_EVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.sk_buff*, i32)* @tipc_node_bc_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_node_bc_rcv(%struct.net* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff_head, align 4
  %9 = alloca %struct.tipc_bclink_entry*, align 8
  %10 = alloca %struct.tipc_link_entry*, align 8
  %11 = alloca %struct.tipc_msg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.tipc_node*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %15)
  store %struct.tipc_msg* %16, %struct.tipc_msg** %11, align 8
  %17 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %18 = call i32 @msg_user(%struct.tipc_msg* %17)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %20 = call i64 @msg_destnode(%struct.tipc_msg* %19)
  store i64 %20, i64* %13, align 8
  %21 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %8)
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @BCAST_PROTOCOL, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load i64, i64* %13, align 8
  %27 = load %struct.net*, %struct.net** %4, align 8
  %28 = call i64 @tipc_own_addr(%struct.net* %27)
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.net*, %struct.net** %4, align 8
  %32 = load i64, i64* %13, align 8
  %33 = call %struct.tipc_node* @tipc_node_find(%struct.net* %31, i64 %32)
  store %struct.tipc_node* %33, %struct.tipc_node** %14, align 8
  br label %39

34:                                               ; preds = %25, %3
  %35 = load %struct.net*, %struct.net** %4, align 8
  %36 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %37 = call i64 @msg_prevnode(%struct.tipc_msg* %36)
  %38 = call %struct.tipc_node* @tipc_node_find(%struct.net* %35, i64 %37)
  store %struct.tipc_node* %38, %struct.tipc_node** %14, align 8
  br label %39

39:                                               ; preds = %34, %30
  %40 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %41 = icmp ne %struct.tipc_node* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call i32 @kfree_skb(%struct.sk_buff* %43)
  br label %113

45:                                               ; preds = %39
  %46 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %47 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %46, i32 0, i32 0
  store %struct.tipc_bclink_entry* %47, %struct.tipc_bclink_entry** %9, align 8
  %48 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %49 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %48, i32 0, i32 1
  %50 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %50, i64 %52
  store %struct.tipc_link_entry* %53, %struct.tipc_link_entry** %10, align 8
  %54 = load %struct.net*, %struct.net** %4, align 8
  %55 = load %struct.tipc_bclink_entry*, %struct.tipc_bclink_entry** %9, align 8
  %56 = getelementptr inbounds %struct.tipc_bclink_entry, %struct.tipc_bclink_entry* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = call i32 @tipc_bcast_rcv(%struct.net* %54, i32 %57, %struct.sk_buff* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @TIPC_LINK_SND_STATE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %45
  %65 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %66 = call i32 @tipc_node_read_lock(%struct.tipc_node* %65)
  %67 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %10, align 8
  %68 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @tipc_link_build_state_msg(i32 %69, %struct.sk_buff_head* %8)
  %71 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %72 = call i32 @tipc_node_read_unlock(%struct.tipc_node* %71)
  br label %73

73:                                               ; preds = %64, %45
  %74 = call i32 @skb_queue_empty(%struct.sk_buff_head* %8)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load %struct.net*, %struct.net** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %10, align 8
  %80 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %79, i32 0, i32 0
  %81 = call i32 @tipc_bearer_xmit(%struct.net* %77, i32 %78, %struct.sk_buff_head* %8, i32* %80)
  br label %82

82:                                               ; preds = %76, %73
  %83 = load %struct.tipc_bclink_entry*, %struct.tipc_bclink_entry** %9, align 8
  %84 = getelementptr inbounds %struct.tipc_bclink_entry, %struct.tipc_bclink_entry* %83, i32 0, i32 1
  %85 = call i32 @skb_queue_empty(%struct.sk_buff_head* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %89 = call i32 @tipc_node_mcast_rcv(%struct.tipc_node* %88)
  br label %90

90:                                               ; preds = %87, %82
  %91 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %92 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.tipc_bclink_entry, %struct.tipc_bclink_entry* %92, i32 0, i32 0
  %94 = call i32 @skb_queue_empty(%struct.sk_buff_head* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load %struct.net*, %struct.net** %4, align 8
  %98 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %99 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.tipc_bclink_entry, %struct.tipc_bclink_entry* %99, i32 0, i32 0
  %101 = call i32 @tipc_named_rcv(%struct.net* %97, %struct.sk_buff_head* %100)
  br label %102

102:                                              ; preds = %96, %90
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @TIPC_LINK_DOWN_EVT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %109 = call i32 @tipc_node_reset_links(%struct.tipc_node* %108)
  br label %110

110:                                              ; preds = %107, %102
  %111 = load %struct.tipc_node*, %struct.tipc_node** %14, align 8
  %112 = call i32 @tipc_node_put(%struct.tipc_node* %111)
  br label %113

113:                                              ; preds = %110, %42
  ret void
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_user(%struct.tipc_msg*) #1

declare dso_local i64 @msg_destnode(%struct.tipc_msg*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i64 @tipc_own_addr(%struct.net*) #1

declare dso_local %struct.tipc_node* @tipc_node_find(%struct.net*, i64) #1

declare dso_local i64 @msg_prevnode(%struct.tipc_msg*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @tipc_bcast_rcv(%struct.net*, i32, %struct.sk_buff*) #1

declare dso_local i32 @tipc_node_read_lock(%struct.tipc_node*) #1

declare dso_local i32 @tipc_link_build_state_msg(i32, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_node_read_unlock(%struct.tipc_node*) #1

declare dso_local i32 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local i32 @tipc_bearer_xmit(%struct.net*, i32, %struct.sk_buff_head*, i32*) #1

declare dso_local i32 @tipc_node_mcast_rcv(%struct.tipc_node*) #1

declare dso_local i32 @tipc_named_rcv(%struct.net*, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_node_reset_links(%struct.tipc_node*) #1

declare dso_local i32 @tipc_node_put(%struct.tipc_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

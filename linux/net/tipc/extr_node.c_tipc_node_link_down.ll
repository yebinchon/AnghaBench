; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_link_down.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { i32, i32, i32, %struct.tipc_link_entry* }
%struct.tipc_link_entry = type { i32, %struct.tipc_link* }
%struct.tipc_link = type { i32 }
%struct.tipc_media_addr = type { i32 }
%struct.sk_buff_head = type { i32 }

@LINK_RESET_EVT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"node link down or deleted!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_node*, i32, i32)* @tipc_node_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_node_link_down(%struct.tipc_node* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tipc_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tipc_link_entry*, align 8
  %8 = alloca %struct.tipc_media_addr*, align 8
  %9 = alloca %struct.tipc_link*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff_head, align 4
  store %struct.tipc_node* %0, %struct.tipc_node** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %13 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %12, i32 0, i32 3
  %14 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %14, i64 %16
  store %struct.tipc_link_entry* %17, %struct.tipc_link_entry** %7, align 8
  store %struct.tipc_media_addr* null, %struct.tipc_media_addr** %8, align 8
  %18 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %7, align 8
  %19 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %18, i32 0, i32 1
  %20 = load %struct.tipc_link*, %struct.tipc_link** %19, align 8
  store %struct.tipc_link* %20, %struct.tipc_link** %9, align 8
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %23 = icmp ne %struct.tipc_link* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %86

25:                                               ; preds = %3
  %26 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %11)
  %27 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %28 = call i32 @tipc_node_write_lock(%struct.tipc_node* %27)
  %29 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %30 = call i32 @tipc_link_is_establishing(%struct.tipc_link* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %34 = call i32 @__tipc_node_link_down(%struct.tipc_node* %33, i32* %5, %struct.sk_buff_head* %11, %struct.tipc_media_addr** %8)
  br label %41

35:                                               ; preds = %25
  %36 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %37 = call i32 @tipc_link_reset(%struct.tipc_link* %36)
  %38 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %39 = load i32, i32* @LINK_RESET_EVT, align 4
  %40 = call i32 @tipc_link_fsm_evt(%struct.tipc_link* %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %32
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %46 = call i32 @kfree(%struct.tipc_link* %45)
  %47 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %7, align 8
  %48 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %47, i32 0, i32 1
  store %struct.tipc_link* null, %struct.tipc_link** %48, align 8
  %49 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %50 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %44, %41
  %54 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %55 = call i32 @trace_tipc_node_link_down(%struct.tipc_node* %54, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %57 = call i32 @tipc_node_write_unlock(%struct.tipc_node* %56)
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %53
  %61 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %62 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %65 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @tipc_mon_remove_peer(i32 %63, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %60, %53
  %70 = call i32 @skb_queue_empty(%struct.sk_buff_head* %11)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  %73 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %74 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %8, align 8
  %78 = call i32 @tipc_bearer_xmit(i32 %75, i32 %76, %struct.sk_buff_head* %11, %struct.tipc_media_addr* %77)
  br label %79

79:                                               ; preds = %72, %69
  %80 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %81 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %7, align 8
  %84 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %83, i32 0, i32 0
  %85 = call i32 @tipc_sk_rcv(i32 %82, i32* %84)
  br label %86

86:                                               ; preds = %79, %24
  ret void
}

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @tipc_node_write_lock(%struct.tipc_node*) #1

declare dso_local i32 @tipc_link_is_establishing(%struct.tipc_link*) #1

declare dso_local i32 @__tipc_node_link_down(%struct.tipc_node*, i32*, %struct.sk_buff_head*, %struct.tipc_media_addr**) #1

declare dso_local i32 @tipc_link_reset(%struct.tipc_link*) #1

declare dso_local i32 @tipc_link_fsm_evt(%struct.tipc_link*, i32) #1

declare dso_local i32 @kfree(%struct.tipc_link*) #1

declare dso_local i32 @trace_tipc_node_link_down(%struct.tipc_node*, i32, i8*) #1

declare dso_local i32 @tipc_node_write_unlock(%struct.tipc_node*) #1

declare dso_local i32 @tipc_mon_remove_peer(i32, i32, i32) #1

declare dso_local i32 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local i32 @tipc_bearer_xmit(i32, i32, %struct.sk_buff_head*, %struct.tipc_media_addr*) #1

declare dso_local i32 @tipc_sk_rcv(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

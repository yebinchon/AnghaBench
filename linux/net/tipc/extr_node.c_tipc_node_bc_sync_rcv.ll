; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_bc_sync_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_bc_sync_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { %struct.tipc_link* }
%struct.tipc_link = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.sk_buff_head = type { i32 }

@TIPC_LINK_DOWN_EVT = common dso_local global i32 0, align 4
@TIPC_LINK_SND_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_node*, %struct.tipc_msg*, i32, %struct.sk_buff_head*)* @tipc_node_bc_sync_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_node_bc_sync_rcv(%struct.tipc_node* %0, %struct.tipc_msg* %1, i32 %2, %struct.sk_buff_head* %3) #0 {
  %5 = alloca %struct.tipc_node*, align 8
  %6 = alloca %struct.tipc_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff_head*, align 8
  %9 = alloca %struct.tipc_link*, align 8
  %10 = alloca i32, align 4
  store %struct.tipc_node* %0, %struct.tipc_node** %5, align 8
  store %struct.tipc_msg* %1, %struct.tipc_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff_head* %3, %struct.sk_buff_head** %8, align 8
  %11 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %12 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %15 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %19 = call i32 @tipc_bcast_sync_rcv(i32 %13, i32 %17, %struct.tipc_msg* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @TIPC_LINK_DOWN_EVT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %26 = call i32 @tipc_node_reset_links(%struct.tipc_node* %25)
  br label %58

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @TIPC_LINK_SND_STATE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %58

33:                                               ; preds = %27
  %34 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %35 = call i64 @msg_probe(%struct.tipc_msg* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %58

38:                                               ; preds = %33
  %39 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %40 = call i32 @tipc_node_read_lock(%struct.tipc_node* %39)
  %41 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %42 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.tipc_link*, %struct.tipc_link** %47, align 8
  store %struct.tipc_link* %48, %struct.tipc_link** %9, align 8
  %49 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %50 = icmp ne %struct.tipc_link* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %38
  %52 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %53 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %54 = call i32 @tipc_link_build_state_msg(%struct.tipc_link* %52, %struct.sk_buff_head* %53)
  br label %55

55:                                               ; preds = %51, %38
  %56 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %57 = call i32 @tipc_node_read_unlock(%struct.tipc_node* %56)
  br label %58

58:                                               ; preds = %55, %37, %32, %24
  ret void
}

declare dso_local i32 @tipc_bcast_sync_rcv(i32, i32, %struct.tipc_msg*) #1

declare dso_local i32 @tipc_node_reset_links(%struct.tipc_node*) #1

declare dso_local i64 @msg_probe(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_node_read_lock(%struct.tipc_node*) #1

declare dso_local i32 @tipc_link_build_state_msg(%struct.tipc_link*, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_node_read_unlock(%struct.tipc_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

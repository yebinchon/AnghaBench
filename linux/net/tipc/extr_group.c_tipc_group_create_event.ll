; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_group.c_tipc_group_create_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_group.c_tipc_group_create_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_group = type { i32, i32, i32 }
%struct.tipc_member = type { i32, i32, i32 }
%struct.sk_buff_head = type { i32 }
%struct.tipc_event = type { %struct.TYPE_7__, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.TYPE_8__ = type { i32 }

@TIPC_CRITICAL_IMPORTANCE = common dso_local global i32 0, align 4
@TIPC_GRP_MEMBER_EVT = common dso_local global i32 0, align 4
@GROUP_H_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_group*, %struct.tipc_member*, i32, i32, %struct.sk_buff_head*)* @tipc_group_create_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_group_create_event(%struct.tipc_group* %0, %struct.tipc_member* %1, i32 %2, i32 %3, %struct.sk_buff_head* %4) #0 {
  %6 = alloca %struct.tipc_group*, align 8
  %7 = alloca %struct.tipc_member*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tipc_event, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.tipc_msg*, align 8
  store %struct.tipc_group* %0, %struct.tipc_group** %6, align 8
  store %struct.tipc_member* %1, %struct.tipc_member** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.sk_buff_head* %4, %struct.sk_buff_head** %10, align 8
  %15 = load %struct.tipc_group*, %struct.tipc_group** %6, align 8
  %16 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @tipc_own_addr(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = call i32 @memset(%struct.tipc_event* %12, i32 0, i32 32)
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds %struct.tipc_event, %struct.tipc_event* %12, i32 0, i32 4
  store i32 %20, i32* %21, align 4
  %22 = load %struct.tipc_member*, %struct.tipc_member** %7, align 8
  %23 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.tipc_event, %struct.tipc_event* %12, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = load %struct.tipc_member*, %struct.tipc_member** %7, align 8
  %27 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.tipc_event, %struct.tipc_event* %12, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load %struct.tipc_member*, %struct.tipc_member** %7, align 8
  %31 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.tipc_event, %struct.tipc_event* %12, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.tipc_member*, %struct.tipc_member** %7, align 8
  %36 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.tipc_event, %struct.tipc_event* %12, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.tipc_group*, %struct.tipc_group** %6, align 8
  %41 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.tipc_event, %struct.tipc_event* %12, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 4
  %46 = load %struct.tipc_member*, %struct.tipc_member** %7, align 8
  %47 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.tipc_event, %struct.tipc_event* %12, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.tipc_member*, %struct.tipc_member** %7, align 8
  %53 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.tipc_event, %struct.tipc_event* %12, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @TIPC_CRITICAL_IMPORTANCE, align 4
  %59 = load i32, i32* @TIPC_GRP_MEMBER_EVT, align 4
  %60 = load i32, i32* @GROUP_H_SIZE, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.tipc_member*, %struct.tipc_member** %7, align 8
  %63 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.tipc_group*, %struct.tipc_group** %6, align 8
  %66 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.tipc_member*, %struct.tipc_member** %7, align 8
  %69 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.sk_buff* @tipc_msg_create(i32 %58, i32 %59, i32 %60, i32 32, i32 %61, i32 %64, i32 %67, i32 %70, i32 0)
  store %struct.sk_buff* %71, %struct.sk_buff** %13, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %73 = icmp ne %struct.sk_buff* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %5
  br label %103

75:                                               ; preds = %5
  %76 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %77 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %76)
  store %struct.tipc_msg* %77, %struct.tipc_msg** %14, align 8
  %78 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %79 = load %struct.tipc_group*, %struct.tipc_group** %6, align 8
  %80 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @msg_set_nametype(%struct.tipc_msg* %78, i32 %81)
  %83 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @msg_set_grp_evt(%struct.tipc_msg* %83, i32 %84)
  %86 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %87 = call i32 @msg_set_dest_droppable(%struct.tipc_msg* %86, i32 1)
  %88 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @msg_set_grp_bc_seqno(%struct.tipc_msg* %88, i32 %89)
  %91 = load %struct.tipc_msg*, %struct.tipc_msg** %14, align 8
  %92 = call i32 @msg_data(%struct.tipc_msg* %91)
  %93 = call i32 @memcpy(i32 %92, %struct.tipc_event* %12, i32 32)
  %94 = load %struct.tipc_member*, %struct.tipc_member** %7, align 8
  %95 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %98 = call %struct.TYPE_8__* @TIPC_SKB_CB(%struct.sk_buff* %97)
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 4
  %100 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %102 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %100, %struct.sk_buff* %101)
  br label %103

103:                                              ; preds = %75, %74
  ret void
}

declare dso_local i32 @tipc_own_addr(i32) #1

declare dso_local i32 @memset(%struct.tipc_event*, i32, i32) #1

declare dso_local %struct.sk_buff* @tipc_msg_create(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_set_nametype(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_grp_evt(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_dest_droppable(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_grp_bc_seqno(%struct.tipc_msg*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.tipc_event*, i32) #1

declare dso_local i32 @msg_data(%struct.tipc_msg*) #1

declare dso_local %struct.TYPE_8__* @TIPC_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

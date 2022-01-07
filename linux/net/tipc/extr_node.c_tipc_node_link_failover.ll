; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_link_failover.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_link_failover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { i64 }
%struct.tipc_link = type { i32 }
%struct.sk_buff_head = type { i32 }

@LINK_SYNCH_END_EVT = common dso_local global i32 0, align 4
@NODE_SYNCH_END_EVT = common dso_local global i32 0, align 4
@U16_MAX = common dso_local global i32 0, align 4
@LINK_FAILOVER_BEGIN_EVT = common dso_local global i32 0, align 4
@NODE_FAILOVER_BEGIN_EVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_node*, %struct.tipc_link*, %struct.tipc_link*, %struct.sk_buff_head*)* @tipc_node_link_failover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_node_link_failover(%struct.tipc_node* %0, %struct.tipc_link* %1, %struct.tipc_link* %2, %struct.sk_buff_head* %3) #0 {
  %5 = alloca %struct.tipc_node*, align 8
  %6 = alloca %struct.tipc_link*, align 8
  %7 = alloca %struct.tipc_link*, align 8
  %8 = alloca %struct.sk_buff_head*, align 8
  store %struct.tipc_node* %0, %struct.tipc_node** %5, align 8
  store %struct.tipc_link* %1, %struct.tipc_link** %6, align 8
  store %struct.tipc_link* %2, %struct.tipc_link** %7, align 8
  store %struct.sk_buff_head* %3, %struct.sk_buff_head** %8, align 8
  %9 = load %struct.tipc_link*, %struct.tipc_link** %7, align 8
  %10 = call i32 @tipc_link_is_up(%struct.tipc_link* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %51

13:                                               ; preds = %4
  %14 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %15 = icmp ne %struct.tipc_link* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %18 = call i32 @tipc_link_is_reset(%struct.tipc_link* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %51

21:                                               ; preds = %16, %13
  %22 = load %struct.tipc_link*, %struct.tipc_link** %7, align 8
  %23 = load i32, i32* @LINK_SYNCH_END_EVT, align 4
  %24 = call i32 @tipc_link_fsm_evt(%struct.tipc_link* %22, i32 %23)
  %25 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %26 = load i32, i32* @NODE_SYNCH_END_EVT, align 4
  %27 = call i32 @tipc_node_fsm_evt(%struct.tipc_node* %25, i32 %26)
  %28 = load %struct.tipc_link*, %struct.tipc_link** %7, align 8
  %29 = call i64 @tipc_link_rcv_nxt(%struct.tipc_link* %28)
  %30 = load i32, i32* @U16_MAX, align 4
  %31 = sdiv i32 %30, 2
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %29, %33
  %35 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %36 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %38 = load %struct.tipc_link*, %struct.tipc_link** %7, align 8
  %39 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %40 = call i32 @tipc_link_failover_prepare(%struct.tipc_link* %37, %struct.tipc_link* %38, %struct.sk_buff_head* %39)
  %41 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %42 = icmp ne %struct.tipc_link* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %21
  %44 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %45 = load i32, i32* @LINK_FAILOVER_BEGIN_EVT, align 4
  %46 = call i32 @tipc_link_fsm_evt(%struct.tipc_link* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %21
  %48 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %49 = load i32, i32* @NODE_FAILOVER_BEGIN_EVT, align 4
  %50 = call i32 @tipc_node_fsm_evt(%struct.tipc_node* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %20, %12
  ret void
}

declare dso_local i32 @tipc_link_is_up(%struct.tipc_link*) #1

declare dso_local i32 @tipc_link_is_reset(%struct.tipc_link*) #1

declare dso_local i32 @tipc_link_fsm_evt(%struct.tipc_link*, i32) #1

declare dso_local i32 @tipc_node_fsm_evt(%struct.tipc_node*, i32) #1

declare dso_local i64 @tipc_link_rcv_nxt(%struct.tipc_link*) #1

declare dso_local i32 @tipc_link_failover_prepare(%struct.tipc_link*, %struct.tipc_link*, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

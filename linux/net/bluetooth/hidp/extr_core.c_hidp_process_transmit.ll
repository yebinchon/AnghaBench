; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_process_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_process_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.socket = type { i32 }
%struct.sk_buff = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"session %p\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hidp_session*, %struct.sk_buff_head*, %struct.socket*)* @hidp_process_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidp_process_transmit(%struct.hidp_session* %0, %struct.sk_buff_head* %1, %struct.socket* %2) #0 {
  %4 = alloca %struct.hidp_session*, align 8
  %5 = alloca %struct.sk_buff_head*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.hidp_session* %0, %struct.hidp_session** %4, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %5, align 8
  store %struct.socket* %2, %struct.socket** %6, align 8
  %9 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.hidp_session* %9)
  br label %11

11:                                               ; preds = %41, %3
  %12 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %13 = call %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head* %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %7, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = load %struct.socket*, %struct.socket** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @hidp_send_frame(%struct.socket* %16, i32 %19, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = call i32 @skb_queue_head(%struct.sk_buff_head* %29, %struct.sk_buff* %30)
  br label %46

32:                                               ; preds = %15
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %37 = call i32 @hidp_session_terminate(%struct.hidp_session* %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = call i32 @kfree_skb(%struct.sk_buff* %38)
  br label %46

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %43 = call i32 @hidp_set_timer(%struct.hidp_session* %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = call i32 @kfree_skb(%struct.sk_buff* %44)
  br label %11

46:                                               ; preds = %35, %28, %11
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hidp_session*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @hidp_send_frame(%struct.socket*, i32, i32) #1

declare dso_local i32 @skb_queue_head(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @hidp_session_terminate(%struct.hidp_session*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @hidp_set_timer(%struct.hidp_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

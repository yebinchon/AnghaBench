; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_session_run.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_session_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { i32, %struct.TYPE_2__*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.sock* }
%struct.sock = type { i64, i32 }
%struct.sk_buff = type { i32 }

@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@hidp_session_wq = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hidp_session*)* @hidp_session_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidp_session_run(%struct.hidp_session* %0) #0 {
  %2 = alloca %struct.hidp_session*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.hidp_session* %0, %struct.hidp_session** %2, align 8
  %6 = load %struct.hidp_session*, %struct.hidp_session** %2, align 8
  %7 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.sock*, %struct.sock** %9, align 8
  store %struct.sock* %10, %struct.sock** %3, align 8
  %11 = load %struct.hidp_session*, %struct.hidp_session** %2, align 8
  %12 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %4, align 8
  %16 = load i32, i32* @wait, align 4
  %17 = load i32, i32* @woken_wake_function, align 4
  %18 = call i32 @DEFINE_WAIT_FUNC(i32 %16, i32 %17)
  %19 = call i32 @add_wait_queue(i32* @hidp_session_wq, i32* @wait)
  br label %20

20:                                               ; preds = %86, %1
  %21 = load %struct.hidp_session*, %struct.hidp_session** %2, align 8
  %22 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %21, i32 0, i32 0
  %23 = call i64 @atomic_read(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %97

26:                                               ; preds = %20
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BT_CONNECTED, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BT_CONNECTED, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %26
  br label %97

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %58, %39
  %41 = load %struct.sock*, %struct.sock** %4, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 1
  %43 = call %struct.sk_buff* @skb_dequeue(i32* %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %5, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i32 @skb_orphan(%struct.sk_buff* %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = call i32 @skb_linearize(%struct.sk_buff* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = load %struct.hidp_session*, %struct.hidp_session** %2, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call i32 @hidp_recv_intr_frame(%struct.hidp_session* %52, %struct.sk_buff* %53)
  br label %58

55:                                               ; preds = %45
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = call i32 @kfree_skb(%struct.sk_buff* %56)
  br label %58

58:                                               ; preds = %55, %51
  br label %40

59:                                               ; preds = %40
  %60 = load %struct.hidp_session*, %struct.hidp_session** %2, align 8
  %61 = load %struct.hidp_session*, %struct.hidp_session** %2, align 8
  %62 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %61, i32 0, i32 4
  %63 = load %struct.hidp_session*, %struct.hidp_session** %2, align 8
  %64 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = call i32 @hidp_process_transmit(%struct.hidp_session* %60, i32* %62, %struct.TYPE_2__* %65)
  br label %67

67:                                               ; preds = %85, %59
  %68 = load %struct.sock*, %struct.sock** %3, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 1
  %70 = call %struct.sk_buff* @skb_dequeue(i32* %69)
  store %struct.sk_buff* %70, %struct.sk_buff** %5, align 8
  %71 = icmp ne %struct.sk_buff* %70, null
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = call i32 @skb_orphan(%struct.sk_buff* %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = call i32 @skb_linearize(%struct.sk_buff* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %72
  %79 = load %struct.hidp_session*, %struct.hidp_session** %2, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = call i32 @hidp_recv_ctrl_frame(%struct.hidp_session* %79, %struct.sk_buff* %80)
  br label %85

82:                                               ; preds = %72
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = call i32 @kfree_skb(%struct.sk_buff* %83)
  br label %85

85:                                               ; preds = %82, %78
  br label %67

86:                                               ; preds = %67
  %87 = load %struct.hidp_session*, %struct.hidp_session** %2, align 8
  %88 = load %struct.hidp_session*, %struct.hidp_session** %2, align 8
  %89 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %88, i32 0, i32 2
  %90 = load %struct.hidp_session*, %struct.hidp_session** %2, align 8
  %91 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = call i32 @hidp_process_transmit(%struct.hidp_session* %87, i32* %89, %struct.TYPE_2__* %92)
  %94 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %95 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %96 = call i32 @wait_woken(i32* @wait, i32 %94, i32 %95)
  br label %20

97:                                               ; preds = %38, %25
  %98 = call i32 @remove_wait_queue(i32* @hidp_session_wq, i32* @wait)
  %99 = load %struct.hidp_session*, %struct.hidp_session** %2, align 8
  %100 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %99, i32 0, i32 0
  %101 = call i32 @atomic_inc(i32* %100)
  ret void
}

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @hidp_recv_intr_frame(%struct.hidp_session*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @hidp_process_transmit(%struct.hidp_session*, i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @hidp_recv_ctrl_frame(%struct.hidp_session*, %struct.sk_buff*) #1

declare dso_local i32 @wait_woken(i32*, i32, i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

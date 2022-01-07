; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_action_fifo_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_action_fifo_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deferred_action = type { i32 }
%struct.action_fifo = type { i32, %struct.deferred_action* }

@DEFERRED_ACTION_FIFO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.deferred_action* (%struct.action_fifo*)* @action_fifo_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.deferred_action* @action_fifo_put(%struct.action_fifo* %0) #0 {
  %2 = alloca %struct.deferred_action*, align 8
  %3 = alloca %struct.action_fifo*, align 8
  store %struct.action_fifo* %0, %struct.action_fifo** %3, align 8
  %4 = load %struct.action_fifo*, %struct.action_fifo** %3, align 8
  %5 = getelementptr inbounds %struct.action_fifo, %struct.action_fifo* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @DEFERRED_ACTION_FIFO_SIZE, align 4
  %8 = sub nsw i32 %7, 1
  %9 = icmp sge i32 %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.deferred_action* null, %struct.deferred_action** %2, align 8
  br label %21

11:                                               ; preds = %1
  %12 = load %struct.action_fifo*, %struct.action_fifo** %3, align 8
  %13 = getelementptr inbounds %struct.action_fifo, %struct.action_fifo* %12, i32 0, i32 1
  %14 = load %struct.deferred_action*, %struct.deferred_action** %13, align 8
  %15 = load %struct.action_fifo*, %struct.action_fifo** %3, align 8
  %16 = getelementptr inbounds %struct.action_fifo, %struct.action_fifo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds %struct.deferred_action, %struct.deferred_action* %14, i64 %19
  store %struct.deferred_action* %20, %struct.deferred_action** %2, align 8
  br label %21

21:                                               ; preds = %11, %10
  %22 = load %struct.deferred_action*, %struct.deferred_action** %2, align 8
  ret %struct.deferred_action* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

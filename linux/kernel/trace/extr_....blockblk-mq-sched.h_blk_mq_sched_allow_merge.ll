; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_....blockblk-mq-sched.h_blk_mq_sched_allow_merge.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_....blockblk-mq-sched.h_blk_mq_sched_allow_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.elevator_queue* }
%struct.elevator_queue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { {}* }
%struct.request = type { i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.request*, %struct.bio*)* @blk_mq_sched_allow_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_mq_sched_allow_merge(%struct.request_queue* %0, %struct.request* %1, %struct.bio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.elevator_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %struct.bio* %2, %struct.bio** %7, align 8
  %9 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %10 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %9, i32 0, i32 0
  %11 = load %struct.elevator_queue*, %struct.elevator_queue** %10, align 8
  store %struct.elevator_queue* %11, %struct.elevator_queue** %8, align 8
  %12 = load %struct.elevator_queue*, %struct.elevator_queue** %8, align 8
  %13 = icmp ne %struct.elevator_queue* %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %3
  %15 = load %struct.elevator_queue*, %struct.elevator_queue** %8, align 8
  %16 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.request_queue*, %struct.request*, %struct.bio*)**
  %21 = load i32 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i32 (%struct.request_queue*, %struct.request*, %struct.bio*)** %20, align 8
  %22 = icmp ne i32 (%struct.request_queue*, %struct.request*, %struct.bio*)* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %14
  %24 = load %struct.elevator_queue*, %struct.elevator_queue** %8, align 8
  %25 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.request_queue*, %struct.request*, %struct.bio*)**
  %30 = load i32 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i32 (%struct.request_queue*, %struct.request*, %struct.bio*)** %29, align 8
  %31 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %32 = load %struct.request*, %struct.request** %6, align 8
  %33 = load %struct.bio*, %struct.bio** %7, align 8
  %34 = call i32 %30(%struct.request_queue* %31, %struct.request* %32, %struct.bio* %33)
  store i32 %34, i32* %4, align 4
  br label %36

35:                                               ; preds = %14, %3
  store i32 1, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %23
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

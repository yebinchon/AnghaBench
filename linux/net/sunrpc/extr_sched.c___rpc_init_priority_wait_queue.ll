; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c___rpc_init_priority_wait_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c___rpc_init_priority_wait_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_wait_queue = type { i8, %struct.TYPE_2__, i64, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@__rpc_queue_timer_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_wait_queue*, i8*, i8)* @__rpc_init_priority_wait_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rpc_init_priority_wait_queue(%struct.rpc_wait_queue* %0, i8* %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.rpc_wait_queue*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.rpc_wait_queue* %0, %struct.rpc_wait_queue** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8 %2, i8* %6, align 1
  %8 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %9 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %8, i32 0, i32 4
  %10 = call i32 @spin_lock_init(i32* %9)
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %26, %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %14 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %20 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %11

29:                                               ; preds = %11
  %30 = load i8, i8* %6, align 1
  %31 = zext i8 %30 to i32
  %32 = sub nsw i32 %31, 1
  %33 = trunc i32 %32 to i8
  %34 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %35 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %34, i32 0, i32 0
  store i8 %33, i8* %35, align 8
  %36 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %37 = call i32 @rpc_reset_waitqueue_priority(%struct.rpc_wait_queue* %36)
  %38 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %39 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %41 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %44 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* @__rpc_queue_timer_fn, align 4
  %47 = call i32 @INIT_DEFERRABLE_WORK(i32* %45, i32 %46)
  %48 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %49 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @rpc_assign_waitqueue_name(%struct.rpc_wait_queue* %52, i8* %53)
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rpc_reset_waitqueue_priority(%struct.rpc_wait_queue*) #1

declare dso_local i32 @INIT_DEFERRABLE_WORK(i32*, i32) #1

declare dso_local i32 @rpc_assign_waitqueue_name(%struct.rpc_wait_queue*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

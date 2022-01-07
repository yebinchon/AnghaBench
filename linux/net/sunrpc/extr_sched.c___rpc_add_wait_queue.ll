; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c___rpc_add_wait_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c___rpc_add_wait_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_wait_queue = type { i32, i32* }
%struct.rpc_task = type { i32, %struct.rpc_wait_queue*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"RPC: %5u added to queue %p \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_wait_queue*, %struct.rpc_task*, i8)* @__rpc_add_wait_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rpc_add_wait_queue(%struct.rpc_wait_queue* %0, %struct.rpc_task* %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.rpc_wait_queue*, align 8
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca i8, align 1
  store %struct.rpc_wait_queue* %0, %struct.rpc_wait_queue** %4, align 8
  store %struct.rpc_task* %1, %struct.rpc_task** %5, align 8
  store i8 %2, i8* %6, align 1
  %7 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %8 = call i64 @RPC_IS_QUEUED(%struct.rpc_task* %7)
  %9 = call i32 @WARN_ON_ONCE(i64 %8)
  %10 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %11 = call i64 @RPC_IS_QUEUED(%struct.rpc_task* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %71

14:                                               ; preds = %3
  %15 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %16 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %21 = call i64 @RPC_IS_PRIORITY(%struct.rpc_wait_queue* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %25 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %26 = load i8, i8* %6, align 1
  %27 = call i32 @__rpc_add_wait_queue_priority(%struct.rpc_wait_queue* %24, %struct.rpc_task* %25, i8 zeroext %26)
  br label %53

28:                                               ; preds = %14
  %29 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %30 = call i64 @RPC_IS_SWAPPER(%struct.rpc_task* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %34 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %38 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call i32 @list_add(i32* %36, i32* %40)
  br label %52

42:                                               ; preds = %28
  %43 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %44 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %48 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = call i32 @list_add_tail(i32* %46, i32* %50)
  br label %52

52:                                               ; preds = %42, %32
  br label %53

53:                                               ; preds = %52, %23
  %54 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %55 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %56 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %55, i32 0, i32 1
  store %struct.rpc_wait_queue* %54, %struct.rpc_wait_queue** %56, align 8
  %57 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %58 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = call i32 (...) @smp_wmb()
  %62 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %63 = call i32 @rpc_set_queued(%struct.rpc_task* %62)
  %64 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %65 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %68 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %69 = call i32 @rpc_qname(%struct.rpc_wait_queue* %68)
  %70 = call i32 @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %66, %struct.rpc_wait_queue* %67, i32 %69)
  br label %71

71:                                               ; preds = %53, %13
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i64) #1

declare dso_local i64 @RPC_IS_QUEUED(%struct.rpc_task*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @RPC_IS_PRIORITY(%struct.rpc_wait_queue*) #1

declare dso_local i32 @__rpc_add_wait_queue_priority(%struct.rpc_wait_queue*, %struct.rpc_task*, i8 zeroext) #1

declare dso_local i64 @RPC_IS_SWAPPER(%struct.rpc_task*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @rpc_set_queued(%struct.rpc_task*) #1

declare dso_local i32 @dprintk(i8*, i32, %struct.rpc_wait_queue*, i32) #1

declare dso_local i32 @rpc_qname(%struct.rpc_wait_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

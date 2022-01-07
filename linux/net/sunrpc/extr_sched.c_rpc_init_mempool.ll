; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_init_mempool.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_init_mempool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@delay_queue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"delayq\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"rpc_tasks\00", align 1
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@rpc_task_slabp = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"rpc_buffers\00", align 1
@RPC_BUFFER_MAXSIZE = common dso_local global i32 0, align 4
@rpc_buffer_slabp = common dso_local global i32 0, align 4
@RPC_TASK_POOLSIZE = common dso_local global i32 0, align 4
@rpc_task_mempool = common dso_local global i8* null, align 8
@RPC_BUFFER_POOLSIZE = common dso_local global i32 0, align 4
@rpc_buffer_mempool = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_init_mempool() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @rpc_init_wait_queue(i32* @delay_queue, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 (...) @rpciod_start()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %34

6:                                                ; preds = %0
  %7 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %8 = call i32 @kmem_cache_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 0, i32 %7, i32* null)
  store i32 %8, i32* @rpc_task_slabp, align 4
  %9 = load i32, i32* @rpc_task_slabp, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  br label %34

12:                                               ; preds = %6
  %13 = load i32, i32* @RPC_BUFFER_MAXSIZE, align 4
  %14 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %15 = call i32 @kmem_cache_create(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %13, i32 0, i32 %14, i32* null)
  store i32 %15, i32* @rpc_buffer_slabp, align 4
  %16 = load i32, i32* @rpc_buffer_slabp, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %34

19:                                               ; preds = %12
  %20 = load i32, i32* @RPC_TASK_POOLSIZE, align 4
  %21 = load i32, i32* @rpc_task_slabp, align 4
  %22 = call i8* @mempool_create_slab_pool(i32 %20, i32 %21)
  store i8* %22, i8** @rpc_task_mempool, align 8
  %23 = load i8*, i8** @rpc_task_mempool, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %34

26:                                               ; preds = %19
  %27 = load i32, i32* @RPC_BUFFER_POOLSIZE, align 4
  %28 = load i32, i32* @rpc_buffer_slabp, align 4
  %29 = call i8* @mempool_create_slab_pool(i32 %27, i32 %28)
  store i8* %29, i8** @rpc_buffer_mempool, align 8
  %30 = load i8*, i8** @rpc_buffer_mempool, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %34

33:                                               ; preds = %26
  store i32 0, i32* %1, align 4
  br label %38

34:                                               ; preds = %32, %25, %18, %11, %5
  %35 = call i32 (...) @rpc_destroy_mempool()
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %1, align 4
  br label %38

38:                                               ; preds = %34, %33
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @rpc_init_wait_queue(i32*, i8*) #1

declare dso_local i32 @rpciod_start(...) #1

declare dso_local i32 @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i8* @mempool_create_slab_pool(i32, i32) #1

declare dso_local i32 @rpc_destroy_mempool(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

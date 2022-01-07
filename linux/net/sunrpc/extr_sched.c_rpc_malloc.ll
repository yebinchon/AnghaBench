; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_malloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, %struct.rpc_rqst* }
%struct.rpc_rqst = type { i64, i64, i8*, i64 }
%struct.rpc_buffer = type { i64, i64 }

@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_MEMALLOC = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@RPC_BUFFER_MAXSIZE = common dso_local global i64 0, align 8
@rpc_buffer_mempool = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"RPC: %5u allocated buffer of size %zu at %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_malloc(%struct.rpc_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rpc_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  %8 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %9 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %8, i32 0, i32 1
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %9, align 8
  store %struct.rpc_rqst* %10, %struct.rpc_rqst** %4, align 8
  %11 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %12 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %15 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %13, %16
  store i64 %17, i64* %5, align 8
  %18 = load i32, i32* @GFP_NOFS, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %20 = call i64 @RPC_IS_SWAPPER(%struct.rpc_task* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load i32, i32* @__GFP_MEMALLOC, align 4
  %24 = load i32, i32* @GFP_NOWAIT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @__GFP_NOWARN, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %22, %1
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %29, 16
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @RPC_BUFFER_MAXSIZE, align 8
  %33 = icmp ule i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @rpc_buffer_mempool, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call %struct.rpc_buffer* @mempool_alloc(i32 %35, i32 %36)
  store %struct.rpc_buffer* %37, %struct.rpc_buffer** %6, align 8
  br label %42

38:                                               ; preds = %28
  %39 = load i64, i64* %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call %struct.rpc_buffer* @kmalloc(i64 %39, i32 %40)
  store %struct.rpc_buffer* %41, %struct.rpc_buffer** %6, align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.rpc_buffer*, %struct.rpc_buffer** %6, align 8
  %44 = icmp ne %struct.rpc_buffer* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %73

48:                                               ; preds = %42
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.rpc_buffer*, %struct.rpc_buffer** %6, align 8
  %51 = getelementptr inbounds %struct.rpc_buffer, %struct.rpc_buffer* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %53 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.rpc_buffer*, %struct.rpc_buffer** %6, align 8
  %57 = call i32 @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %54, i64 %55, %struct.rpc_buffer* %56)
  %58 = load %struct.rpc_buffer*, %struct.rpc_buffer** %6, align 8
  %59 = getelementptr inbounds %struct.rpc_buffer, %struct.rpc_buffer* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %62 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %61, i32 0, i32 3
  store i64 %60, i64* %62, align 8
  %63 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %64 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %68 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %72 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %48, %45
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @RPC_IS_SWAPPER(%struct.rpc_task*) #1

declare dso_local %struct.rpc_buffer* @mempool_alloc(i32, i32) #1

declare dso_local %struct.rpc_buffer* @kmalloc(i64, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i64, %struct.rpc_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

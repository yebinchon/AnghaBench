; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_buffer_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_buffer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_xprt = type { %struct.TYPE_2__, %struct.rpcrdma_buffer }
%struct.TYPE_2__ = type { i32 }
%struct.rpcrdma_buffer = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.rpcrdma_req = type { i32 }

@rpcrdma_mr_refresh_worker = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RPCRDMA_V1_DEF_INLINE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcrdma_buffer_create(%struct.rpcrdma_xprt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpcrdma_xprt*, align 8
  %4 = alloca %struct.rpcrdma_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpcrdma_req*, align 8
  store %struct.rpcrdma_xprt* %0, %struct.rpcrdma_xprt** %3, align 8
  %8 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %9 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %8, i32 0, i32 1
  store %struct.rpcrdma_buffer* %9, %struct.rpcrdma_buffer** %4, align 8
  %10 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %11 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %16, i32 0, i32 9
  store i64 0, i64* %17, align 8
  %18 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %18, i32 0, i32 8
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %4, align 8
  %22 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %21, i32 0, i32 7
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %24, i32 0, i32 6
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %4, align 8
  %28 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %27, i32 0, i32 5
  %29 = load i32, i32* @rpcrdma_mr_refresh_worker, align 4
  %30 = call i32 @INIT_WORK(i32* %28, i32 %29)
  %31 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %32 = call i32 @rpcrdma_mrs_create(%struct.rpcrdma_xprt* %31)
  %33 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %33, i32 0, i32 3
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %36, i32 0, i32 4
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %61, %1
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %4, align 8
  %44 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %41
  %48 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %49 = load i32, i32* @RPCRDMA_V1_DEF_INLINE_SIZE, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.rpcrdma_req* @rpcrdma_req_create(%struct.rpcrdma_xprt* %48, i32 %49, i32 %50)
  store %struct.rpcrdma_req* %51, %struct.rpcrdma_req** %7, align 8
  %52 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %7, align 8
  %53 = icmp ne %struct.rpcrdma_req* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %76

55:                                               ; preds = %47
  %56 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %7, align 8
  %57 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %56, i32 0, i32 0
  %58 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %4, align 8
  %59 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %58, i32 0, i32 3
  %60 = call i32 @list_add(i32* %57, i32* %59)
  br label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %41

64:                                               ; preds = %41
  %65 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %4, align 8
  %66 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %4, align 8
  %68 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %67, i32 0, i32 2
  %69 = call i32 @init_llist_head(i32* %68)
  %70 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %71 = call i32 @rpcrdma_sendctxs_create(%struct.rpcrdma_xprt* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %76

75:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %80

76:                                               ; preds = %74, %54
  %77 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %4, align 8
  %78 = call i32 @rpcrdma_buffer_destroy(%struct.rpcrdma_buffer* %77)
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %76, %75
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @rpcrdma_mrs_create(%struct.rpcrdma_xprt*) #1

declare dso_local %struct.rpcrdma_req* @rpcrdma_req_create(%struct.rpcrdma_xprt*, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @init_llist_head(i32*) #1

declare dso_local i32 @rpcrdma_sendctxs_create(%struct.rpcrdma_xprt*) #1

declare dso_local i32 @rpcrdma_buffer_destroy(%struct.rpcrdma_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

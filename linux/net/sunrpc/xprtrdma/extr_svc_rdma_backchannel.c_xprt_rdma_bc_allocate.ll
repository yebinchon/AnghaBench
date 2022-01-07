; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_backchannel.c_xprt_rdma_bc_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_backchannel.c_xprt_rdma_bc_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.rpc_rqst* }
%struct.rpc_rqst = type { i64, i32, i32, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"svcrdma: large bc buffer request (size %zu)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RPCRDMA_DEF_GFP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*)* @xprt_rdma_bc_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xprt_rdma_bc_allocate(%struct.rpc_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  %7 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %8 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %7, i32 0, i32 0
  %9 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  store %struct.rpc_rqst* %9, %struct.rpc_rqst** %4, align 8
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %11 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @PAGE_SIZE, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %51

21:                                               ; preds = %1
  %22 = load i32, i32* @RPCRDMA_DEF_GFP, align 4
  %23 = call %struct.page* @alloc_page(i32 %22)
  store %struct.page* %23, %struct.page** %6, align 8
  %24 = load %struct.page*, %struct.page** %6, align 8
  %25 = icmp ne %struct.page* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %51

29:                                               ; preds = %21
  %30 = load %struct.page*, %struct.page** %6, align 8
  %31 = call i32 @page_address(%struct.page* %30)
  %32 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %33 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %35 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @RPCRDMA_DEF_GFP, align 4
  %38 = call i32 @kmalloc(i32 %36, i32 %37)
  %39 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %40 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %42 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %29
  %46 = load %struct.page*, %struct.page** %6, align 8
  %47 = call i32 @put_page(%struct.page* %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %45, %26, %16
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i64) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

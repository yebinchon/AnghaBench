; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_bc_malloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_bc_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.rpc_rqst* }
%struct.rpc_rqst = type { i64, i8*, i64 }
%struct.page = type { i32 }
%struct.rpc_buffer = type { i32, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"xprtsock: large bc buffer request (size %zu)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*)* @bc_malloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bc_malloc(%struct.rpc_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.rpc_buffer*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  %8 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %9 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %8, i32 0, i32 0
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %9, align 8
  store %struct.rpc_rqst* %10, %struct.rpc_rqst** %4, align 8
  %11 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %12 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = sext i32 %15 to i64
  %17 = sub i64 %16, 16
  %18 = icmp ugt i64 %14, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %53

24:                                               ; preds = %1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.page* @alloc_page(i32 %25)
  store %struct.page* %26, %struct.page** %6, align 8
  %27 = load %struct.page*, %struct.page** %6, align 8
  %28 = icmp ne %struct.page* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %53

32:                                               ; preds = %24
  %33 = load %struct.page*, %struct.page** %6, align 8
  %34 = call %struct.rpc_buffer* @page_address(%struct.page* %33)
  store %struct.rpc_buffer* %34, %struct.rpc_buffer** %7, align 8
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = load %struct.rpc_buffer*, %struct.rpc_buffer** %7, align 8
  %37 = getelementptr inbounds %struct.rpc_buffer, %struct.rpc_buffer* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.rpc_buffer*, %struct.rpc_buffer** %7, align 8
  %39 = getelementptr inbounds %struct.rpc_buffer, %struct.rpc_buffer* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %42 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %44 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %48 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %52 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %32, %29, %19
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i64) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local %struct.rpc_buffer* @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

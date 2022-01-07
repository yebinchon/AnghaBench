; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c___nfs_create_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c___nfs_create_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32, i32, i32, i64, i32, i32, %struct.page*, %struct.nfs_lock_context* }
%struct.nfs_lock_context = type { i32, i32, %struct.nfs_open_context* }
%struct.nfs_open_context = type { i32 }
%struct.page = type { i32 }

@NFS_CONTEXT_BAD = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_page* (%struct.nfs_lock_context*, %struct.page*, i32, i32, i32)* @__nfs_create_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_page* @__nfs_create_request(%struct.nfs_lock_context* %0, %struct.page* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nfs_page*, align 8
  %7 = alloca %struct.nfs_lock_context*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfs_page*, align 8
  %13 = alloca %struct.nfs_open_context*, align 8
  store %struct.nfs_lock_context* %0, %struct.nfs_lock_context** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %7, align 8
  %15 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %14, i32 0, i32 2
  %16 = load %struct.nfs_open_context*, %struct.nfs_open_context** %15, align 8
  store %struct.nfs_open_context* %16, %struct.nfs_open_context** %13, align 8
  %17 = load i32, i32* @NFS_CONTEXT_BAD, align 4
  %18 = load %struct.nfs_open_context*, %struct.nfs_open_context** %13, align 8
  %19 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %18, i32 0, i32 0
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i32, i32* @EBADF, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.nfs_page* @ERR_PTR(i32 %24)
  store %struct.nfs_page* %25, %struct.nfs_page** %6, align 8
  br label %72

26:                                               ; preds = %5
  %27 = call %struct.nfs_page* (...) @nfs_page_alloc()
  store %struct.nfs_page* %27, %struct.nfs_page** %12, align 8
  %28 = load %struct.nfs_page*, %struct.nfs_page** %12, align 8
  %29 = icmp eq %struct.nfs_page* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.nfs_page* @ERR_PTR(i32 %32)
  store %struct.nfs_page* %33, %struct.nfs_page** %6, align 8
  br label %72

34:                                               ; preds = %26
  %35 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %7, align 8
  %36 = load %struct.nfs_page*, %struct.nfs_page** %12, align 8
  %37 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %36, i32 0, i32 7
  store %struct.nfs_lock_context* %35, %struct.nfs_lock_context** %37, align 8
  %38 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %7, align 8
  %39 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %38, i32 0, i32 1
  %40 = call i32 @refcount_inc(i32* %39)
  %41 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %7, align 8
  %42 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %41, i32 0, i32 0
  %43 = call i32 @atomic_inc(i32* %42)
  %44 = load %struct.page*, %struct.page** %8, align 8
  %45 = load %struct.nfs_page*, %struct.nfs_page** %12, align 8
  %46 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %45, i32 0, i32 6
  store %struct.page* %44, %struct.page** %46, align 8
  %47 = load %struct.page*, %struct.page** %8, align 8
  %48 = icmp ne %struct.page* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %34
  %50 = load %struct.page*, %struct.page** %8, align 8
  %51 = call i32 @page_index(%struct.page* %50)
  %52 = load %struct.nfs_page*, %struct.nfs_page** %12, align 8
  %53 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load %struct.page*, %struct.page** %8, align 8
  %55 = call i32 @get_page(%struct.page* %54)
  br label %56

56:                                               ; preds = %49, %34
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.nfs_page*, %struct.nfs_page** %12, align 8
  %59 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.nfs_page*, %struct.nfs_page** %12, align 8
  %62 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.nfs_page*, %struct.nfs_page** %12, align 8
  %65 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.nfs_page*, %struct.nfs_page** %12, align 8
  %67 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %66, i32 0, i32 4
  %68 = call i32 @kref_init(i32* %67)
  %69 = load %struct.nfs_page*, %struct.nfs_page** %12, align 8
  %70 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  %71 = load %struct.nfs_page*, %struct.nfs_page** %12, align 8
  store %struct.nfs_page* %71, %struct.nfs_page** %6, align 8
  br label %72

72:                                               ; preds = %56, %30, %22
  %73 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  ret %struct.nfs_page* %73
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.nfs_page* @ERR_PTR(i32) #1

declare dso_local %struct.nfs_page* @nfs_page_alloc(...) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @page_index(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_create_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_create_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32 }
%struct.nfs_open_context = type { i32 }
%struct.page = type { i32 }
%struct.nfs_lock_context = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs_page* @nfs_create_request(%struct.nfs_open_context* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nfs_page*, align 8
  %6 = alloca %struct.nfs_open_context*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs_lock_context*, align 8
  %11 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_open_context* %0, %struct.nfs_open_context** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %13 = call %struct.nfs_page* @nfs_get_lock_context(%struct.nfs_open_context* %12)
  %14 = bitcast %struct.nfs_page* %13 to %struct.nfs_lock_context*
  store %struct.nfs_lock_context* %14, %struct.nfs_lock_context** %10, align 8
  %15 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %10, align 8
  %16 = bitcast %struct.nfs_lock_context* %15 to %struct.nfs_page*
  %17 = call i64 @IS_ERR(%struct.nfs_page* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %10, align 8
  %21 = bitcast %struct.nfs_lock_context* %20 to %struct.nfs_page*
  %22 = call %struct.nfs_page* @ERR_CAST(%struct.nfs_page* %21)
  store %struct.nfs_page* %22, %struct.nfs_page** %5, align 8
  br label %42

23:                                               ; preds = %4
  %24 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %10, align 8
  %25 = bitcast %struct.nfs_lock_context* %24 to %struct.nfs_page*
  %26 = load %struct.page*, %struct.page** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call %struct.nfs_page* @__nfs_create_request(%struct.nfs_page* %25, %struct.page* %26, i32 %27, i32 %28, i32 %29)
  store %struct.nfs_page* %30, %struct.nfs_page** %11, align 8
  %31 = load %struct.nfs_page*, %struct.nfs_page** %11, align 8
  %32 = call i64 @IS_ERR(%struct.nfs_page* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %23
  %35 = load %struct.nfs_page*, %struct.nfs_page** %11, align 8
  %36 = call i32 @nfs_page_group_init(%struct.nfs_page* %35, i32* null)
  br label %37

37:                                               ; preds = %34, %23
  %38 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %10, align 8
  %39 = bitcast %struct.nfs_lock_context* %38 to %struct.nfs_page*
  %40 = call i32 @nfs_put_lock_context(%struct.nfs_page* %39)
  %41 = load %struct.nfs_page*, %struct.nfs_page** %11, align 8
  store %struct.nfs_page* %41, %struct.nfs_page** %5, align 8
  br label %42

42:                                               ; preds = %37, %19
  %43 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  ret %struct.nfs_page* %43
}

declare dso_local %struct.nfs_page* @nfs_get_lock_context(%struct.nfs_open_context*) #1

declare dso_local i64 @IS_ERR(%struct.nfs_page*) #1

declare dso_local %struct.nfs_page* @ERR_CAST(%struct.nfs_page*) #1

declare dso_local %struct.nfs_page* @__nfs_create_request(%struct.nfs_page*, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @nfs_page_group_init(%struct.nfs_page*, i32*) #1

declare dso_local i32 @nfs_put_lock_context(%struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

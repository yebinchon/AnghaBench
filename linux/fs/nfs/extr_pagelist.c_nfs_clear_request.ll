; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_clear_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_clear_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { %struct.nfs_lock_context*, %struct.page* }
%struct.nfs_lock_context = type { %struct.nfs_open_context*, i32 }
%struct.nfs_open_context = type { i32, i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NFS_CONTEXT_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_page*)* @nfs_clear_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_clear_request(%struct.nfs_page* %0) #0 {
  %2 = alloca %struct.nfs_page*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.nfs_lock_context*, align 8
  %5 = alloca %struct.nfs_open_context*, align 8
  store %struct.nfs_page* %0, %struct.nfs_page** %2, align 8
  %6 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %7 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %6, i32 0, i32 1
  %8 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %8, %struct.page** %3, align 8
  %9 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %10 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %9, i32 0, i32 0
  %11 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %10, align 8
  store %struct.nfs_lock_context* %11, %struct.nfs_lock_context** %4, align 8
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = icmp ne %struct.page* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = call i32 @put_page(%struct.page* %15)
  %17 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %18 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %17, i32 0, i32 1
  store %struct.page* null, %struct.page** %18, align 8
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %4, align 8
  %21 = icmp ne %struct.nfs_lock_context* %20, null
  br i1 %21, label %22, label %53

22:                                               ; preds = %19
  %23 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %4, align 8
  %24 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %23, i32 0, i32 1
  %25 = call i64 @atomic_dec_and_test(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %4, align 8
  %29 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %28, i32 0, i32 1
  %30 = call i32 @wake_up_var(i32* %29)
  %31 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %4, align 8
  %32 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %31, i32 0, i32 0
  %33 = load %struct.nfs_open_context*, %struct.nfs_open_context** %32, align 8
  store %struct.nfs_open_context* %33, %struct.nfs_open_context** %5, align 8
  %34 = load i32, i32* @NFS_CONTEXT_UNLOCK, align 4
  %35 = load %struct.nfs_open_context*, %struct.nfs_open_context** %5, align 8
  %36 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %35, i32 0, i32 1
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %27
  %40 = load %struct.nfs_open_context*, %struct.nfs_open_context** %5, align 8
  %41 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @d_inode(i32 %42)
  %44 = call %struct.TYPE_2__* @NFS_SERVER(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @rpc_wake_up(i32* %45)
  br label %47

47:                                               ; preds = %39, %27
  br label %48

48:                                               ; preds = %47, %22
  %49 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %4, align 8
  %50 = call i32 @nfs_put_lock_context(%struct.nfs_lock_context* %49)
  %51 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %52 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %51, i32 0, i32 0
  store %struct.nfs_lock_context* null, %struct.nfs_lock_context** %52, align 8
  br label %53

53:                                               ; preds = %48, %19
  ret void
}

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up_var(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rpc_wake_up(i32*) #1

declare dso_local %struct.TYPE_2__* @NFS_SERVER(i32) #1

declare dso_local i32 @d_inode(i32) #1

declare dso_local i32 @nfs_put_lock_context(%struct.nfs_lock_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

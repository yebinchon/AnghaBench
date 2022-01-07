; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_page_group_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_page_group_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32, %struct.nfs_page* }

@PG_HEADLOCK = common dso_local global i32 0, align 4
@PG_CONTENDED1 = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_page_group_lock(%struct.nfs_page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_page*, align 8
  %4 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_page* %0, %struct.nfs_page** %3, align 8
  %5 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %6 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %5, i32 0, i32 1
  %7 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  store %struct.nfs_page* %7, %struct.nfs_page** %4, align 8
  %8 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %9 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %10 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %9, i32 0, i32 1
  %11 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %12 = icmp ne %struct.nfs_page* %8, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON_ONCE(i32 %13)
  %15 = load i32, i32* @PG_HEADLOCK, align 4
  %16 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %17 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %16, i32 0, i32 0
  %18 = call i32 @test_and_set_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

21:                                               ; preds = %1
  %22 = load i32, i32* @PG_CONTENDED1, align 4
  %23 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %24 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %23, i32 0, i32 0
  %25 = call i32 @set_bit(i32 %22, i32* %24)
  %26 = call i32 (...) @smp_mb__after_atomic()
  %27 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %28 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %27, i32 0, i32 0
  %29 = load i32, i32* @PG_HEADLOCK, align 4
  %30 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %31 = call i32 @wait_on_bit_lock(i32* %28, i32 %29, i32 %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %21, %20
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wait_on_bit_lock(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

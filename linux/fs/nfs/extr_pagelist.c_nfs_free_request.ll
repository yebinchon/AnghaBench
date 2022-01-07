; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_free_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_free_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32, %struct.nfs_page* }

@PG_TEARDOWN = common dso_local global i32 0, align 4
@PG_UNLOCKPAGE = common dso_local global i32 0, align 4
@PG_UPTODATE = common dso_local global i32 0, align 4
@PG_WB_END = common dso_local global i32 0, align 4
@PG_REMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_free_request(%struct.nfs_page* %0) #0 {
  %2 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_page* %0, %struct.nfs_page** %2, align 8
  %3 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %4 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %3, i32 0, i32 1
  %5 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %6 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %7 = icmp ne %struct.nfs_page* %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON_ONCE(i32 %8)
  %10 = load i32, i32* @PG_TEARDOWN, align 4
  %11 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %12 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %11, i32 0, i32 0
  %13 = call i32 @test_bit(i32 %10, i32* %12)
  %14 = call i32 @WARN_ON_ONCE(i32 %13)
  %15 = load i32, i32* @PG_UNLOCKPAGE, align 4
  %16 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %17 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %16, i32 0, i32 0
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  %20 = load i32, i32* @PG_UPTODATE, align 4
  %21 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %22 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %21, i32 0, i32 0
  %23 = call i32 @test_bit(i32 %20, i32* %22)
  %24 = call i32 @WARN_ON_ONCE(i32 %23)
  %25 = load i32, i32* @PG_WB_END, align 4
  %26 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %27 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %26, i32 0, i32 0
  %28 = call i32 @test_bit(i32 %25, i32* %27)
  %29 = call i32 @WARN_ON_ONCE(i32 %28)
  %30 = load i32, i32* @PG_REMOVE, align 4
  %31 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %32 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %31, i32 0, i32 0
  %33 = call i32 @test_bit(i32 %30, i32* %32)
  %34 = call i32 @WARN_ON_ONCE(i32 %33)
  %35 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %36 = call i32 @nfs_clear_request(%struct.nfs_page* %35)
  %37 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %38 = call i32 @nfs_page_free(%struct.nfs_page* %37)
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @nfs_clear_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_page_free(%struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

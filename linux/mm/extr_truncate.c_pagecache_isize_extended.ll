; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_truncate.c_pagecache_isize_extended.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_truncate.c_pagecache_isize_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pagecache_isize_extended(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call i32 @i_blocksize(%struct.inode* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %3
  br label %67

28:                                               ; preds = %23
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @round_up(i64 %29, i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = and i64 %36, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35, %28
  br label %67

43:                                               ; preds = %35
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @PAGE_SHIFT, align 8
  %46 = ashr i64 %44, %45
  store i64 %46, i64* %10, align 8
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call %struct.page* @find_lock_page(i32 %49, i64 %50)
  store %struct.page* %51, %struct.page** %9, align 8
  %52 = load %struct.page*, %struct.page** %9, align 8
  %53 = icmp ne %struct.page* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  br label %67

55:                                               ; preds = %43
  %56 = load %struct.page*, %struct.page** %9, align 8
  %57 = call i64 @page_mkclean(%struct.page* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.page*, %struct.page** %9, align 8
  %61 = call i32 @set_page_dirty(%struct.page* %60)
  br label %62

62:                                               ; preds = %59, %55
  %63 = load %struct.page*, %struct.page** %9, align 8
  %64 = call i32 @unlock_page(%struct.page* %63)
  %65 = load %struct.page*, %struct.page** %9, align 8
  %66 = call i32 @put_page(%struct.page* %65)
  br label %67

67:                                               ; preds = %62, %54, %42, %27
  ret void
}

declare dso_local i32 @i_blocksize(%struct.inode*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local %struct.page* @find_lock_page(i32, i64) #1

declare dso_local i64 @page_mkclean(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

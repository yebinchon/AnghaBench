; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_pagelist.c_ceph_pagelist_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_pagelist.c_ceph_pagelist_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_pagelist = type { i64, i64, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_pagelist_reserve(%struct.ceph_pagelist* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_pagelist*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.ceph_pagelist* %0, %struct.ceph_pagelist** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %4, align 8
  %9 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ule i64 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

13:                                               ; preds = %2
  %14 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %4, align 8
  %15 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = sub i64 %17, %16
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @PAGE_SIZE, align 8
  %21 = add i64 %19, %20
  %22 = sub i64 %21, 1
  %23 = load i64, i64* @PAGE_SHIFT, align 8
  %24 = lshr i64 %22, %23
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %39, %13
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %4, align 8
  %28 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ugt i64 %26, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %25
  %32 = load i32, i32* @GFP_NOFS, align 4
  %33 = call %struct.page* @__page_cache_alloc(i32 %32)
  store %struct.page* %33, %struct.page** %6, align 8
  %34 = load %struct.page*, %struct.page** %6, align 8
  %35 = icmp ne %struct.page* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %50

39:                                               ; preds = %31
  %40 = load %struct.page*, %struct.page** %6, align 8
  %41 = getelementptr inbounds %struct.page, %struct.page* %40, i32 0, i32 0
  %42 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %4, align 8
  %43 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %42, i32 0, i32 2
  %44 = call i32 @list_add_tail(i32* %41, i32* %43)
  %45 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %4, align 8
  %46 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %46, align 8
  br label %25

49:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %36, %12
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.page* @__page_cache_alloc(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

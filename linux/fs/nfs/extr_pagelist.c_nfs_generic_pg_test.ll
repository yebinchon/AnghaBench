; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_generic_pg_test.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_generic_pg_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32 }
%struct.nfs_page = type { i32 }
%struct.nfs_pgio_mirror = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfs_generic_pg_test(%struct.nfs_pageio_descriptor* %0, %struct.nfs_page* %1, %struct.nfs_page* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.nfs_pageio_descriptor*, align 8
  %6 = alloca %struct.nfs_page*, align 8
  %7 = alloca %struct.nfs_page*, align 8
  %8 = alloca %struct.nfs_pgio_mirror*, align 8
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %5, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %6, align 8
  store %struct.nfs_page* %2, %struct.nfs_page** %7, align 8
  %9 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %5, align 8
  %10 = call %struct.nfs_pgio_mirror* @nfs_pgio_current_mirror(%struct.nfs_pageio_descriptor* %9)
  store %struct.nfs_pgio_mirror* %10, %struct.nfs_pgio_mirror** %8, align 8
  %11 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %8, align 8
  %12 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %8, align 8
  %15 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 @WARN_ON_ONCE(i32 1)
  store i64 0, i64* %4, align 8
  br label %49

20:                                               ; preds = %3
  %21 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %8, align 8
  %22 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %25 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  %28 = load i32, i32* @PAGE_SHIFT, align 4
  %29 = ashr i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 8
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ugt i64 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  store i64 0, i64* %4, align 8
  br label %49

36:                                               ; preds = %20
  %37 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %8, align 8
  %38 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %8, align 8
  %41 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %39, %42
  %44 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %45 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = call i64 @min(i32 %43, i64 %47)
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %36, %35, %18
  %50 = load i64, i64* %4, align 8
  ret i64 %50
}

declare dso_local %struct.nfs_pgio_mirror* @nfs_pgio_current_mirror(%struct.nfs_pageio_descriptor*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @min(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

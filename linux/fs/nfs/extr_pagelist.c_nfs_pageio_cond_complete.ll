; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_pageio_cond_complete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_pageio_cond_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i64, %struct.nfs_pgio_mirror* }
%struct.nfs_pgio_mirror = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nfs_page = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_pageio_cond_complete(%struct.nfs_pageio_descriptor* %0, i64 %1) #0 {
  %3 = alloca %struct.nfs_pageio_descriptor*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nfs_pgio_mirror*, align 8
  %6 = alloca %struct.nfs_page*, align 8
  %7 = alloca i64, align 8
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %41, %2
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %11 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %8
  %15 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %16 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %15, i32 0, i32 1
  %17 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %17, i64 %18
  store %struct.nfs_pgio_mirror* %19, %struct.nfs_pgio_mirror** %5, align 8
  %20 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %5, align 8
  %21 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %20, i32 0, i32 0
  %22 = call i32 @list_empty(%struct.TYPE_2__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %14
  %25 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %5, align 8
  %26 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.nfs_page* @nfs_list_entry(i32 %28)
  store %struct.nfs_page* %29, %struct.nfs_page** %6, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %32 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  %35 = icmp ne i64 %30, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %38 = call i32 @nfs_pageio_complete(%struct.nfs_pageio_descriptor* %37)
  br label %44

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %14
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %7, align 8
  br label %8

44:                                               ; preds = %36, %8
  ret void
}

declare dso_local i32 @list_empty(%struct.TYPE_2__*) #1

declare dso_local %struct.nfs_page* @nfs_list_entry(i32) #1

declare dso_local i32 @nfs_pageio_complete(%struct.nfs_pageio_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_pageio_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_pageio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32, i64, i32, i64, i32*, i32*, i32*, i64, i32*, i32*, i32*, i64, %struct.nfs_rw_ops*, %struct.nfs_pgio_completion_ops*, %struct.nfs_pageio_ops*, %struct.inode*, i64 }
%struct.inode = type { i32 }
%struct.nfs_pageio_ops = type { i32 }
%struct.nfs_pgio_completion_ops = type { i32 }
%struct.nfs_rw_ops = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_pageio_init(%struct.nfs_pageio_descriptor* %0, %struct.inode* %1, %struct.nfs_pageio_ops* %2, %struct.nfs_pgio_completion_ops* %3, %struct.nfs_rw_ops* %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.nfs_pageio_descriptor*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.nfs_pageio_ops*, align 8
  %11 = alloca %struct.nfs_pgio_completion_ops*, align 8
  %12 = alloca %struct.nfs_rw_ops*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.nfs_pageio_ops* %2, %struct.nfs_pageio_ops** %10, align 8
  store %struct.nfs_pgio_completion_ops* %3, %struct.nfs_pgio_completion_ops** %11, align 8
  store %struct.nfs_rw_ops* %4, %struct.nfs_rw_ops** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %15 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %8, align 8
  %16 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %15, i32 0, i32 16
  store i64 0, i64* %16, align 8
  %17 = load %struct.inode*, %struct.inode** %9, align 8
  %18 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %8, align 8
  %19 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %18, i32 0, i32 15
  store %struct.inode* %17, %struct.inode** %19, align 8
  %20 = load %struct.nfs_pageio_ops*, %struct.nfs_pageio_ops** %10, align 8
  %21 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %8, align 8
  %22 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %21, i32 0, i32 14
  store %struct.nfs_pageio_ops* %20, %struct.nfs_pageio_ops** %22, align 8
  %23 = load %struct.nfs_pgio_completion_ops*, %struct.nfs_pgio_completion_ops** %11, align 8
  %24 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %8, align 8
  %25 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %24, i32 0, i32 13
  store %struct.nfs_pgio_completion_ops* %23, %struct.nfs_pgio_completion_ops** %25, align 8
  %26 = load %struct.nfs_rw_ops*, %struct.nfs_rw_ops** %12, align 8
  %27 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %8, align 8
  %28 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %27, i32 0, i32 12
  store %struct.nfs_rw_ops* %26, %struct.nfs_rw_ops** %28, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %8, align 8
  %31 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %8, align 8
  %33 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %32, i32 0, i32 11
  store i64 0, i64* %33, align 8
  %34 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %8, align 8
  %35 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %34, i32 0, i32 10
  store i32* null, i32** %35, align 8
  %36 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %8, align 8
  %37 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %36, i32 0, i32 9
  store i32* null, i32** %37, align 8
  %38 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %8, align 8
  %39 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %38, i32 0, i32 8
  store i32* null, i32** %39, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %8, align 8
  %42 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %8, align 8
  %44 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %43, i32 0, i32 2
  store i32 1, i32* %44, align 8
  %45 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %8, align 8
  %46 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %45, i32 0, i32 7
  store i64 0, i64* %46, align 8
  %47 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %8, align 8
  %48 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %47, i32 0, i32 6
  store i32* null, i32** %48, align 8
  %49 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %8, align 8
  %50 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %8, align 8
  %53 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %52, i32 0, i32 4
  store i32* %51, i32** %53, align 8
  %54 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %8, align 8
  %55 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i64, i64* %13, align 8
  %59 = call i32 @nfs_pageio_mirror_init(i32* %57, i64 %58)
  %60 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %8, align 8
  %61 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  ret void
}

declare dso_local i32 @nfs_pageio_mirror_init(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

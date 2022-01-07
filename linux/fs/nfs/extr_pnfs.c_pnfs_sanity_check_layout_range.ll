; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_sanity_check_layout_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_sanity_check_layout_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_range = type { i32, i64, i64 }

@NFS4_MAX_UINT64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnfs_layout_range*)* @pnfs_sanity_check_layout_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnfs_sanity_check_layout_range(%struct.pnfs_layout_range* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnfs_layout_range*, align 8
  store %struct.pnfs_layout_range* %0, %struct.pnfs_layout_range** %3, align 8
  %4 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %3, align 8
  %5 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %8 [
    i32 129, label %7
    i32 128, label %7
  ]

7:                                                ; preds = %1, %1
  br label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

9:                                                ; preds = %7
  %10 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %3, align 8
  %11 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NFS4_MAX_UINT64, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %40

16:                                               ; preds = %9
  %17 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %3, align 8
  %18 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %40

22:                                               ; preds = %16
  %23 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %3, align 8
  %24 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NFS4_MAX_UINT64, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %3, align 8
  %30 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NFS4_MAX_UINT64, align 8
  %33 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %3, align 8
  %34 = getelementptr inbounds %struct.pnfs_layout_range, %struct.pnfs_layout_range* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = icmp sgt i64 %31, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %40

39:                                               ; preds = %28, %22
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %38, %21, %15, %8
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

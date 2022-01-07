; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_realloc_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_realloc_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ifork = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.xfs_iext_cursor = type { i8* }

@RECS_PER_LEAF = common dso_local global i64 0, align 8
@NODE_SIZE = common dso_local global i64 0, align 8
@KM_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_ifork*, %struct.xfs_iext_cursor*)* @xfs_iext_realloc_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_iext_realloc_root(%struct.xfs_ifork* %0, %struct.xfs_iext_cursor* %1) #0 {
  %3 = alloca %struct.xfs_ifork*, align 8
  %4 = alloca %struct.xfs_iext_cursor*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.xfs_ifork* %0, %struct.xfs_ifork** %3, align 8
  store %struct.xfs_iext_cursor* %1, %struct.xfs_iext_cursor** %4, align 8
  %7 = load %struct.xfs_ifork*, %struct.xfs_ifork** %3, align 8
  %8 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = udiv i64 %11, 4
  %13 = load i64, i64* @RECS_PER_LEAF, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @NODE_SIZE, align 8
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %15, %2
  %18 = load %struct.xfs_ifork*, %struct.xfs_ifork** %3, align 8
  %19 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* @KM_NOFS, align 4
  %24 = call i8* @kmem_realloc(i8* %21, i64 %22, i32 %23)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.xfs_ifork*, %struct.xfs_ifork** %3, align 8
  %27 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr i8, i8* %25, i64 %28
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.xfs_ifork*, %struct.xfs_ifork** %3, align 8
  %32 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %30, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(i8* %29, i32 0, i32 %35)
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.xfs_ifork*, %struct.xfs_ifork** %3, align 8
  %39 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %4, align 8
  %43 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  ret void
}

declare dso_local i8* @kmem_realloc(i8*, i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

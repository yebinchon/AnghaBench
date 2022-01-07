; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_readdir_search_for_pos.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_readdir_search_for_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_cache_array = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@EAGAIN = common dso_local global i32 0, align 4
@EBADCOOKIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_cache_array*, %struct.TYPE_7__*)* @nfs_readdir_search_for_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_readdir_search_for_pos(%struct.nfs_cache_array* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_cache_array*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.nfs_cache_array* %0, %struct.nfs_cache_array** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %12, %15
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %52

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %4, align 8
  %23 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %4, align 8
  %28 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %52

32:                                               ; preds = %26
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %57

35:                                               ; preds = %20
  %36 = load i64, i64* %6, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %4, align 8
  %39 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %38, i32 0, i32 2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  store i32 0, i32* %3, align 4
  br label %57

52:                                               ; preds = %31, %19
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  store i32 1, i32* %54, align 4
  %55 = load i32, i32* @EBADCOOKIE, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %35, %32
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

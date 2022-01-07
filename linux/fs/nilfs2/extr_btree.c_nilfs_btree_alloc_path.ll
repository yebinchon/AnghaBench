; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_alloc_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_alloc_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_btree_path = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__, i64, i32*, i32* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@NILFS_BTREE_LEVEL_DATA = common dso_local global i32 0, align 4
@nilfs_btree_path_cache = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@NILFS_BTREE_LEVEL_MAX = common dso_local global i32 0, align 4
@NILFS_BMAP_INVALID_PTR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nilfs_btree_path* ()* @nilfs_btree_alloc_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nilfs_btree_path* @nilfs_btree_alloc_path() #0 {
  %1 = alloca %struct.nilfs_btree_path*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @NILFS_BTREE_LEVEL_DATA, align 4
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* @nilfs_btree_path_cache, align 4
  %5 = load i32, i32* @GFP_NOFS, align 4
  %6 = call %struct.nilfs_btree_path* @kmem_cache_alloc(i32 %4, i32 %5)
  store %struct.nilfs_btree_path* %6, %struct.nilfs_btree_path** %1, align 8
  %7 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %1, align 8
  %8 = icmp eq %struct.nilfs_btree_path* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %54

10:                                               ; preds = %0
  br label %11

11:                                               ; preds = %50, %10
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @NILFS_BTREE_LEVEL_MAX, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %53

15:                                               ; preds = %11
  %16 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %1, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %16, i64 %18
  %20 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %19, i32 0, i32 5
  store i32* null, i32** %20, align 8
  %21 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %1, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %21, i64 %23
  %25 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %24, i32 0, i32 4
  store i32* null, i32** %25, align 8
  %26 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %1, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %26, i64 %28
  %30 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load i8*, i8** @NILFS_BMAP_INVALID_PTR, align 8
  %32 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %1, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %32, i64 %34
  %36 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i8* %31, i8** %37, align 8
  %38 = load i8*, i8** @NILFS_BMAP_INVALID_PTR, align 8
  %39 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %1, align 8
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %39, i64 %41
  %43 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i8* %38, i8** %44, align 8
  %45 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %1, align 8
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %45, i64 %47
  %49 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %15
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  br label %11

53:                                               ; preds = %11
  br label %54

54:                                               ; preds = %53, %9
  %55 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %1, align 8
  ret %struct.nilfs_btree_path* %55
}

declare dso_local %struct.nilfs_btree_path* @kmem_cache_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

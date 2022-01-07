; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c_ext_tree_encode_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c_ext_tree_encode_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_block_layout = type { i32, i64, i64, i32 }
%struct.pnfs_block_extent = type { i64, i64 }

@PNFS_BLOCK_INVALID_DATA = common dso_local global i64 0, align 8
@EXTENT_WRITTEN = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@EXTENT_COMMITTING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnfs_block_layout*, i32*, i64, i64*, i64*)* @ext_tree_encode_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext_tree_encode_commit(%struct.pnfs_block_layout* %0, i32* %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.pnfs_block_layout*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.pnfs_block_extent*, align 8
  %12 = alloca i32, align 4
  store %struct.pnfs_block_layout* %0, %struct.pnfs_block_layout** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.pnfs_block_layout*, %struct.pnfs_block_layout** %6, align 8
  %14 = getelementptr inbounds %struct.pnfs_block_layout, %struct.pnfs_block_layout* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.pnfs_block_layout*, %struct.pnfs_block_layout** %6, align 8
  %17 = getelementptr inbounds %struct.pnfs_block_layout, %struct.pnfs_block_layout* %16, i32 0, i32 3
  %18 = call %struct.pnfs_block_extent* @ext_tree_first(i32* %17)
  store %struct.pnfs_block_extent* %18, %struct.pnfs_block_extent** %11, align 8
  br label %19

19:                                               ; preds = %65, %5
  %20 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %21 = icmp ne %struct.pnfs_block_extent* %20, null
  br i1 %21, label %22, label %68

22:                                               ; preds = %19
  %23 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %24 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PNFS_BLOCK_INVALID_DATA, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %30 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @EXTENT_WRITTEN, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %22
  br label %65

35:                                               ; preds = %28
  %36 = load i64*, i64** %9, align 8
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = load %struct.pnfs_block_layout*, %struct.pnfs_block_layout** %6, align 8
  %40 = load i64*, i64** %9, align 8
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @ext_tree_layoutupdate_size(%struct.pnfs_block_layout* %39, i64 %41)
  %43 = load i64, i64* %8, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* @ENOSPC, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %12, align 4
  br label %65

48:                                               ; preds = %35
  %49 = load %struct.pnfs_block_layout*, %struct.pnfs_block_layout** %6, align 8
  %50 = getelementptr inbounds %struct.pnfs_block_layout, %struct.pnfs_block_layout* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32* @encode_scsi_range(%struct.pnfs_block_extent* %54, i32* %55)
  store i32* %56, i32** %7, align 8
  br label %61

57:                                               ; preds = %48
  %58 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32* @encode_block_extent(%struct.pnfs_block_extent* %58, i32* %59)
  store i32* %60, i32** %7, align 8
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i64, i64* @EXTENT_COMMITTING, align 8
  %63 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %64 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %45, %34
  %66 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %67 = call %struct.pnfs_block_extent* @ext_tree_next(%struct.pnfs_block_extent* %66)
  store %struct.pnfs_block_extent* %67, %struct.pnfs_block_extent** %11, align 8
  br label %19

68:                                               ; preds = %19
  %69 = load %struct.pnfs_block_layout*, %struct.pnfs_block_layout** %6, align 8
  %70 = getelementptr inbounds %struct.pnfs_block_layout, %struct.pnfs_block_layout* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %71, 1
  %73 = load i64*, i64** %10, align 8
  store i64 %72, i64* %73, align 8
  %74 = load %struct.pnfs_block_layout*, %struct.pnfs_block_layout** %6, align 8
  %75 = getelementptr inbounds %struct.pnfs_block_layout, %struct.pnfs_block_layout* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load %struct.pnfs_block_layout*, %struct.pnfs_block_layout** %6, align 8
  %77 = getelementptr inbounds %struct.pnfs_block_layout, %struct.pnfs_block_layout* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock(i32* %77)
  %79 = load i32, i32* %12, align 4
  ret i32 %79
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.pnfs_block_extent* @ext_tree_first(i32*) #1

declare dso_local i64 @ext_tree_layoutupdate_size(%struct.pnfs_block_layout*, i64) #1

declare dso_local i32* @encode_scsi_range(%struct.pnfs_block_extent*, i32*) #1

declare dso_local i32* @encode_block_extent(%struct.pnfs_block_extent*, i32*) #1

declare dso_local %struct.pnfs_block_extent* @ext_tree_next(%struct.pnfs_block_extent*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

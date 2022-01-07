; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_discard.c_jfs_ioc_trim.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_discard.c_jfs_ioc_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.fstrim_range = type { i32, i32, i32 }
%struct.bmap = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.bmap*, %struct.inode* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jfs_ioc_trim(%struct.inode* %0, %struct.fstrim_range* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.fstrim_range*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.bmap*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.fstrim_range* %1, %struct.fstrim_range** %5, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  %18 = call %struct.TYPE_3__* @JFS_SBI(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %6, align 8
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load %struct.super_block*, %struct.super_block** %22, align 8
  %24 = call %struct.TYPE_3__* @JFS_SBI(%struct.super_block* %23)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.bmap*, %struct.bmap** %25, align 8
  store %struct.bmap* %26, %struct.bmap** %7, align 8
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load %struct.super_block*, %struct.super_block** %28, align 8
  store %struct.super_block* %29, %struct.super_block** %8, align 8
  store i32 0, i32* %14, align 4
  %30 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %31 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.super_block*, %struct.super_block** %8, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %32, %35
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %39 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.super_block*, %struct.super_block** %8, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %40, %43
  %45 = add nsw i32 %37, %44
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %12, align 4
  %47 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %48 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.super_block*, %struct.super_block** %8, align 8
  %51 = getelementptr inbounds %struct.super_block, %struct.super_block* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %49, %52
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %2
  store i32 1, i32* %13, align 4
  br label %57

57:                                               ; preds = %56, %2
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.bmap*, %struct.bmap** %7, align 8
  %60 = getelementptr inbounds %struct.bmap, %struct.bmap* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %77, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.bmap*, %struct.bmap** %7, align 8
  %66 = getelementptr inbounds %struct.bmap, %struct.bmap* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp sge i32 %64, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %63
  %70 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %71 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.super_block*, %struct.super_block** %8, align 8
  %74 = getelementptr inbounds %struct.super_block, %struct.super_block* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %69, %63, %57
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %127

80:                                               ; preds = %69
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.bmap*, %struct.bmap** %7, align 8
  %83 = getelementptr inbounds %struct.bmap, %struct.bmap* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp sge i32 %81, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load %struct.bmap*, %struct.bmap** %7, align 8
  %88 = getelementptr inbounds %struct.bmap, %struct.bmap* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %86, %80
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.inode*, %struct.inode** %4, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  %95 = load %struct.super_block*, %struct.super_block** %94, align 8
  %96 = call %struct.TYPE_3__* @JFS_SBI(%struct.super_block* %95)
  %97 = call i32 @BLKTOAG(i32 %92, %struct.TYPE_3__* %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.inode*, %struct.inode** %4, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 0
  %101 = load %struct.super_block*, %struct.super_block** %100, align 8
  %102 = call %struct.TYPE_3__* @JFS_SBI(%struct.super_block* %101)
  %103 = call i32 @BLKTOAG(i32 %98, %struct.TYPE_3__* %102)
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %108, %91
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp sle i32 %105, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %104
  %109 = load %struct.inode*, %struct.inode** %4, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i64 @dbDiscardAG(%struct.inode* %109, i32 %110, i32 %111)
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %104

119:                                              ; preds = %104
  %120 = load i32, i32* %14, align 4
  %121 = load %struct.super_block*, %struct.super_block** %8, align 8
  %122 = getelementptr inbounds %struct.super_block, %struct.super_block* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %120, %123
  %125 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %126 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %119, %77
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.TYPE_3__* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @BLKTOAG(i32, %struct.TYPE_3__*) #1

declare dso_local i64 @dbDiscardAG(%struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

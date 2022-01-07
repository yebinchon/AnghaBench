; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_inode.c_hfs_inode_read_fork.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_inode.c_hfs_inode_read_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.hfs_extent = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_inode_read_fork(%struct.inode* %0, %struct.hfs_extent* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.hfs_extent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.hfs_extent* %1, %struct.hfs_extent** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 1
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %11, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @be32_to_cpu(i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.hfs_extent*, %struct.hfs_extent** %7, align 8
  %25 = call i32 @memcpy(i32 %23, %struct.hfs_extent* %24, i32 4)
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %39, %5
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load %struct.hfs_extent*, %struct.hfs_extent** %7, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.hfs_extent, %struct.hfs_extent* %30, i64 %32
  %34 = getelementptr inbounds %struct.hfs_extent, %struct.hfs_extent* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @be16_to_cpu(i32 %35)
  %37 = load i64, i64* %13, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %13, align 8
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %14, align 4
  br label %26

42:                                               ; preds = %26
  %43 = load i64, i64* %13, align 8
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  store i64 %43, i64* %46, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  store i32 %47, i32* %52, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.super_block*, %struct.super_block** %11, align 8
  %55 = getelementptr inbounds %struct.super_block, %struct.super_block* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %53, %56
  %58 = sub nsw i32 %57, 1
  %59 = load %struct.super_block*, %struct.super_block** %11, align 8
  %60 = getelementptr inbounds %struct.super_block, %struct.super_block* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %58, %61
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.super_block*, %struct.super_block** %11, align 8
  %72 = getelementptr inbounds %struct.super_block, %struct.super_block* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %70, %73
  %75 = call i32 @inode_set_bytes(%struct.inode* %66, i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @be32_to_cpu(i32 %76)
  %78 = load %struct.super_block*, %struct.super_block** %11, align 8
  %79 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %78)
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sdiv i32 %77, %81
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %83)
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  store i32 %82, i32* %85, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.super_block*, %struct.super_block** %11, align 8
  %88 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %87)
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sdiv i32 %86, %90
  %92 = load %struct.inode*, %struct.inode** %6, align 8
  %93 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %92)
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  store i32 %91, i32* %94, align 4
  %95 = load %struct.inode*, %struct.inode** %6, align 8
  %96 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %95)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %42
  %101 = load %struct.super_block*, %struct.super_block** %11, align 8
  %102 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %101)
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.inode*, %struct.inode** %6, align 8
  %106 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %105)
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  store i32 %104, i32* %107, align 4
  br label %108

108:                                              ; preds = %100, %42
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, %struct.hfs_extent*, i32) #1

declare dso_local %struct.TYPE_4__* @HFS_I(%struct.inode*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @inode_set_bytes(%struct.inode*, i32) #1

declare dso_local %struct.TYPE_3__* @HFS_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

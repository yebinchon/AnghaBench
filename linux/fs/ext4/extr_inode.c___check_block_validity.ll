; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c___check_block_validity.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c___check_block_validity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.ext4_map_blocks = type { i32, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"lblock %lu mapped to illegal pblock %llu (length %d)\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i32, %struct.ext4_map_blocks*)* @__check_block_validity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__check_block_validity(%struct.inode* %0, i8* %1, i32 %2, %struct.ext4_map_blocks* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext4_map_blocks*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ext4_map_blocks* %3, %struct.ext4_map_blocks** %9, align 8
  %10 = load %struct.inode*, %struct.inode** %6, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @ext4_has_feature_journal(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %4
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_5__* @EXT4_SB(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @le32_to_cpu(i32 %26)
  %28 = icmp eq i64 %18, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %63

30:                                               ; preds = %15, %4
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.TYPE_5__* @EXT4_SB(i32 %33)
  %35 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %9, align 8
  %36 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %9, align 8
  %39 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ext4_data_block_valid(%struct.TYPE_5__* %34, i32 %37, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %30
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %9, align 8
  %48 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %9, align 8
  %51 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %9, align 8
  %54 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %9, align 8
  %57 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ext4_error_inode(%struct.inode* %44, i8* %45, i32 %46, i32 %49, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %52, i32 %55, i32 %58)
  %60 = load i32, i32* @EFSCORRUPTED, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %63

62:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %43, %29
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i64 @ext4_has_feature_journal(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_5__* @EXT4_SB(i32) #1

declare dso_local i32 @ext4_data_block_valid(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @ext4_error_inode(%struct.inode*, i8*, i32, i32, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ialloc.c_recently_deleted.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ialloc.c_recently_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_group_desc = type { i32 }
%struct.ext4_inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_2__ = type { i32 }

@RECENTCY_MIN = common dso_local global i32 0, align 4
@RECENTCY_DIRTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32)* @recently_deleted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recently_deleted(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext4_group_desc*, align 8
  %9 = alloca %struct.ext4_inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.super_block*, %struct.super_block** %5, align 8
  %18 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %21 = load i32, i32* @RECENTCY_MIN, align 4
  store i32 %21, i32* %14, align 4
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %22, i32 %23, i32* null)
  store %struct.ext4_group_desc* %24, %struct.ext4_group_desc** %8, align 8
  %25 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %26 = icmp ne %struct.ext4_group_desc* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %100

32:                                               ; preds = %3
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = load %struct.super_block*, %struct.super_block** %5, align 8
  %35 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %36 = call i64 @ext4_inode_table(%struct.super_block* %34, %struct.ext4_group_desc* %35)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %11, align 4
  %39 = sdiv i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %36, %40
  %42 = call %struct.buffer_head* @sb_find_get_block(%struct.super_block* %33, i64 %41)
  store %struct.buffer_head* %42, %struct.buffer_head** %10, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %44 = icmp ne %struct.buffer_head* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %47 = call i32 @buffer_uptodate(%struct.buffer_head* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45, %32
  br label %96

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %11, align 4
  %53 = srem i32 %51, %52
  %54 = load %struct.super_block*, %struct.super_block** %5, align 8
  %55 = call i32 @EXT4_INODE_SIZE(%struct.super_block* %54)
  %56 = mul nsw i32 %53, %55
  store i32 %56, i32* %12, align 4
  %57 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %58 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = inttoptr i64 %62 to %struct.ext4_inode*
  store %struct.ext4_inode* %63, %struct.ext4_inode** %9, align 8
  %64 = load %struct.ext4_inode*, %struct.ext4_inode** %9, align 8
  %65 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @le32_to_cpu(i32 %66)
  store i64 %67, i64* %15, align 8
  %68 = call i64 (...) @ktime_get_real_seconds()
  store i64 %68, i64* %16, align 8
  %69 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %70 = call i64 @buffer_dirty(%struct.buffer_head* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %50
  %73 = load i64, i64* @RECENTCY_DIRTY, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %14, align 4
  br label %78

78:                                               ; preds = %72, %50
  %79 = load i64, i64* %15, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %78
  %82 = load i64, i64* %15, align 8
  %83 = load i64, i64* %16, align 8
  %84 = call i64 @time_before32(i64 %82, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load i64, i64* %16, align 8
  %88 = load i64, i64* %15, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = call i64 @time_before32(i64 %87, i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  store i32 1, i32* %13, align 4
  br label %95

95:                                               ; preds = %94, %86, %81, %78
  br label %96

96:                                               ; preds = %95, %49
  %97 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %98 = call i32 @brelse(%struct.buffer_head* %97)
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %96, %31
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.TYPE_2__* @EXT4_SB(%struct.super_block*) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.buffer_head* @sb_find_get_block(%struct.super_block*, i64) #1

declare dso_local i64 @ext4_inode_table(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @EXT4_INODE_SIZE(%struct.super_block*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ktime_get_real_seconds(...) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @time_before32(i64, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

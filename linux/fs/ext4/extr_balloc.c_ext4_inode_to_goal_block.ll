; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_ext4_inode_to_goal_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_ext4_inode_to_goal_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.inode = type { i32, i32 }
%struct.ext4_inode_info = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EXT4_FLEX_SIZE_DIR_ALLOC_SCHEME = common dso_local global i32 0, align 4
@DELALLOC = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext4_inode_to_goal_block(%struct.inode* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ext4_inode_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %10)
  store %struct.ext4_inode_info* %11, %struct.ext4_inode_info** %4, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_4__* @EXT4_SB(i32 %14)
  %16 = call i32 @ext4_flex_bg_size(%struct.TYPE_4__* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %18 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @EXT4_FLEX_SIZE_DIR_ALLOC_SCHEME, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 1
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @S_ISREG(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %23
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @ext4_group_first_block_no(i32 %41, i32 %42)
  store i64 %43, i64* %8, align 8
  %44 = load %struct.inode*, %struct.inode** %3, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.TYPE_4__* @EXT4_SB(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ext4_blocks_count(i32 %49)
  %51 = sub nsw i64 %50, 1
  store i64 %51, i64* %9, align 8
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DELALLOC, align 4
  %56 = call i64 @test_opt(i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %38
  %59 = load i64, i64* %8, align 8
  store i64 %59, i64* %2, align 8
  br label %98

60:                                               ; preds = %38
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.inode*, %struct.inode** %3, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @EXT4_BLOCKS_PER_GROUP(i32 %64)
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %61, %66
  %68 = load i64, i64* %9, align 8
  %69 = icmp sle i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %60
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = srem i32 %73, 16
  %75 = load %struct.inode*, %struct.inode** %3, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @EXT4_BLOCKS_PER_GROUP(i32 %77)
  %79 = sdiv i32 %78, 16
  %80 = mul nsw i32 %74, %79
  store i32 %80, i32* %6, align 4
  br label %93

81:                                               ; preds = %60
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = srem i32 %84, 16
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %8, align 8
  %89 = sub nsw i64 %87, %88
  %90 = sdiv i64 %89, 16
  %91 = mul nsw i64 %86, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %81, %70
  %94 = load i64, i64* %8, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  store i64 %97, i64* %2, align 8
  br label %98

98:                                               ; preds = %93, %58
  %99 = load i64, i64* %2, align 8
  ret i64 %99
}

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_flex_bg_size(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @EXT4_SB(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @ext4_group_first_block_no(i32, i32) #1

declare dso_local i64 @ext4_blocks_count(i32) #1

declare dso_local i64 @test_opt(i32, i32) #1

declare dso_local i32 @EXT4_BLOCKS_PER_GROUP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

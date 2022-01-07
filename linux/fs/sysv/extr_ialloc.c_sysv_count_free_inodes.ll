; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_ialloc.c_sysv_count_free_inodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_ialloc.c_sysv_count_free_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.sysv_sb_info = type { i32, i32, i32*, i32 }
%struct.buffer_head = type { i32 }
%struct.sysv_inode = type { i64, i64 }

@SYSV_ROOT_INO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"sysv_count_free_inodes: free inode count was %d, correcting to %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"sysv_count_free_inodes: unable to read inode table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sysv_count_free_inodes(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.sysv_sb_info*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.sysv_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %9 = load %struct.super_block*, %struct.super_block** %2, align 8
  %10 = call %struct.sysv_sb_info* @SYSV_SB(%struct.super_block* %9)
  store %struct.sysv_sb_info* %10, %struct.sysv_sb_info** %3, align 8
  %11 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %12 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %11, i32 0, i32 3
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %15 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %16 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %14, i32 %18)
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %20 = load i32, i32* @SYSV_ROOT_INO, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = load %struct.super_block*, %struct.super_block** %2, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.sysv_inode* @sysv_raw_inode(%struct.super_block* %22, i32 %23, %struct.buffer_head** %4)
  store %struct.sysv_inode* %24, %struct.sysv_inode** %5, align 8
  %25 = load %struct.sysv_inode*, %struct.sysv_inode** %5, align 8
  %26 = icmp ne %struct.sysv_inode* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %102

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %69, %28
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %32 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sle i32 %30, %33
  br i1 %34, label %35, label %70

35:                                               ; preds = %29
  %36 = load %struct.sysv_inode*, %struct.sysv_inode** %5, align 8
  %37 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.sysv_inode*, %struct.sysv_inode** %5, align 8
  %42 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %45, %40, %35
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  %51 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %52 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %49, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %48
  %57 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %58 = call i32 @brelse(%struct.buffer_head* %57)
  %59 = load %struct.super_block*, %struct.super_block** %2, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call %struct.sysv_inode* @sysv_raw_inode(%struct.super_block* %59, i32 %60, %struct.buffer_head** %4)
  store %struct.sysv_inode* %61, %struct.sysv_inode** %5, align 8
  %62 = load %struct.sysv_inode*, %struct.sysv_inode** %5, align 8
  %63 = icmp ne %struct.sysv_inode* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %56
  br label %102

65:                                               ; preds = %56
  br label %69

66:                                               ; preds = %48
  %67 = load %struct.sysv_inode*, %struct.sysv_inode** %5, align 8
  %68 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %67, i32 1
  store %struct.sysv_inode* %68, %struct.sysv_inode** %5, align 8
  br label %69

69:                                               ; preds = %66, %65
  br label %29

70:                                               ; preds = %29
  %71 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %72 = call i32 @brelse(%struct.buffer_head* %71)
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %84

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %104, %101, %77
  %79 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %80 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %79, i32 0, i32 3
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  ret i64 %83

84:                                               ; preds = %76
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load %struct.super_block*, %struct.super_block** %2, align 8
  %89 = call i32 @sb_rdonly(%struct.super_block* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %84
  %92 = load %struct.super_block*, %struct.super_block** %2, align 8
  %93 = call %struct.sysv_sb_info* @SYSV_SB(%struct.super_block* %92)
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @cpu_to_fs16(%struct.sysv_sb_info* %93, i32 %94)
  %96 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %97 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  store i32 %95, i32* %98, align 4
  %99 = load %struct.super_block*, %struct.super_block** %2, align 8
  %100 = call i32 @dirty_sb(%struct.super_block* %99)
  br label %101

101:                                              ; preds = %91, %84
  br label %78

102:                                              ; preds = %64, %27
  %103 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %7, align 4
  br label %78
}

declare dso_local %struct.sysv_sb_info* @SYSV_SB(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fs16_to_cpu(%struct.sysv_sb_info*, i32) #1

declare dso_local %struct.sysv_inode* @sysv_raw_inode(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @cpu_to_fs16(%struct.sysv_sb_info*, i32) #1

declare dso_local i32 @dirty_sb(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

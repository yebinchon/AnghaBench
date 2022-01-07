; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_ext4_add_new_descs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_ext4_add_new_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.ext4_sb_info = type { %struct.buffer_head**, %struct.ext4_super_block* }
%struct.buffer_head = type { i32 }
%struct.ext4_super_block = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.super_block*, i32, %struct.inode*, i32)* @ext4_add_new_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_add_new_descs(i32* %0, %struct.super_block* %1, i32 %2, %struct.inode* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext4_sb_info*, align 8
  %12 = alloca %struct.ext4_super_block*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.super_block* %1, %struct.super_block** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.inode* %3, %struct.inode** %9, align 8
  store i32 %4, i32* %10, align 4
  %20 = load %struct.super_block*, %struct.super_block** %7, align 8
  %21 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %20)
  store %struct.ext4_sb_info* %21, %struct.ext4_sb_info** %11, align 8
  %22 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %11, align 8
  %23 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %22, i32 0, i32 1
  %24 = load %struct.ext4_super_block*, %struct.ext4_super_block** %23, align 8
  store %struct.ext4_super_block* %24, %struct.ext4_super_block** %12, align 8
  store i32 0, i32* %17, align 4
  %25 = load %struct.super_block*, %struct.super_block** %7, align 8
  %26 = call i32 @ext4_has_feature_meta_bg(%struct.super_block* %25)
  store i32 %26, i32* %18, align 4
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %102, %5
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %107

31:                                               ; preds = %27
  %32 = load %struct.super_block*, %struct.super_block** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @ext4_bg_has_super(%struct.super_block* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.ext4_super_block*, %struct.ext4_super_block** %12, align 8
  %38 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  br label %42

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %36
  %43 = phi i32 [ %40, %36 ], [ 0, %41 ]
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.super_block*, %struct.super_block** %7, align 8
  %46 = call i32 @EXT4_DESC_PER_BLOCK(%struct.super_block* %45)
  %47 = srem i32 %44, %46
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.super_block*, %struct.super_block** %7, align 8
  %50 = call i32 @EXT4_DESC_PER_BLOCK(%struct.super_block* %49)
  %51 = sdiv i32 %48, %50
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %42
  %55 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %11, align 8
  %56 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %55, i32 0, i32 0
  %57 = load %struct.buffer_head**, %struct.buffer_head*** %56, align 8
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %57, i64 %59
  %61 = load %struct.buffer_head*, %struct.buffer_head** %60, align 8
  store %struct.buffer_head* %61, %struct.buffer_head** %13, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %63 = call i32 @BUFFER_TRACE(%struct.buffer_head* %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %66 = call i32 @ext4_journal_get_write_access(i32* %64, %struct.buffer_head* %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %54
  %70 = load i32, i32* %19, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load %struct.super_block*, %struct.super_block** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @ext4_bg_num_gdb(%struct.super_block* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i32*, i32** %6, align 8
  %79 = load %struct.inode*, %struct.inode** %9, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @reserve_backup_gdb(i32* %78, %struct.inode* %79, i32 %80)
  store i32 %81, i32* %17, align 4
  br label %82

82:                                               ; preds = %77, %72, %69, %54
  br label %97

83:                                               ; preds = %42
  %84 = load i32, i32* %18, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load %struct.super_block*, %struct.super_block** %7, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @add_new_gdb_meta_bg(%struct.super_block* %87, i32* %88, i32 %89)
  store i32 %90, i32* %17, align 4
  br label %96

91:                                               ; preds = %83
  %92 = load i32*, i32** %6, align 8
  %93 = load %struct.inode*, %struct.inode** %9, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @add_new_gdb(i32* %92, %struct.inode* %93, i32 %94)
  store i32 %95, i32* %17, align 4
  br label %96

96:                                               ; preds = %91, %86
  br label %97

97:                                               ; preds = %96, %82
  %98 = load i32, i32* %17, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %107

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %27

107:                                              ; preds = %100, %27
  %108 = load i32, i32* %17, align 4
  ret i32 %108
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_has_feature_meta_bg(%struct.super_block*) #1

declare dso_local i64 @ext4_bg_has_super(%struct.super_block*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @EXT4_DESC_PER_BLOCK(%struct.super_block*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i64 @ext4_bg_num_gdb(%struct.super_block*, i32) #1

declare dso_local i32 @reserve_backup_gdb(i32*, %struct.inode*, i32) #1

declare dso_local i32 @add_new_gdb_meta_bg(%struct.super_block*, i32*, i32) #1

declare dso_local i32 @add_new_gdb(i32*, %struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

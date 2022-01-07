; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_set_flexbg_block_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_set_flexbg_block_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_new_flex_group_data = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ext4_sb_info = type { i32 }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"mark clusters [%llu-%llu] used\0A\00", align 1
@EXT4_BG_BLOCK_UNINIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"mark block bitmap %#04llx (+%llu/%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, %struct.ext4_new_flex_group_data*, i64, i64)* @set_flexbg_block_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_flexbg_block_bitmap(%struct.super_block* %0, i32* %1, %struct.ext4_new_flex_group_data* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ext4_new_flex_group_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ext4_sb_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.ext4_new_flex_group_data* %2, %struct.ext4_new_flex_group_data** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load %struct.super_block*, %struct.super_block** %7, align 8
  %20 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %19)
  store %struct.ext4_sb_info* %20, %struct.ext4_sb_info** %12, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %10, align 8
  %23 = sub nsw i64 %21, %22
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = call i32 (i8*, i64, i64, ...) @ext4_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %26)
  %28 = load i64, i64* %13, align 8
  store i64 %28, i64* %14, align 8
  br label %29

29:                                               ; preds = %143, %5
  %30 = load i64, i64* %13, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %150

32:                                               ; preds = %29
  %33 = load %struct.super_block*, %struct.super_block** %7, align 8
  %34 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %12, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @EXT4_C2B(%struct.ext4_sb_info* %34, i64 %35)
  %37 = call i64 @ext4_get_group_number(%struct.super_block* %33, i32 %36)
  store i64 %37, i64* %17, align 8
  %38 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %12, align 8
  %39 = load %struct.super_block*, %struct.super_block** %7, align 8
  %40 = load i64, i64* %17, align 8
  %41 = call i32 @ext4_group_first_block_no(%struct.super_block* %39, i64 %40)
  %42 = call i64 @EXT4_B2C(%struct.ext4_sb_info* %38, i32 %41)
  store i64 %42, i64* %15, align 8
  %43 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %9, align 8
  %44 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %17, align 8
  %50 = sub nsw i64 %49, %48
  store i64 %50, i64* %17, align 8
  %51 = load %struct.super_block*, %struct.super_block** %7, align 8
  %52 = call i64 @EXT4_CLUSTERS_PER_GROUP(%struct.super_block* %51)
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %15, align 8
  %55 = sub nsw i64 %53, %54
  %56 = sub nsw i64 %52, %55
  store i64 %56, i64* %14, align 8
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %13, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %32
  %61 = load i64, i64* %13, align 8
  store i64 %61, i64* %14, align 8
  br label %62

62:                                               ; preds = %60, %32
  %63 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %9, align 8
  %64 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %17, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @EXT4_BG_BLOCK_UNINIT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %62
  %73 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %9, align 8
  %74 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %75, 1
  %77 = zext i1 %76 to i32
  %78 = call i32 @BUG_ON(i32 %77)
  br label %143

79:                                               ; preds = %62
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @extend_or_restart_transaction(i32* %80, i32 1)
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %18, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %18, align 4
  store i32 %85, i32* %6, align 4
  br label %151

86:                                               ; preds = %79
  %87 = load %struct.super_block*, %struct.super_block** %7, align 8
  %88 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %9, align 8
  %89 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %88, i32 0, i32 2
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i64, i64* %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %87, i32 %94)
  store %struct.buffer_head* %95, %struct.buffer_head** %16, align 8
  %96 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %97 = icmp ne %struct.buffer_head* %96, null
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %86
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  br label %151

105:                                              ; preds = %86
  %106 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %107 = call i32 @BUFFER_TRACE(%struct.buffer_head* %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i32*, i32** %8, align 8
  %109 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %110 = call i32 @ext4_journal_get_write_access(i32* %108, %struct.buffer_head* %109)
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %18, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %115 = call i32 @brelse(%struct.buffer_head* %114)
  %116 = load i32, i32* %18, align 4
  store i32 %116, i32* %6, align 4
  br label %151

117:                                              ; preds = %105
  %118 = load i64, i64* %10, align 8
  %119 = load i64, i64* %10, align 8
  %120 = load i64, i64* %15, align 8
  %121 = sub nsw i64 %119, %120
  %122 = load i64, i64* %14, align 8
  %123 = call i32 (i8*, i64, i64, ...) @ext4_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %118, i64 %121, i64 %122)
  %124 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %125 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* %15, align 8
  %129 = sub nsw i64 %127, %128
  %130 = load i64, i64* %14, align 8
  %131 = call i32 @ext4_set_bits(i32 %126, i64 %129, i64 %130)
  %132 = load i32*, i32** %8, align 8
  %133 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %134 = call i32 @ext4_handle_dirty_metadata(i32* %132, i32* null, %struct.buffer_head* %133)
  store i32 %134, i32* %18, align 4
  %135 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %136 = call i32 @brelse(%struct.buffer_head* %135)
  %137 = load i32, i32* %18, align 4
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %117
  %141 = load i32, i32* %18, align 4
  store i32 %141, i32* %6, align 4
  br label %151

142:                                              ; preds = %117
  br label %143

143:                                              ; preds = %142, %72
  %144 = load i64, i64* %14, align 8
  %145 = load i64, i64* %13, align 8
  %146 = sub nsw i64 %145, %144
  store i64 %146, i64* %13, align 8
  %147 = load i64, i64* %14, align 8
  %148 = load i64, i64* %10, align 8
  %149 = add nsw i64 %148, %147
  store i64 %149, i64* %10, align 8
  br label %29

150:                                              ; preds = %29
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %150, %140, %113, %102, %84
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_debug(i8*, i64, i64, ...) #1

declare dso_local i64 @ext4_get_group_number(%struct.super_block*, i32) #1

declare dso_local i32 @EXT4_C2B(%struct.ext4_sb_info*, i64) #1

declare dso_local i64 @EXT4_B2C(%struct.ext4_sb_info*, i32) #1

declare dso_local i32 @ext4_group_first_block_no(%struct.super_block*, i64) #1

declare dso_local i64 @EXT4_CLUSTERS_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @extend_or_restart_transaction(i32*, i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ext4_set_bits(i32, i64, i64) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

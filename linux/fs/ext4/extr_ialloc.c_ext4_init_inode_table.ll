; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ialloc.c_ext4_init_inode_table.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ialloc.c_ext4_init_inode_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_group_info = type { i32 }
%struct.ext4_sb_info = type { i32, i32 }
%struct.ext4_group_desc = type { i32 }
%struct.buffer_head = type { i32 }

@EXT4_BG_INODE_ZEROED = common dso_local global i32 0, align 4
@EXT4_HT_MISC = common dso_local global i32 0, align 4
@EXT4_BG_INODE_UNINIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"Something is wrong with group %u: used itable blocks: %d; itable unused count: %u\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"going to zero out inode table in group %d\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"call ext4_handle_dirty_metadata\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_init_inode_table(%struct.super_block* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext4_group_info*, align 8
  %8 = alloca %struct.ext4_sb_info*, align 8
  %9 = alloca %struct.ext4_group_desc*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call %struct.ext4_group_info* @ext4_get_group_info(%struct.super_block* %16, i64 %17)
  store %struct.ext4_group_info* %18, %struct.ext4_group_info** %7, align 8
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %19)
  store %struct.ext4_sb_info* %20, %struct.ext4_sb_info** %8, align 8
  store %struct.ext4_group_desc* null, %struct.ext4_group_desc** %9, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = load %struct.super_block*, %struct.super_block** %4, align 8
  %22 = call i64 @sb_rdonly(%struct.super_block* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 1, i32* %14, align 4
  br label %179

25:                                               ; preds = %3
  %26 = load %struct.super_block*, %struct.super_block** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %26, i64 %27, %struct.buffer_head** %10)
  store %struct.ext4_group_desc* %28, %struct.ext4_group_desc** %9, align 8
  %29 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %30 = icmp ne %struct.ext4_group_desc* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %179

32:                                               ; preds = %25
  %33 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %34 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @EXT4_BG_INODE_ZEROED, align 4
  %37 = call i32 @cpu_to_le16(i32 %36)
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %179

41:                                               ; preds = %32
  %42 = load %struct.super_block*, %struct.super_block** %4, align 8
  %43 = load i32, i32* @EXT4_HT_MISC, align 4
  %44 = call i32* @ext4_journal_start_sb(%struct.super_block* %42, i32 %43, i32 1)
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = call i64 @IS_ERR(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @PTR_ERR(i32* %49)
  store i32 %50, i32* %14, align 4
  br label %179

51:                                               ; preds = %41
  %52 = load %struct.ext4_group_info*, %struct.ext4_group_info** %7, align 8
  %53 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %52, i32 0, i32 0
  %54 = call i32 @down_write(i32* %53)
  %55 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %56 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @EXT4_BG_INODE_UNINIT, align 4
  %59 = call i32 @cpu_to_le16(i32 %58)
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %51
  %63 = load %struct.super_block*, %struct.super_block** %4, align 8
  %64 = call i64 @EXT4_INODES_PER_GROUP(%struct.super_block* %63)
  %65 = load %struct.super_block*, %struct.super_block** %4, align 8
  %66 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %67 = call i64 @ext4_itable_unused_count(%struct.super_block* %65, %struct.ext4_group_desc* %66)
  %68 = sub nsw i64 %64, %67
  %69 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %70 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @DIV_ROUND_UP(i64 %68, i32 %71)
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %62, %51
  %74 = load i32, i32* %15, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %95, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %15, align 4
  %78 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %79 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %77, %80
  br i1 %81, label %95, label %82

82:                                               ; preds = %76
  %83 = load i64, i64* %5, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %82
  %86 = load %struct.super_block*, %struct.super_block** %4, align 8
  %87 = call i64 @EXT4_INODES_PER_GROUP(%struct.super_block* %86)
  %88 = load %struct.super_block*, %struct.super_block** %4, align 8
  %89 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %90 = call i64 @ext4_itable_unused_count(%struct.super_block* %88, %struct.ext4_group_desc* %89)
  %91 = sub nsw i64 %87, %90
  %92 = load %struct.super_block*, %struct.super_block** %4, align 8
  %93 = call i64 @EXT4_FIRST_INO(%struct.super_block* %92)
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %85, %76, %73
  %96 = load %struct.super_block*, %struct.super_block** %4, align 8
  %97 = load i64, i64* %5, align 8
  %98 = load i32, i32* %15, align 4
  %99 = load %struct.super_block*, %struct.super_block** %4, align 8
  %100 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %101 = call i64 @ext4_itable_unused_count(%struct.super_block* %99, %struct.ext4_group_desc* %100)
  %102 = call i32 @ext4_error(%struct.super_block* %96, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i64 %97, i32 %98, i64 %101)
  store i32 1, i32* %14, align 4
  br label %173

103:                                              ; preds = %85, %82
  %104 = load %struct.super_block*, %struct.super_block** %4, align 8
  %105 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %106 = call i64 @ext4_inode_table(%struct.super_block* %104, %struct.ext4_group_desc* %105)
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  store i64 %109, i64* %12, align 8
  %110 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %111 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %15, align 4
  %114 = sub nsw i32 %112, %113
  store i32 %114, i32* %13, align 4
  %115 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %116 = call i32 @BUFFER_TRACE(%struct.buffer_head* %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %117 = load i32*, i32** %11, align 8
  %118 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %119 = call i32 @ext4_journal_get_write_access(i32* %117, %struct.buffer_head* %118)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %103
  br label %173

123:                                              ; preds = %103
  %124 = load i32, i32* %13, align 4
  %125 = icmp eq i32 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %151

130:                                              ; preds = %123
  %131 = load i64, i64* %5, align 8
  %132 = call i32 @ext4_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %131)
  %133 = load %struct.super_block*, %struct.super_block** %4, align 8
  %134 = load i64, i64* %12, align 8
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @GFP_NOFS, align 4
  %137 = call i32 @sb_issue_zeroout(%struct.super_block* %133, i64 %134, i32 %135, i32 %136)
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  br label %173

141:                                              ; preds = %130
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load %struct.super_block*, %struct.super_block** %4, align 8
  %146 = getelementptr inbounds %struct.super_block, %struct.super_block* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @GFP_NOFS, align 4
  %149 = call i32 @blkdev_issue_flush(i32 %147, i32 %148, i32* null)
  br label %150

150:                                              ; preds = %144, %141
  br label %151

151:                                              ; preds = %150, %129
  %152 = load %struct.super_block*, %struct.super_block** %4, align 8
  %153 = load i64, i64* %5, align 8
  %154 = call i32 @ext4_lock_group(%struct.super_block* %152, i64 %153)
  %155 = load i32, i32* @EXT4_BG_INODE_ZEROED, align 4
  %156 = call i32 @cpu_to_le16(i32 %155)
  %157 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %158 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load %struct.super_block*, %struct.super_block** %4, align 8
  %162 = load i64, i64* %5, align 8
  %163 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %164 = call i32 @ext4_group_desc_csum_set(%struct.super_block* %161, i64 %162, %struct.ext4_group_desc* %163)
  %165 = load %struct.super_block*, %struct.super_block** %4, align 8
  %166 = load i64, i64* %5, align 8
  %167 = call i32 @ext4_unlock_group(%struct.super_block* %165, i64 %166)
  %168 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %169 = call i32 @BUFFER_TRACE(%struct.buffer_head* %168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %170 = load i32*, i32** %11, align 8
  %171 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %172 = call i32 @ext4_handle_dirty_metadata(i32* %170, i32* null, %struct.buffer_head* %171)
  store i32 %172, i32* %14, align 4
  br label %173

173:                                              ; preds = %151, %140, %122, %95
  %174 = load %struct.ext4_group_info*, %struct.ext4_group_info** %7, align 8
  %175 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %174, i32 0, i32 0
  %176 = call i32 @up_write(i32* %175)
  %177 = load i32*, i32** %11, align 8
  %178 = call i32 @ext4_journal_stop(i32* %177)
  br label %179

179:                                              ; preds = %173, %48, %40, %31, %24
  %180 = load i32, i32* %14, align 4
  ret i32 %180
}

declare dso_local %struct.ext4_group_info* @ext4_get_group_info(%struct.super_block*, i64) #1

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i64, %struct.buffer_head**) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32* @ext4_journal_start_sb(%struct.super_block*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @EXT4_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local i64 @ext4_itable_unused_count(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i64 @EXT4_FIRST_INO(%struct.super_block*) #1

declare dso_local i32 @ext4_error(%struct.super_block*, i8*, i64, i32, i64) #1

declare dso_local i64 @ext4_inode_table(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_debug(i8*, i64) #1

declare dso_local i32 @sb_issue_zeroout(%struct.super_block*, i64, i32, i32) #1

declare dso_local i32 @blkdev_issue_flush(i32, i32, i32*) #1

declare dso_local i32 @ext4_lock_group(%struct.super_block*, i64) #1

declare dso_local i32 @ext4_group_desc_csum_set(%struct.super_block*, i64, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_unlock_group(%struct.super_block*, i64) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, i32*, %struct.buffer_head*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

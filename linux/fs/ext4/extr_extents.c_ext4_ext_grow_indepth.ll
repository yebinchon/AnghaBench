; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_grow_indepth.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_grow_indepth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.ext4_extent_header = type { i64, i8*, i8*, i32 }
%struct.buffer_head = type { i64 }
%struct.ext4_super_block = type { i32 }
%struct.TYPE_12__ = type { %struct.ext4_super_block* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@EXT4_MB_HINT_TRY_GOAL = common dso_local global i32 0, align 4
@__GFP_MOVABLE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EXT4_EXT_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"new root: num %d(%d), lblock %d, ptr %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i32)* @ext4_ext_grow_indepth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_grow_indepth(i32* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext4_extent_header*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ext4_super_block*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %11, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = call %struct.TYPE_12__* @EXT4_SB(%struct.TYPE_9__* %17)
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load %struct.ext4_super_block*, %struct.ext4_super_block** %19, align 8
  store %struct.ext4_super_block* %20, %struct.ext4_super_block** %12, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call i64 @ext_depth(%struct.inode* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = call %struct.ext4_extent_header* @ext_inode_hdr(%struct.inode* %25)
  %27 = call %struct.TYPE_10__* @EXT_FIRST_INDEX(%struct.ext4_extent_header* %26)
  %28 = call i64 @ext4_idx_pblock(%struct.TYPE_10__* %27)
  store i64 %28, i64* %11, align 8
  br label %29

29:                                               ; preds = %24, %3
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.ext4_super_block*, %struct.ext4_super_block** %12, align 8
  %32 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @le32_to_cpu(i32 %33)
  %35 = icmp sgt i64 %30, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i32, i32* @EXT4_MB_HINT_TRY_GOAL, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load i64, i64* %11, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %11, align 8
  br label %45

42:                                               ; preds = %29
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = call i64 @ext4_inode_to_goal_block(%struct.inode* %43)
  store i64 %44, i64* %11, align 8
  br label %45

45:                                               ; preds = %42, %36
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @ext4_new_meta_blocks(i32* %46, %struct.inode* %47, i64 %48, i32 %49, i32* null, i32* %13)
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %4, align 4
  br label %197

55:                                               ; preds = %45
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i32, i32* @__GFP_MOVABLE, align 4
  %61 = load i32, i32* @GFP_NOFS, align 4
  %62 = or i32 %60, %61
  %63 = call %struct.buffer_head* @sb_getblk_gfp(%struct.TYPE_9__* %58, i64 %59, i32 %62)
  store %struct.buffer_head* %63, %struct.buffer_head** %9, align 8
  %64 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %65 = icmp ne %struct.buffer_head* %64, null
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %55
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %197

73:                                               ; preds = %55
  %74 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %75 = call i32 @lock_buffer(%struct.buffer_head* %74)
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %78 = call i32 @ext4_journal_get_create_access(i32* %76, %struct.buffer_head* %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %83 = call i32 @unlock_buffer(%struct.buffer_head* %82)
  br label %193

84:                                               ; preds = %73
  store i64 4, i64* %14, align 8
  %85 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %86 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.inode*, %struct.inode** %6, align 8
  %89 = call %struct.TYPE_13__* @EXT4_I(%struct.inode* %88)
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* %14, align 8
  %93 = call i32 @memmove(i64 %87, i32 %91, i64 %92)
  %94 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %95 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %14, align 8
  %98 = add i64 %96, %97
  %99 = load %struct.inode*, %struct.inode** %6, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 0
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %14, align 8
  %105 = sub i64 %103, %104
  %106 = call i32 @memset(i64 %98, i32 0, i64 %105)
  %107 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %108 = call %struct.ext4_extent_header* @ext_block_hdr(%struct.buffer_head* %107)
  store %struct.ext4_extent_header* %108, %struct.ext4_extent_header** %8, align 8
  %109 = load %struct.inode*, %struct.inode** %6, align 8
  %110 = call i64 @ext_depth(%struct.inode* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %84
  %113 = load %struct.inode*, %struct.inode** %6, align 8
  %114 = call i32 @ext4_ext_space_block_idx(%struct.inode* %113, i32 0)
  %115 = call i8* @cpu_to_le16(i32 %114)
  %116 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %117 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  br label %124

118:                                              ; preds = %84
  %119 = load %struct.inode*, %struct.inode** %6, align 8
  %120 = call i32 @ext4_ext_space_block(%struct.inode* %119, i32 0)
  %121 = call i8* @cpu_to_le16(i32 %120)
  %122 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %123 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  br label %124

124:                                              ; preds = %118, %112
  %125 = load i32, i32* @EXT4_EXT_MAGIC, align 4
  %126 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %127 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 8
  %128 = load %struct.inode*, %struct.inode** %6, align 8
  %129 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %130 = call i32 @ext4_extent_block_csum_set(%struct.inode* %128, %struct.ext4_extent_header* %129)
  %131 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %132 = call i32 @set_buffer_uptodate(%struct.buffer_head* %131)
  %133 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %134 = call i32 @unlock_buffer(%struct.buffer_head* %133)
  %135 = load i32*, i32** %5, align 8
  %136 = load %struct.inode*, %struct.inode** %6, align 8
  %137 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %138 = call i32 @ext4_handle_dirty_metadata(i32* %135, %struct.inode* %136, %struct.buffer_head* %137)
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %124
  br label %193

142:                                              ; preds = %124
  %143 = load %struct.inode*, %struct.inode** %6, align 8
  %144 = call %struct.ext4_extent_header* @ext_inode_hdr(%struct.inode* %143)
  store %struct.ext4_extent_header* %144, %struct.ext4_extent_header** %8, align 8
  %145 = call i8* @cpu_to_le16(i32 1)
  %146 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %147 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %146, i32 0, i32 2
  store i8* %145, i8** %147, align 8
  %148 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %149 = call %struct.TYPE_10__* @EXT_FIRST_INDEX(%struct.ext4_extent_header* %148)
  %150 = load i64, i64* %10, align 8
  %151 = call i32 @ext4_idx_store_pblock(%struct.TYPE_10__* %149, i64 %150)
  %152 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %153 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %142
  %157 = load %struct.inode*, %struct.inode** %6, align 8
  %158 = call i32 @ext4_ext_space_root_idx(%struct.inode* %157, i32 0)
  %159 = call i8* @cpu_to_le16(i32 %158)
  %160 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %161 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  %162 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %163 = call %struct.TYPE_11__* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %162)
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %167 = call %struct.TYPE_10__* @EXT_FIRST_INDEX(%struct.ext4_extent_header* %166)
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  store i32 %165, i32* %168, align 4
  br label %169

169:                                              ; preds = %156, %142
  %170 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %171 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %170, i32 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @le16_to_cpu(i8* %172)
  %174 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %175 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %174, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @le16_to_cpu(i8* %176)
  %178 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %179 = call %struct.TYPE_10__* @EXT_FIRST_INDEX(%struct.ext4_extent_header* %178)
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @le32_to_cpu(i32 %181)
  %183 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %184 = call %struct.TYPE_10__* @EXT_FIRST_INDEX(%struct.ext4_extent_header* %183)
  %185 = call i64 @ext4_idx_pblock(%struct.TYPE_10__* %184)
  %186 = call i32 @ext_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %173, i32 %177, i64 %182, i64 %185)
  %187 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %188 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %187, i32 0, i32 0
  %189 = call i32 @le16_add_cpu(i64* %188, i32 1)
  %190 = load i32*, i32** %5, align 8
  %191 = load %struct.inode*, %struct.inode** %6, align 8
  %192 = call i32 @ext4_mark_inode_dirty(i32* %190, %struct.inode* %191)
  br label %193

193:                                              ; preds = %169, %141, %81
  %194 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %195 = call i32 @brelse(%struct.buffer_head* %194)
  %196 = load i32, i32* %13, align 4
  store i32 %196, i32* %4, align 4
  br label %197

197:                                              ; preds = %193, %70, %53
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local %struct.TYPE_12__* @EXT4_SB(%struct.TYPE_9__*) #1

declare dso_local i64 @ext_depth(%struct.inode*) #1

declare dso_local i64 @ext4_idx_pblock(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @EXT_FIRST_INDEX(%struct.ext4_extent_header*) #1

declare dso_local %struct.ext4_extent_header* @ext_inode_hdr(%struct.inode*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ext4_inode_to_goal_block(%struct.inode*) #1

declare dso_local i64 @ext4_new_meta_blocks(i32*, %struct.inode*, i64, i32, i32*, i32*) #1

declare dso_local %struct.buffer_head* @sb_getblk_gfp(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @ext4_journal_get_create_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memmove(i64, i32, i64) #1

declare dso_local %struct.TYPE_13__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local %struct.ext4_extent_header* @ext_block_hdr(%struct.buffer_head*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_ext_space_block_idx(%struct.inode*, i32) #1

declare dso_local i32 @ext4_ext_space_block(%struct.inode*, i32) #1

declare dso_local i32 @ext4_extent_block_csum_set(%struct.inode*, %struct.ext4_extent_header*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_idx_store_pblock(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @ext4_ext_space_root_idx(%struct.inode*, i32) #1

declare dso_local %struct.TYPE_11__* @EXT_FIRST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local i32 @ext_debug(i8*, i32, i32, i64, i64) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @le16_add_cpu(i64*, i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

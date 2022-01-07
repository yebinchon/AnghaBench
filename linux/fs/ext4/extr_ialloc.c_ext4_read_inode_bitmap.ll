; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ialloc.c_ext4_read_inode_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ialloc.c_ext4_read_inode_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32 }
%struct.super_block = type { i32 }
%struct.ext4_group_desc = type { i32 }
%struct.ext4_sb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EFSCORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Invalid inode bitmap blk %llu in block_group %u\00", align 1
@EXT4_GROUP_INFO_IBITMAP_CORRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Cannot read inode bitmap - block_group = %u, inode_bitmap = %llu\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EXT4_BG_INODE_UNINIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Inode bitmap for bg 0 marked uninitialized\00", align 1
@ext4_end_bitmap_read = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.super_block*, i64)* @ext4_read_inode_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @ext4_read_inode_bitmap(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ext4_group_desc*, align 8
  %7 = alloca %struct.ext4_sb_info*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %11)
  store %struct.ext4_sb_info* %12, %struct.ext4_sb_info** %7, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %13, i64 %14, i32* null)
  store %struct.ext4_group_desc* %15, %struct.ext4_group_desc** %6, align 8
  %16 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %6, align 8
  %17 = icmp ne %struct.ext4_group_desc* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EFSCORRUPTED, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.buffer_head* @ERR_PTR(i32 %20)
  store %struct.buffer_head* %21, %struct.buffer_head** %3, align 8
  br label %207

22:                                               ; preds = %2
  %23 = load %struct.super_block*, %struct.super_block** %4, align 8
  %24 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %6, align 8
  %25 = call i64 @ext4_inode_bitmap(%struct.super_block* %23, %struct.ext4_group_desc* %24)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %28 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le32_to_cpu(i32 %31)
  %33 = icmp sle i64 %26, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %22
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %37 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = call i64 @ext4_blocks_count(%struct.TYPE_2__* %38)
  %40 = icmp sge i64 %35, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %34, %22
  %42 = load %struct.super_block*, %struct.super_block** %4, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 (%struct.super_block*, i8*, ...) @ext4_error(%struct.super_block* %42, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %44)
  %46 = load %struct.super_block*, %struct.super_block** %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i32, i32* @EXT4_GROUP_INFO_IBITMAP_CORRUPT, align 4
  %49 = call i32 @ext4_mark_group_bitmap_corrupted(%struct.super_block* %46, i64 %47, i32 %48)
  %50 = load i32, i32* @EFSCORRUPTED, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.buffer_head* @ERR_PTR(i32 %51)
  store %struct.buffer_head* %52, %struct.buffer_head** %3, align 8
  br label %207

53:                                               ; preds = %34
  %54 = load %struct.super_block*, %struct.super_block** %4, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %54, i64 %55)
  store %struct.buffer_head* %56, %struct.buffer_head** %8, align 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %58 = icmp ne %struct.buffer_head* %57, null
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %53
  %64 = load %struct.super_block*, %struct.super_block** %4, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @ext4_warning(%struct.super_block* %64, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i64 %65, i64 %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  %70 = call %struct.buffer_head* @ERR_PTR(i32 %69)
  store %struct.buffer_head* %70, %struct.buffer_head** %3, align 8
  br label %207

71:                                               ; preds = %53
  %72 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %73 = call i64 @bitmap_uptodate(%struct.buffer_head* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %191

76:                                               ; preds = %71
  %77 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %78 = call i32 @lock_buffer(%struct.buffer_head* %77)
  %79 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %80 = call i64 @bitmap_uptodate(%struct.buffer_head* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %84 = call i32 @unlock_buffer(%struct.buffer_head* %83)
  br label %191

85:                                               ; preds = %76
  %86 = load %struct.super_block*, %struct.super_block** %4, align 8
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @ext4_lock_group(%struct.super_block* %86, i64 %87)
  %89 = load %struct.super_block*, %struct.super_block** %4, align 8
  %90 = call i64 @ext4_has_group_desc_csum(%struct.super_block* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %144

92:                                               ; preds = %85
  %93 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %6, align 8
  %94 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @EXT4_BG_INODE_UNINIT, align 4
  %97 = call i32 @cpu_to_le16(i32 %96)
  %98 = and i32 %95, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %144

100:                                              ; preds = %92
  %101 = load i64, i64* %5, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load %struct.super_block*, %struct.super_block** %4, align 8
  %105 = load i64, i64* %5, align 8
  %106 = call i32 @ext4_unlock_group(%struct.super_block* %104, i64 %105)
  %107 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %108 = call i32 @unlock_buffer(%struct.buffer_head* %107)
  %109 = load %struct.super_block*, %struct.super_block** %4, align 8
  %110 = call i32 (%struct.super_block*, i8*, ...) @ext4_error(%struct.super_block* %109, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i32, i32* @EFSCORRUPTED, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %10, align 4
  br label %202

113:                                              ; preds = %100
  %114 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %115 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.super_block*, %struct.super_block** %4, align 8
  %118 = call i32 @EXT4_INODES_PER_GROUP(%struct.super_block* %117)
  %119 = add nsw i32 %118, 7
  %120 = sdiv i32 %119, 8
  %121 = call i32 @memset(i32 %116, i32 0, i32 %120)
  %122 = load %struct.super_block*, %struct.super_block** %4, align 8
  %123 = call i32 @EXT4_INODES_PER_GROUP(%struct.super_block* %122)
  %124 = load %struct.super_block*, %struct.super_block** %4, align 8
  %125 = getelementptr inbounds %struct.super_block, %struct.super_block* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %126, 8
  %128 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %129 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ext4_mark_bitmap_end(i32 %123, i32 %127, i32 %130)
  %132 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %133 = call i32 @set_bitmap_uptodate(%struct.buffer_head* %132)
  %134 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %135 = call i32 @set_buffer_uptodate(%struct.buffer_head* %134)
  %136 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %137 = call i32 @set_buffer_verified(%struct.buffer_head* %136)
  %138 = load %struct.super_block*, %struct.super_block** %4, align 8
  %139 = load i64, i64* %5, align 8
  %140 = call i32 @ext4_unlock_group(%struct.super_block* %138, i64 %139)
  %141 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %142 = call i32 @unlock_buffer(%struct.buffer_head* %141)
  %143 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %143, %struct.buffer_head** %3, align 8
  br label %207

144:                                              ; preds = %92, %85
  %145 = load %struct.super_block*, %struct.super_block** %4, align 8
  %146 = load i64, i64* %5, align 8
  %147 = call i32 @ext4_unlock_group(%struct.super_block* %145, i64 %146)
  %148 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %149 = call i64 @buffer_uptodate(%struct.buffer_head* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %144
  %152 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %153 = call i32 @set_bitmap_uptodate(%struct.buffer_head* %152)
  %154 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %155 = call i32 @unlock_buffer(%struct.buffer_head* %154)
  br label %191

156:                                              ; preds = %144
  %157 = load %struct.super_block*, %struct.super_block** %4, align 8
  %158 = load i64, i64* %5, align 8
  %159 = call i32 @trace_ext4_load_inode_bitmap(%struct.super_block* %157, i64 %158)
  %160 = load i32, i32* @ext4_end_bitmap_read, align 4
  %161 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %162 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 4
  %163 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %164 = call i32 @get_bh(%struct.buffer_head* %163)
  %165 = load i32, i32* @REQ_OP_READ, align 4
  %166 = load i32, i32* @REQ_META, align 4
  %167 = load i32, i32* @REQ_PRIO, align 4
  %168 = or i32 %166, %167
  %169 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %170 = call i32 @submit_bh(i32 %165, i32 %168, %struct.buffer_head* %169)
  %171 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %172 = call i32 @wait_on_buffer(%struct.buffer_head* %171)
  %173 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %174 = call i64 @buffer_uptodate(%struct.buffer_head* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %190, label %176

176:                                              ; preds = %156
  %177 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %178 = call i32 @put_bh(%struct.buffer_head* %177)
  %179 = load %struct.super_block*, %struct.super_block** %4, align 8
  %180 = load i64, i64* %5, align 8
  %181 = load i64, i64* %9, align 8
  %182 = call i32 (%struct.super_block*, i8*, ...) @ext4_error(%struct.super_block* %179, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i64 %180, i64 %181)
  %183 = load %struct.super_block*, %struct.super_block** %4, align 8
  %184 = load i64, i64* %5, align 8
  %185 = load i32, i32* @EXT4_GROUP_INFO_IBITMAP_CORRUPT, align 4
  %186 = call i32 @ext4_mark_group_bitmap_corrupted(%struct.super_block* %183, i64 %184, i32 %185)
  %187 = load i32, i32* @EIO, align 4
  %188 = sub nsw i32 0, %187
  %189 = call %struct.buffer_head* @ERR_PTR(i32 %188)
  store %struct.buffer_head* %189, %struct.buffer_head** %3, align 8
  br label %207

190:                                              ; preds = %156
  br label %191

191:                                              ; preds = %190, %151, %82, %75
  %192 = load %struct.super_block*, %struct.super_block** %4, align 8
  %193 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %6, align 8
  %194 = load i64, i64* %5, align 8
  %195 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %196 = call i32 @ext4_validate_inode_bitmap(%struct.super_block* %192, %struct.ext4_group_desc* %193, i64 %194, %struct.buffer_head* %195)
  store i32 %196, i32* %10, align 4
  %197 = load i32, i32* %10, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %191
  br label %202

200:                                              ; preds = %191
  %201 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %201, %struct.buffer_head** %3, align 8
  br label %207

202:                                              ; preds = %199, %103
  %203 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %204 = call i32 @put_bh(%struct.buffer_head* %203)
  %205 = load i32, i32* %10, align 4
  %206 = call %struct.buffer_head* @ERR_PTR(i32 %205)
  store %struct.buffer_head* %206, %struct.buffer_head** %3, align 8
  br label %207

207:                                              ; preds = %202, %200, %176, %113, %63, %41, %18
  %208 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  ret %struct.buffer_head* %208
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i64, i32*) #1

declare dso_local %struct.buffer_head* @ERR_PTR(i32) #1

declare dso_local i64 @ext4_inode_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ext4_blocks_count(%struct.TYPE_2__*) #1

declare dso_local i32 @ext4_error(%struct.super_block*, i8*, ...) #1

declare dso_local i32 @ext4_mark_group_bitmap_corrupted(%struct.super_block*, i64, i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_warning(%struct.super_block*, i8*, i64, i64) #1

declare dso_local i64 @bitmap_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @ext4_lock_group(%struct.super_block*, i64) #1

declare dso_local i64 @ext4_has_group_desc_csum(%struct.super_block*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_unlock_group(%struct.super_block*, i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @EXT4_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @ext4_mark_bitmap_end(i32, i32, i32) #1

declare dso_local i32 @set_bitmap_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_verified(%struct.buffer_head*) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @trace_ext4_load_inode_bitmap(%struct.super_block*, i64) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, i32, %struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i32 @ext4_validate_inode_bitmap(%struct.super_block*, %struct.ext4_group_desc*, i64, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

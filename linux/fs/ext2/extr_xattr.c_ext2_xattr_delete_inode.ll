; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_xattr.c_ext2_xattr_delete_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_xattr.c_ext2_xattr_delete_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i32, i32 }
%struct.ext2_sb_info = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"ext2_xattr_delete_inode\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"inode %ld: xattr block %d is out of data blocks range\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"inode %ld: block %d read error\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"b_count=%d\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"inode %ld: bad block %d\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"refcount now=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2_xattr_delete_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.ext2_sb_info*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %3, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.ext2_sb_info* @EXT2_SB(i32 %8)
  store %struct.ext2_sb_info* %9, %struct.ext2_sb_info** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = call %struct.TYPE_5__* @EXT2_I(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = call i32 @down_write(i32* %12)
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = call %struct.TYPE_5__* @EXT2_I(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %148

20:                                               ; preds = %1
  %21 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %4, align 8
  %22 = load %struct.inode*, %struct.inode** %2, align 8
  %23 = call %struct.TYPE_5__* @EXT2_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ext2_data_block_valid(%struct.ext2_sb_info* %21, i64 %25, i32 1)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %20
  %29 = load %struct.inode*, %struct.inode** %2, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.inode*, %struct.inode** %2, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.inode*, %struct.inode** %2, align 8
  %36 = call %struct.TYPE_5__* @EXT2_I(%struct.inode* %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @ext2_error(i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %34, i64 %38)
  br label %148

40:                                               ; preds = %20
  %41 = load %struct.inode*, %struct.inode** %2, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.inode*, %struct.inode** %2, align 8
  %45 = call %struct.TYPE_5__* @EXT2_I(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call %struct.buffer_head* @sb_bread(i32 %43, i64 %47)
  store %struct.buffer_head* %48, %struct.buffer_head** %3, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %50 = icmp ne %struct.buffer_head* %49, null
  br i1 %50, label %63, label %51

51:                                               ; preds = %40
  %52 = load %struct.inode*, %struct.inode** %2, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.inode*, %struct.inode** %2, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.inode*, %struct.inode** %2, align 8
  %59 = call %struct.TYPE_5__* @EXT2_I(%struct.inode* %58)
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @ext2_error(i32 %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %57, i64 %61)
  br label %148

63:                                               ; preds = %40
  %64 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %66 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %65, i32 0, i32 1
  %67 = call i32 @atomic_read(i32* %66)
  %68 = call i32 @ea_bdebug(%struct.buffer_head* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %70 = call %struct.TYPE_4__* @HDR(%struct.buffer_head* %69)
  %71 = call i32 @ext2_xattr_header_valid(%struct.TYPE_4__* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %63
  %74 = load %struct.inode*, %struct.inode** %2, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.inode*, %struct.inode** %2, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.inode*, %struct.inode** %2, align 8
  %81 = call %struct.TYPE_5__* @EXT2_I(%struct.inode* %80)
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @ext2_error(i32 %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %79, i64 %83)
  br label %148

85:                                               ; preds = %63
  %86 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %87 = call i32 @lock_buffer(%struct.buffer_head* %86)
  %88 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %89 = call %struct.TYPE_4__* @HDR(%struct.buffer_head* %88)
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @cpu_to_le32(i32 1)
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %119

94:                                               ; preds = %85
  %95 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %96 = call %struct.TYPE_4__* @HDR(%struct.buffer_head* %95)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @le32_to_cpu(i64 %98)
  store i32 %99, i32* %5, align 4
  %100 = load %struct.inode*, %struct.inode** %2, align 8
  %101 = call i32 @EA_BLOCK_CACHE(%struct.inode* %100)
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %104 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @mb_cache_entry_delete(i32 %101, i32 %102, i32 %105)
  %107 = load %struct.inode*, %struct.inode** %2, align 8
  %108 = load %struct.inode*, %struct.inode** %2, align 8
  %109 = call %struct.TYPE_5__* @EXT2_I(%struct.inode* %108)
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @ext2_free_blocks(%struct.inode* %107, i64 %111, i32 1)
  %113 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %114 = call i32 @get_bh(%struct.buffer_head* %113)
  %115 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %116 = call i32 @bforget(%struct.buffer_head* %115)
  %117 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %118 = call i32 @unlock_buffer(%struct.buffer_head* %117)
  br label %144

119:                                              ; preds = %85
  %120 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %121 = call %struct.TYPE_4__* @HDR(%struct.buffer_head* %120)
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = call i32 @le32_add_cpu(i64* %122, i32 -1)
  %124 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %125 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %126 = call %struct.TYPE_4__* @HDR(%struct.buffer_head* %125)
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @le32_to_cpu(i64 %128)
  %130 = call i32 @ea_bdebug(%struct.buffer_head* %124, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %129)
  %131 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %132 = call i32 @unlock_buffer(%struct.buffer_head* %131)
  %133 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %134 = call i32 @mark_buffer_dirty(%struct.buffer_head* %133)
  %135 = load %struct.inode*, %struct.inode** %2, align 8
  %136 = call i64 @IS_SYNC(%struct.inode* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %119
  %139 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %140 = call i32 @sync_dirty_buffer(%struct.buffer_head* %139)
  br label %141

141:                                              ; preds = %138, %119
  %142 = load %struct.inode*, %struct.inode** %2, align 8
  %143 = call i32 @dquot_free_block_nodirty(%struct.inode* %142, i32 1)
  br label %144

144:                                              ; preds = %141, %94
  %145 = load %struct.inode*, %struct.inode** %2, align 8
  %146 = call %struct.TYPE_5__* @EXT2_I(%struct.inode* %145)
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  store i64 0, i64* %147, align 8
  br label %148

148:                                              ; preds = %144, %73, %51, %28, %19
  %149 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %150 = call i32 @brelse(%struct.buffer_head* %149)
  %151 = load %struct.inode*, %struct.inode** %2, align 8
  %152 = call %struct.TYPE_5__* @EXT2_I(%struct.inode* %151)
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = call i32 @up_write(i32* %153)
  ret void
}

declare dso_local %struct.ext2_sb_info* @EXT2_SB(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_5__* @EXT2_I(%struct.inode*) #1

declare dso_local i32 @ext2_data_block_valid(%struct.ext2_sb_info*, i64, i32) #1

declare dso_local i32 @ext2_error(i32, i8*, i8*, i32, i64) #1

declare dso_local %struct.buffer_head* @sb_bread(i32, i64) #1

declare dso_local i32 @ea_bdebug(%struct.buffer_head*, i8*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ext2_xattr_header_valid(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @HDR(%struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @mb_cache_entry_delete(i32, i32, i32) #1

declare dso_local i32 @EA_BLOCK_CACHE(%struct.inode*) #1

declare dso_local i32 @ext2_free_blocks(%struct.inode*, i64, i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @bforget(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @le32_add_cpu(i64*, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i32 @dquot_free_block_nodirty(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

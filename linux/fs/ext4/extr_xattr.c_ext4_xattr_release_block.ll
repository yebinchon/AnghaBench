; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_release_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_release_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_xattr_inode_array = type { i32 }
%struct.mb_cache = type { i32 }
%struct.mb_cache_entry = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"refcount now=0; freeing\00", align 1
@EXT4_FREE_BLOCKS_METADATA = common dso_local global i32 0, align 4
@EXT4_FREE_BLOCKS_FORGET = common dso_local global i32 0, align 4
@EXT4_XATTR_REFCOUNT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"refcount now=%d; releasing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.inode*, %struct.buffer_head*, %struct.ext4_xattr_inode_array**, i32)* @ext4_xattr_release_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_xattr_release_block(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, %struct.ext4_xattr_inode_array** %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.ext4_xattr_inode_array**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mb_cache*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mb_cache_entry*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store %struct.ext4_xattr_inode_array** %3, %struct.ext4_xattr_inode_array*** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = call %struct.mb_cache* @EA_BLOCK_CACHE(%struct.inode* %16)
  store %struct.mb_cache* %17, %struct.mb_cache** %11, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %19 = call i32 @BUFFER_TRACE(%struct.buffer_head* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %22 = call i32 @ext4_journal_get_write_access(i32* %20, %struct.buffer_head* %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %158

26:                                               ; preds = %5
  %27 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %28 = call i32 @lock_buffer(%struct.buffer_head* %27)
  %29 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %30 = call %struct.TYPE_2__* @BHDR(%struct.buffer_head* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %35 = call %struct.TYPE_2__* @BHDR(%struct.buffer_head* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %80

41:                                               ; preds = %26
  %42 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %43 = call i32 (%struct.buffer_head*, i8*, ...) @ea_bdebug(%struct.buffer_head* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.mb_cache*, %struct.mb_cache** %11, align 8
  %45 = icmp ne %struct.mb_cache* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.mb_cache*, %struct.mb_cache** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %50 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mb_cache_entry_delete(%struct.mb_cache* %47, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %46, %41
  %54 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %55 = call i32 @get_bh(%struct.buffer_head* %54)
  %56 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %57 = call i32 @unlock_buffer(%struct.buffer_head* %56)
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ext4_has_feature_ea_inode(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %53
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  %66 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %68 = call i32 @BFIRST(%struct.buffer_head* %67)
  %69 = load %struct.ext4_xattr_inode_array**, %struct.ext4_xattr_inode_array*** %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @ext4_xattr_inode_dec_ref_all(i32* %64, %struct.inode* %65, %struct.buffer_head* %66, i32 %68, i32 1, %struct.ext4_xattr_inode_array** %69, i32 %70, i32 1)
  br label %72

72:                                               ; preds = %63, %53
  %73 = load i32*, i32** %6, align 8
  %74 = load %struct.inode*, %struct.inode** %7, align 8
  %75 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %76 = load i32, i32* @EXT4_FREE_BLOCKS_METADATA, align 4
  %77 = load i32, i32* @EXT4_FREE_BLOCKS_FORGET, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @ext4_free_blocks(i32* %73, %struct.inode* %74, %struct.buffer_head* %75, i32 0, i32 1, i32 %78)
  br label %157

80:                                               ; preds = %26
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @cpu_to_le32(i32 %83)
  %85 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %86 = call %struct.TYPE_2__* @BHDR(%struct.buffer_head* %85)
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @EXT4_XATTR_REFCOUNT_MAX, align 4
  %90 = sub nsw i32 %89, 1
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %112

92:                                               ; preds = %80
  %93 = load %struct.mb_cache*, %struct.mb_cache** %11, align 8
  %94 = icmp ne %struct.mb_cache* %93, null
  br i1 %94, label %95, label %111

95:                                               ; preds = %92
  %96 = load %struct.mb_cache*, %struct.mb_cache** %11, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %99 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call %struct.mb_cache_entry* @mb_cache_entry_get(%struct.mb_cache* %96, i32 %97, i32 %100)
  store %struct.mb_cache_entry* %101, %struct.mb_cache_entry** %15, align 8
  %102 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %15, align 8
  %103 = icmp ne %struct.mb_cache_entry* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %95
  %105 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %15, align 8
  %106 = getelementptr inbounds %struct.mb_cache_entry, %struct.mb_cache_entry* %105, i32 0, i32 0
  store i32 1, i32* %106, align 4
  %107 = load %struct.mb_cache*, %struct.mb_cache** %11, align 8
  %108 = load %struct.mb_cache_entry*, %struct.mb_cache_entry** %15, align 8
  %109 = call i32 @mb_cache_entry_put(%struct.mb_cache* %107, %struct.mb_cache_entry* %108)
  br label %110

110:                                              ; preds = %104, %95
  br label %111

111:                                              ; preds = %110, %92
  br label %112

112:                                              ; preds = %111, %80
  %113 = load %struct.inode*, %struct.inode** %7, align 8
  %114 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %115 = call i32 @ext4_xattr_block_csum_set(%struct.inode* %113, %struct.buffer_head* %114)
  %116 = load i32*, i32** %6, align 8
  %117 = call i64 @ext4_handle_valid(i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load i32*, i32** %6, align 8
  %121 = load %struct.inode*, %struct.inode** %7, align 8
  %122 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %123 = call i32 @ext4_handle_dirty_metadata(i32* %120, %struct.inode* %121, %struct.buffer_head* %122)
  store i32 %123, i32* %14, align 4
  br label %124

124:                                              ; preds = %119, %112
  %125 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %126 = call i32 @unlock_buffer(%struct.buffer_head* %125)
  %127 = load i32*, i32** %6, align 8
  %128 = call i64 @ext4_handle_valid(i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %124
  %131 = load i32*, i32** %6, align 8
  %132 = load %struct.inode*, %struct.inode** %7, align 8
  %133 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %134 = call i32 @ext4_handle_dirty_metadata(i32* %131, %struct.inode* %132, %struct.buffer_head* %133)
  store i32 %134, i32* %14, align 4
  br label %135

135:                                              ; preds = %130, %124
  %136 = load %struct.inode*, %struct.inode** %7, align 8
  %137 = call i64 @IS_SYNC(%struct.inode* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i32*, i32** %6, align 8
  %141 = call i32 @ext4_handle_sync(i32* %140)
  br label %142

142:                                              ; preds = %139, %135
  %143 = load %struct.inode*, %struct.inode** %7, align 8
  %144 = load %struct.inode*, %struct.inode** %7, align 8
  %145 = getelementptr inbounds %struct.inode, %struct.inode* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @EXT4_SB(i32 %146)
  %148 = call i32 @EXT4_C2B(i32 %147, i32 1)
  %149 = call i32 @dquot_free_block(%struct.inode* %143, i32 %148)
  %150 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %151 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %152 = call %struct.TYPE_2__* @BHDR(%struct.buffer_head* %151)
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @le32_to_cpu(i32 %154)
  %156 = call i32 (%struct.buffer_head*, i8*, ...) @ea_bdebug(%struct.buffer_head* %150, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %142, %72
  br label %158

158:                                              ; preds = %157, %25
  %159 = load %struct.inode*, %struct.inode** %7, align 8
  %160 = getelementptr inbounds %struct.inode, %struct.inode* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %14, align 4
  %163 = call i32 @ext4_std_error(i32 %161, i32 %162)
  ret void
}

declare dso_local %struct.mb_cache* @EA_BLOCK_CACHE(%struct.inode*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @BHDR(%struct.buffer_head*) #1

declare dso_local i32 @ea_bdebug(%struct.buffer_head*, i8*, ...) #1

declare dso_local i32 @mb_cache_entry_delete(%struct.mb_cache*, i32, i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @ext4_has_feature_ea_inode(i32) #1

declare dso_local i32 @ext4_xattr_inode_dec_ref_all(i32*, %struct.inode*, %struct.buffer_head*, i32, i32, %struct.ext4_xattr_inode_array**, i32, i32) #1

declare dso_local i32 @BFIRST(%struct.buffer_head*) #1

declare dso_local i32 @ext4_free_blocks(i32*, %struct.inode*, %struct.buffer_head*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local %struct.mb_cache_entry* @mb_cache_entry_get(%struct.mb_cache*, i32, i32) #1

declare dso_local i32 @mb_cache_entry_put(%struct.mb_cache*, %struct.mb_cache_entry*) #1

declare dso_local i32 @ext4_xattr_block_csum_set(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i64 @ext4_handle_valid(i32*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(i32*) #1

declare dso_local i32 @dquot_free_block(%struct.inode*, i32) #1

declare dso_local i32 @EXT4_C2B(i32, i32) #1

declare dso_local i32 @EXT4_SB(i32) #1

declare dso_local i32 @ext4_std_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

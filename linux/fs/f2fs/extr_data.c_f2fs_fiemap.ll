; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_fiemap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_fiemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.fiemap_extent_info = type { i32 }
%struct.buffer_head = type { i32, i64 }
%struct.TYPE_2__ = type { i32 }

@FIEMAP_FLAG_CACHE = common dso_local global i32 0, align 4
@FIEMAP_FLAG_SYNC = common dso_local global i32 0, align 4
@FIEMAP_FLAG_XATTR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@F2FS_GET_BLOCK_FIEMAP = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_LAST = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_DATA_ENCRYPTED = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_UNWRITTEN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_fiemap(%struct.inode* %0, %struct.fiemap_extent_info* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fiemap_extent_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.buffer_head, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.fiemap_extent_info* %1, %struct.fiemap_extent_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %19 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %20 = getelementptr inbounds %struct.fiemap_extent_info, %struct.fiemap_extent_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FIEMAP_FLAG_CACHE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = call i32 @f2fs_precache_extents(%struct.inode* %26)
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %18, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %18, align 4
  store i32 %31, i32* %5, align 4
  br label %193

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %4
  %34 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %35 = load i32, i32* @FIEMAP_FLAG_SYNC, align 4
  %36 = load i32, i32* @FIEMAP_FLAG_XATTR, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @fiemap_check_flags(%struct.fiemap_extent_info* %34, i32 %37)
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %18, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %18, align 4
  store i32 %42, i32* %5, align 4
  br label %193

43:                                               ; preds = %33
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = call i32 @inode_lock(%struct.inode* %44)
  %46 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %47 = getelementptr inbounds %struct.fiemap_extent_info, %struct.fiemap_extent_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @FIEMAP_FLAG_XATTR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %55 = call i32 @f2fs_xattr_fiemap(%struct.inode* %53, %struct.fiemap_extent_info* %54)
  store i32 %55, i32* %18, align 4
  br label %185

56:                                               ; preds = %43
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = call i64 @f2fs_has_inline_data(%struct.inode* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = call i64 @f2fs_has_inline_dentry(%struct.inode* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %60, %56
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @f2fs_inline_data_fiemap(%struct.inode* %65, %struct.fiemap_extent_info* %66, i64 %67, i64 %68)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* @EAGAIN, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %185

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %60
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i64 @logical_to_blk(%struct.inode* %77, i64 %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = call i64 @blk_to_logical(%struct.inode* %82, i32 1)
  store i64 %83, i64* %9, align 8
  br label %84

84:                                               ; preds = %81, %76
  %85 = load %struct.inode*, %struct.inode** %6, align 8
  %86 = load i64, i64* %8, align 8
  %87 = call i64 @logical_to_blk(%struct.inode* %85, i64 %86)
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %11, align 4
  %89 = load %struct.inode*, %struct.inode** %6, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %9, align 8
  %92 = add nsw i64 %90, %91
  %93 = sub nsw i64 %92, 1
  %94 = call i64 @logical_to_blk(%struct.inode* %89, i64 %93)
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %183, %84
  %97 = call i32 @memset(%struct.buffer_head* %10, i32 0, i32 16)
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i32 0, i32 1
  store i64 %98, i64* %99, align 8
  %100 = load %struct.inode*, %struct.inode** %6, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @F2FS_GET_BLOCK_FIEMAP, align 4
  %103 = call i32 @get_data_block(%struct.inode* %100, i32 %101, %struct.buffer_head* %10, i32 0, i32 %102, i32* %13)
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %18, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  br label %185

107:                                              ; preds = %96
  %108 = call i32 @buffer_mapped(%struct.buffer_head* %10)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %127, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* %11, align 4
  %112 = load %struct.inode*, %struct.inode** %6, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i64 @blk_to_logical(%struct.inode* %112, i32 %113)
  %115 = load %struct.inode*, %struct.inode** %6, align 8
  %116 = load %struct.inode*, %struct.inode** %6, align 8
  %117 = call %struct.TYPE_2__* @F2FS_I_SB(%struct.inode* %116)
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @blk_to_logical(%struct.inode* %115, i32 %119)
  %121 = icmp slt i64 %114, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %110
  br label %175

123:                                              ; preds = %110
  %124 = load i32, i32* @FIEMAP_EXTENT_LAST, align 4
  %125 = load i32, i32* %17, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %17, align 4
  br label %127

127:                                              ; preds = %123, %107
  %128 = load i64, i64* %16, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %127
  %131 = load %struct.inode*, %struct.inode** %6, align 8
  %132 = call i64 @IS_ENCRYPTED(%struct.inode* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load i32, i32* @FIEMAP_EXTENT_DATA_ENCRYPTED, align 4
  %136 = load i32, i32* %17, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %17, align 4
  br label %138

138:                                              ; preds = %134, %130
  %139 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %140 = load i64, i64* %14, align 8
  %141 = load i64, i64* %15, align 8
  %142 = load i64, i64* %16, align 8
  %143 = load i32, i32* %17, align 4
  %144 = call i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info* %139, i64 %140, i64 %141, i64 %142, i32 %143)
  store i32 %144, i32* %18, align 4
  br label %145

145:                                              ; preds = %138, %127
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %152, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* %18, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149, %145
  br label %185

153:                                              ; preds = %149
  %154 = load %struct.inode*, %struct.inode** %6, align 8
  %155 = load i32, i32* %11, align 4
  %156 = call i64 @blk_to_logical(%struct.inode* %154, i32 %155)
  store i64 %156, i64* %14, align 8
  %157 = load %struct.inode*, %struct.inode** %6, align 8
  %158 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i64 @blk_to_logical(%struct.inode* %157, i32 %159)
  store i64 %160, i64* %15, align 8
  %161 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %163 = call i64 @buffer_unwritten(%struct.buffer_head* %10)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %153
  %166 = load i32, i32* @FIEMAP_EXTENT_UNWRITTEN, align 4
  store i32 %166, i32* %17, align 4
  br label %167

167:                                              ; preds = %165, %153
  %168 = load %struct.inode*, %struct.inode** %6, align 8
  %169 = load i64, i64* %16, align 8
  %170 = call i64 @logical_to_blk(%struct.inode* %168, i64 %169)
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %172, %170
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %11, align 4
  br label %175

175:                                              ; preds = %167, %122
  %176 = call i32 (...) @cond_resched()
  %177 = load i32, i32* @current, align 4
  %178 = call i64 @fatal_signal_pending(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i32, i32* @EINTR, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %18, align 4
  br label %184

183:                                              ; preds = %175
  br label %96

184:                                              ; preds = %180
  br label %185

185:                                              ; preds = %184, %152, %106, %74, %52
  %186 = load i32, i32* %18, align 4
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  store i32 0, i32* %18, align 4
  br label %189

189:                                              ; preds = %188, %185
  %190 = load %struct.inode*, %struct.inode** %6, align 8
  %191 = call i32 @inode_unlock(%struct.inode* %190)
  %192 = load i32, i32* %18, align 4
  store i32 %192, i32* %5, align 4
  br label %193

193:                                              ; preds = %189, %41, %30
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

declare dso_local i32 @f2fs_precache_extents(%struct.inode*) #1

declare dso_local i32 @fiemap_check_flags(%struct.fiemap_extent_info*, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @f2fs_xattr_fiemap(%struct.inode*, %struct.fiemap_extent_info*) #1

declare dso_local i64 @f2fs_has_inline_data(%struct.inode*) #1

declare dso_local i64 @f2fs_has_inline_dentry(%struct.inode*) #1

declare dso_local i32 @f2fs_inline_data_fiemap(%struct.inode*, %struct.fiemap_extent_info*, i64, i64) #1

declare dso_local i64 @logical_to_blk(%struct.inode*, i64) #1

declare dso_local i64 @blk_to_logical(%struct.inode*, i32) #1

declare dso_local i32 @memset(%struct.buffer_head*, i32, i32) #1

declare dso_local i32 @get_data_block(%struct.inode*, i32, %struct.buffer_head*, i32, i32, i32*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info*, i64, i64, i64, i32) #1

declare dso_local i64 @buffer_unwritten(%struct.buffer_head*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

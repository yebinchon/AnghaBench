; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_alloc_file_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_alloc_file_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32, i32, i32, i32, i32, i32 }
%struct.ext4_map_blocks = type { i64, i64 }

@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@EXT_UNWRITTEN_MAX_LEN = common dso_local global i64 0, align 8
@EXT4_GET_BLOCKS_NO_NORMALIZE = common dso_local global i32 0, align 4
@EXT4_HT_MAP_BLOCKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"inode #%lu: block %u: len %u: ext4_ext_map_blocks returned %d\00", align 1
@EXT4_INODE_EOFBLOCKS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i64, i64, i32, i32)* @ext4_alloc_file_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_alloc_file_blocks(%struct.file* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ext4_map_blocks, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load %struct.file*, %struct.file** %6, align 8
  %21 = call %struct.inode* @file_inode(%struct.file* %20)
  store %struct.inode* %21, %struct.inode** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load %struct.inode*, %struct.inode** %11, align 8
  %23 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %24 = call i32 @ext4_test_inode_flag(%struct.inode* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %17, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %17, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @EXT_UNWRITTEN_MAX_LEN, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %5
  %37 = load i32, i32* @EXT4_GET_BLOCKS_NO_NORMALIZE, align 4
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %36, %5
  %41 = load %struct.inode*, %struct.inode** %11, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @ext4_chunk_trans_blocks(%struct.inode* %41, i64 %42)
  store i32 %43, i32* %18, align 4
  %44 = load %struct.inode*, %struct.inode** %11, align 8
  %45 = call i32 @ext_depth(%struct.inode* %44)
  store i32 %45, i32* %16, align 4
  br label %46

46:                                               ; preds = %177, %40
  br label %47

47:                                               ; preds = %165, %46
  %48 = load i32, i32* %13, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i64, i64* %8, align 8
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i1 [ false, %47 ], [ %52, %50 ]
  br i1 %54, label %55, label %166

55:                                               ; preds = %53
  %56 = load i32, i32* %16, align 4
  %57 = load %struct.inode*, %struct.inode** %11, align 8
  %58 = call i32 @ext_depth(%struct.inode* %57)
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.inode*, %struct.inode** %11, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @ext4_chunk_trans_blocks(%struct.inode* %61, i64 %62)
  store i32 %63, i32* %18, align 4
  %64 = load %struct.inode*, %struct.inode** %11, align 8
  %65 = call i32 @ext_depth(%struct.inode* %64)
  store i32 %65, i32* %16, align 4
  br label %66

66:                                               ; preds = %60, %55
  %67 = load %struct.inode*, %struct.inode** %11, align 8
  %68 = load i32, i32* @EXT4_HT_MAP_BLOCKS, align 4
  %69 = load i32, i32* %18, align 4
  %70 = call i32* @ext4_journal_start(%struct.inode* %67, i32 %68, i32 %69)
  store i32* %70, i32** %12, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = call i64 @IS_ERR(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @PTR_ERR(i32* %75)
  store i32 %76, i32* %13, align 4
  br label %166

77:                                               ; preds = %66
  %78 = load i32*, i32** %12, align 8
  %79 = load %struct.inode*, %struct.inode** %11, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @ext4_map_blocks(i32* %78, %struct.inode* %79, %struct.ext4_map_blocks* %17, i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp sle i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %77
  %85 = load %struct.inode*, %struct.inode** %11, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %17, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %17, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @ext4_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %87, i64 %89, i64 %91, i32 %92)
  %94 = load i32*, i32** %12, align 8
  %95 = load %struct.inode*, %struct.inode** %11, align 8
  %96 = call i32 @ext4_mark_inode_dirty(i32* %94, %struct.inode* %95)
  %97 = load i32*, i32** %12, align 8
  %98 = call i32 @ext4_journal_stop(i32* %97)
  store i32 %98, i32* %14, align 4
  br label %166

99:                                               ; preds = %77
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %17, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, %101
  store i64 %104, i64* %102, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = sub nsw i64 %105, %107
  store i64 %108, i64* %8, align 8
  %109 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %17, i32 0, i32 1
  store i64 %108, i64* %109, align 8
  %110 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %17, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = load %struct.inode*, %struct.inode** %11, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %112, %115
  store i32 %116, i32* %19, align 4
  %117 = load %struct.inode*, %struct.inode** %11, align 8
  %118 = call i32 @current_time(%struct.inode* %117)
  %119 = load %struct.inode*, %struct.inode** %11, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %142

123:                                              ; preds = %99
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %19, align 4
  br label %129

129:                                              ; preds = %127, %123
  %130 = load %struct.inode*, %struct.inode** %11, align 8
  %131 = load i32, i32* %19, align 4
  %132 = call i32 @ext4_update_inode_size(%struct.inode* %130, i32 %131)
  %133 = and i32 %132, 1
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = load %struct.inode*, %struct.inode** %11, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.inode*, %struct.inode** %11, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %135, %129
  br label %153

142:                                              ; preds = %99
  %143 = load i32, i32* %19, align 4
  %144 = load %struct.inode*, %struct.inode** %11, align 8
  %145 = getelementptr inbounds %struct.inode, %struct.inode* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp sgt i32 %143, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load %struct.inode*, %struct.inode** %11, align 8
  %150 = load i32, i32* @EXT4_INODE_EOFBLOCKS, align 4
  %151 = call i32 @ext4_set_inode_flag(%struct.inode* %149, i32 %150)
  br label %152

152:                                              ; preds = %148, %142
  br label %153

153:                                              ; preds = %152, %141
  %154 = load i32*, i32** %12, align 8
  %155 = load %struct.inode*, %struct.inode** %11, align 8
  %156 = call i32 @ext4_mark_inode_dirty(i32* %154, %struct.inode* %155)
  %157 = load i32*, i32** %12, align 8
  %158 = load %struct.inode*, %struct.inode** %11, align 8
  %159 = call i32 @ext4_update_inode_fsync_trans(i32* %157, %struct.inode* %158, i32 1)
  %160 = load i32*, i32** %12, align 8
  %161 = call i32 @ext4_journal_stop(i32* %160)
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %14, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %153
  br label %166

165:                                              ; preds = %153
  br label %47

166:                                              ; preds = %164, %84, %74, %53
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* @ENOSPC, align 4
  %169 = sub nsw i32 0, %168
  %170 = icmp eq i32 %167, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %166
  %172 = load %struct.inode*, %struct.inode** %11, align 8
  %173 = getelementptr inbounds %struct.inode, %struct.inode* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = call i64 @ext4_should_retry_alloc(i32 %174, i32* %15)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  store i32 0, i32* %13, align 4
  br label %46

178:                                              ; preds = %171, %166
  %179 = load i32, i32* %13, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = load i32, i32* %14, align 4
  br label %185

183:                                              ; preds = %178
  %184 = load i32, i32* %13, align 4
  br label %185

185:                                              ; preds = %183, %181
  %186 = phi i32 [ %182, %181 ], [ %184, %183 ]
  ret i32 %186
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4_chunk_trans_blocks(%struct.inode*, i64) #1

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext4_map_blocks(i32*, %struct.inode*, %struct.ext4_map_blocks*, i32) #1

declare dso_local i32 @ext4_debug(i8*, i32, i64, i64, i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @ext4_update_inode_size(%struct.inode*, i32) #1

declare dso_local i32 @ext4_set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i64 @ext4_should_retry_alloc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

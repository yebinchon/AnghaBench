; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_mpage_map_and_submit_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_mpage_map_and_submit_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage_da_data = type { i64, %struct.TYPE_7__, %struct.ext4_map_blocks, %struct.inode* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.ext4_map_blocks = type { i64, i64 }
%struct.inode = type { i64, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32 }

@EXT4_MF_FS_ABORTED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@KERN_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"Delayed block allocation failed for inode %lu at logical offset %llu with max blocks %u with error %d\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"This should not happen!! Data will be lost\0A\00", align 1
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to mark inode %lu dirty\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.mpage_da_data*, i32*)* @mpage_map_and_submit_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpage_map_and_submit_extent(i32* %0, %struct.mpage_da_data* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mpage_da_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ext4_map_blocks*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.super_block*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.mpage_da_data* %1, %struct.mpage_da_data** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.mpage_da_data*, %struct.mpage_da_data** %6, align 8
  %17 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %16, i32 0, i32 3
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %8, align 8
  %19 = load %struct.mpage_da_data*, %struct.mpage_da_data** %6, align 8
  %20 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %19, i32 0, i32 2
  store %struct.ext4_map_blocks* %20, %struct.ext4_map_blocks** %9, align 8
  store i32 0, i32* %12, align 4
  %21 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %9, align 8
  %22 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = shl i64 %23, %26
  %28 = load %struct.mpage_da_data*, %struct.mpage_da_data** %6, align 8
  %29 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i64 %27, i64* %32, align 8
  br label %33

33:                                               ; preds = %113, %3
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.mpage_da_data*, %struct.mpage_da_data** %6, align 8
  %36 = call i32 @mpage_map_one_extent(i32* %34, %struct.mpage_da_data* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %106

39:                                               ; preds = %33
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 2
  %42 = load %struct.super_block*, %struct.super_block** %41, align 8
  store %struct.super_block* %42, %struct.super_block** %13, align 8
  %43 = load %struct.super_block*, %struct.super_block** %13, align 8
  %44 = call %struct.TYPE_8__* @EXT4_SB(%struct.super_block* %43)
  %45 = call i64 @ext4_forced_shutdown(%struct.TYPE_8__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %39
  %48 = load %struct.super_block*, %struct.super_block** %13, align 8
  %49 = call %struct.TYPE_8__* @EXT4_SB(%struct.super_block* %48)
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @EXT4_MF_FS_ABORTED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47, %39
  br label %103

56:                                               ; preds = %47
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %70, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @ENOSPC, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load %struct.super_block*, %struct.super_block** %13, align 8
  %68 = call i64 @ext4_count_free_clusters(%struct.super_block* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66, %56
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %119

74:                                               ; preds = %70
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %4, align 4
  br label %181

76:                                               ; preds = %66, %61
  %77 = load %struct.super_block*, %struct.super_block** %13, align 8
  %78 = load i32, i32* @KERN_CRIT, align 4
  %79 = load %struct.inode*, %struct.inode** %8, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %9, align 8
  %83 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %9, align 8
  %86 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = load i32, i32* %10, align 4
  %90 = sub nsw i32 0, %89
  %91 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %77, i32 %78, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %81, i64 %84, i32 %88, i32 %90)
  %92 = load %struct.super_block*, %struct.super_block** %13, align 8
  %93 = load i32, i32* @KERN_CRIT, align 4
  %94 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %92, i32 %93, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @ENOSPC, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %76
  %100 = load %struct.inode*, %struct.inode** %8, align 8
  %101 = call i32 @ext4_print_free_blocks(%struct.inode* %100)
  br label %102

102:                                              ; preds = %99, %76
  br label %103

103:                                              ; preds = %102, %55
  %104 = load i32*, i32** %7, align 8
  store i32 1, i32* %104, align 4
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %4, align 4
  br label %181

106:                                              ; preds = %33
  store i32 1, i32* %12, align 4
  %107 = load %struct.mpage_da_data*, %struct.mpage_da_data** %6, align 8
  %108 = call i32 @mpage_map_and_submit_buffers(%struct.mpage_da_data* %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %119

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %9, align 8
  %115 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %33, label %118

118:                                              ; preds = %113
  br label %119

119:                                              ; preds = %118, %111, %73
  %120 = load %struct.mpage_da_data*, %struct.mpage_da_data** %6, align 8
  %121 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @PAGE_SHIFT, align 8
  %124 = shl i64 %122, %123
  store i64 %124, i64* %11, align 8
  %125 = load i64, i64* %11, align 8
  %126 = load %struct.inode*, %struct.inode** %8, align 8
  %127 = call %struct.TYPE_9__* @EXT4_I(%struct.inode* %126)
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp sgt i64 %125, %129
  br i1 %130, label %131, label %179

131:                                              ; preds = %119
  %132 = load %struct.inode*, %struct.inode** %8, align 8
  %133 = call %struct.TYPE_9__* @EXT4_I(%struct.inode* %132)
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = call i32 @down_write(i32* %134)
  %136 = load %struct.inode*, %struct.inode** %8, align 8
  %137 = call i64 @i_size_read(%struct.inode* %136)
  store i64 %137, i64* %15, align 8
  %138 = load i64, i64* %11, align 8
  %139 = load i64, i64* %15, align 8
  %140 = icmp sgt i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %131
  %142 = load i64, i64* %15, align 8
  store i64 %142, i64* %11, align 8
  br label %143

143:                                              ; preds = %141, %131
  %144 = load i64, i64* %11, align 8
  %145 = load %struct.inode*, %struct.inode** %8, align 8
  %146 = call %struct.TYPE_9__* @EXT4_I(%struct.inode* %145)
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp sgt i64 %144, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %143
  %151 = load i64, i64* %11, align 8
  %152 = load %struct.inode*, %struct.inode** %8, align 8
  %153 = call %struct.TYPE_9__* @EXT4_I(%struct.inode* %152)
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  store i64 %151, i64* %154, align 8
  br label %155

155:                                              ; preds = %150, %143
  %156 = load %struct.inode*, %struct.inode** %8, align 8
  %157 = call %struct.TYPE_9__* @EXT4_I(%struct.inode* %156)
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = call i32 @up_write(i32* %158)
  %160 = load i32*, i32** %5, align 8
  %161 = load %struct.inode*, %struct.inode** %8, align 8
  %162 = call i32 @ext4_mark_inode_dirty(i32* %160, %struct.inode* %161)
  store i32 %162, i32* %14, align 4
  %163 = load i32, i32* %14, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %155
  %166 = load %struct.inode*, %struct.inode** %8, align 8
  %167 = getelementptr inbounds %struct.inode, %struct.inode* %166, i32 0, i32 2
  %168 = load %struct.super_block*, %struct.super_block** %167, align 8
  %169 = load %struct.inode*, %struct.inode** %8, align 8
  %170 = getelementptr inbounds %struct.inode, %struct.inode* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @ext4_error(%struct.super_block* %168, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %165, %155
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %173
  %177 = load i32, i32* %14, align 4
  store i32 %177, i32* %10, align 4
  br label %178

178:                                              ; preds = %176, %173
  br label %179

179:                                              ; preds = %178, %119
  %180 = load i32, i32* %10, align 4
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %179, %103, %74
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @mpage_map_one_extent(i32*, %struct.mpage_da_data*) #1

declare dso_local i64 @ext4_forced_shutdown(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @ext4_count_free_clusters(%struct.super_block*) #1

declare dso_local i32 @ext4_msg(%struct.super_block*, i32, i8*, ...) #1

declare dso_local i32 @ext4_print_free_blocks(%struct.inode*) #1

declare dso_local i32 @mpage_map_and_submit_buffers(%struct.mpage_da_data*) #1

declare dso_local %struct.TYPE_9__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_error(%struct.super_block*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

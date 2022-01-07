; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_expand_inode_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_expand_inode_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_map_blocks = type { i32, i64, i32, i32, i32*, i32* }

@NO_CHECK_TYPE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@CURSEG_COLD_DATA = common dso_local global i32 0, align 4
@F2FS_GET_BLOCK_PRE_DIO = common dso_local global i32 0, align 4
@F2FS_GET_BLOCK_PRE_AIO = common dso_local global i32 0, align 4
@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64, i32)* @expand_inode_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_inode_data(%struct.inode* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.f2fs_sb_info*, align 8
  %11 = alloca %struct.f2fs_map_blocks, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %17)
  store %struct.f2fs_sb_info* %18, %struct.f2fs_sb_info** %10, align 8
  %19 = bitcast %struct.f2fs_map_blocks* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 40, i1 false)
  %20 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %11, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %11, i32 0, i32 3
  %22 = load i32, i32* @NO_CHECK_TYPE, align 4
  store i32 %22, i32* %21, align 4
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = call i64 @i_size_read(%struct.inode* %23)
  store i64 %24, i64* %13, align 8
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %26, %27
  %29 = call i32 @inode_newsize_ok(%struct.inode* %25, i64 %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %5, align 4
  br label %152

34:                                               ; preds = %4
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = call i32 @f2fs_convert_inline_inode(%struct.inode* %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %5, align 4
  br label %152

41:                                               ; preds = %34
  %42 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %43 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %42, i32 1)
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %44, %45
  %47 = load i64, i64* @PAGE_SHIFT, align 8
  %48 = lshr i64 %46, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %12, align 4
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %50, %51
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = and i64 %52, %55
  store i64 %56, i64* %14, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @PAGE_SHIFT, align 8
  %59 = lshr i64 %57, %58
  %60 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %11, i32 0, i32 1
  store i64 %59, i64* %60, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %11, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = sub i64 %62, %64
  %66 = trunc i64 %65 to i32
  %67 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %11, i32 0, i32 2
  store i32 %66, i32* %67, align 8
  %68 = load i64, i64* %14, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %41
  %71 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %11, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %70, %41
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = call i64 @f2fs_is_pinned_file(%struct.inode* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* @CURSEG_COLD_DATA, align 4
  %80 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %11, i32 0, i32 3
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %74
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = call i64 @f2fs_is_pinned_file(%struct.inode* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @F2FS_GET_BLOCK_PRE_DIO, align 4
  br label %90

88:                                               ; preds = %81
  %89 = load i32, i32* @F2FS_GET_BLOCK_PRE_AIO, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = call i32 @f2fs_map_blocks(%struct.inode* %82, %struct.f2fs_map_blocks* %11, i32 1, i32 %91)
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %125

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %11, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %15, align 4
  store i32 %100, i32* %5, align 4
  br label %152

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %11, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %11, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = add i64 %103, %106
  %108 = sub i64 %107, 1
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %101
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* %8, align 8
  %116 = add i64 %114, %115
  br label %123

117:                                              ; preds = %101
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* @PAGE_SHIFT, align 8
  %122 = shl i64 %120, %121
  br label %123

123:                                              ; preds = %117, %113
  %124 = phi i64 [ %116, %113 ], [ %122, %117 ]
  store i64 %124, i64* %13, align 8
  br label %132

125:                                              ; preds = %90
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* @PAGE_SHIFT, align 8
  %129 = shl i64 %127, %128
  %130 = load i64, i64* %14, align 8
  %131 = add i64 %129, %130
  store i64 %131, i64* %13, align 8
  br label %132

132:                                              ; preds = %125, %123
  %133 = load i64, i64* %13, align 8
  %134 = load %struct.inode*, %struct.inode** %6, align 8
  %135 = call i64 @i_size_read(%struct.inode* %134)
  %136 = icmp ugt i64 %133, %135
  br i1 %136, label %137, label %150

137:                                              ; preds = %132
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load %struct.inode*, %struct.inode** %6, align 8
  %144 = call i32 @file_set_keep_isize(%struct.inode* %143)
  br label %149

145:                                              ; preds = %137
  %146 = load %struct.inode*, %struct.inode** %6, align 8
  %147 = load i64, i64* %13, align 8
  %148 = call i32 @f2fs_i_size_write(%struct.inode* %146, i64 %147)
  br label %149

149:                                              ; preds = %145, %142
  br label %150

150:                                              ; preds = %149, %132
  %151 = load i32, i32* %15, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %150, %99, %39, %32
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @inode_newsize_ok(%struct.inode*, i64) #1

declare dso_local i32 @f2fs_convert_inline_inode(%struct.inode*) #1

declare dso_local i32 @f2fs_balance_fs(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @f2fs_is_pinned_file(%struct.inode*) #1

declare dso_local i32 @f2fs_map_blocks(%struct.inode*, %struct.f2fs_map_blocks*, i32, i32) #1

declare dso_local i32 @file_set_keep_isize(%struct.inode*) #1

declare dso_local i32 @f2fs_i_size_write(%struct.inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

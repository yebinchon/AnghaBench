; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_convert_unwritten_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_convert_unwritten_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.ext4_map_blocks = type { i32, i32 }

@EXT4_HT_EXT_CONVERT = common dso_local global i32 0, align 4
@EXT4_HT_MAP_BLOCKS = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_IO_CONVERT_EXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"inode #%lu: block %u: len %u: ext4_ext_map_blocks returned %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_convert_unwritten_extents(i32* %0, %struct.inode* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ext4_map_blocks, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %15, align 4
  %21 = lshr i32 %19, %20
  %22 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %13, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %15, align 4
  %26 = call i32 @EXT4_MAX_BLOCKS(i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @EXT4_HT_EXT_CONVERT, align 4
  %32 = call i32* @ext4_journal_start_reserved(i32* %30, i32 %31)
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i64 @IS_ERR(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @PTR_ERR(i32* %37)
  store i32 %38, i32* %5, align 4
  br label %129

39:                                               ; preds = %29
  store i32 0, i32* %14, align 4
  br label %44

40:                                               ; preds = %4
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @ext4_chunk_trans_blocks(%struct.inode* %41, i32 %42)
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %40, %39
  br label %45

45:                                               ; preds = %113, %44
  %46 = load i32, i32* %11, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ult i32 %49, %50
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i1 [ false, %45 ], [ %51, %48 ]
  br i1 %53, label %54, label %114

54:                                               ; preds = %52
  %55 = load i32, i32* %11, align 4
  %56 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %13, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add i32 %57, %55
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sub i32 %60, %59
  store i32 %61, i32* %10, align 4
  %62 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %13, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %54
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = load i32, i32* @EXT4_HT_MAP_BLOCKS, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32* @ext4_journal_start(%struct.inode* %66, i32 %67, i32 %68)
  store i32* %69, i32** %6, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = call i64 @IS_ERR(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @PTR_ERR(i32* %74)
  store i32 %75, i32* %11, align 4
  br label %114

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76, %54
  %78 = load i32*, i32** %6, align 8
  %79 = load %struct.inode*, %struct.inode** %7, align 8
  %80 = load i32, i32* @EXT4_GET_BLOCKS_IO_CONVERT_EXT, align 4
  %81 = call i32 @ext4_map_blocks(i32* %78, %struct.inode* %79, %struct.ext4_map_blocks* %13, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp sle i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %77
  %85 = load %struct.inode*, %struct.inode** %7, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.inode*, %struct.inode** %7, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %13, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %13, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @ext4_warning(i32 %87, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %92, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %84, %77
  %98 = load i32*, i32** %6, align 8
  %99 = load %struct.inode*, %struct.inode** %7, align 8
  %100 = call i32 @ext4_mark_inode_dirty(i32* %98, %struct.inode* %99)
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @ext4_journal_stop(i32* %104)
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %103, %97
  %107 = load i32, i32* %11, align 4
  %108 = icmp sle i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109, %106
  br label %114

113:                                              ; preds = %109
  br label %45

114:                                              ; preds = %112, %73, %52
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i32*, i32** %6, align 8
  %119 = call i32 @ext4_journal_stop(i32* %118)
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i32, i32* %11, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i32, i32* %12, align 4
  br label %127

125:                                              ; preds = %120
  %126 = load i32, i32* %11, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %127, %36
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @EXT4_MAX_BLOCKS(i32, i32, i32) #1

declare dso_local i32* @ext4_journal_start_reserved(i32*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext4_chunk_trans_blocks(%struct.inode*, i32) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i32 @ext4_map_blocks(i32*, %struct.inode*, %struct.ext4_map_blocks*, i32) #1

declare dso_local i32 @ext4_warning(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

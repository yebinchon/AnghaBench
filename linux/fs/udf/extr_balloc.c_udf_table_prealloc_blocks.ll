; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_balloc.c_udf_table_prealloc_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_balloc.c_udf_table_prealloc_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.udf_sb_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kernel_lb_addr = type { i32 }
%struct.extent_position = type { i32, i32*, i32 }
%struct.udf_inode_info = type { i64, i32 }

@ICBTAG_FLAG_AD_SHORT = common dso_local global i64 0, align 8
@ICBTAG_FLAG_AD_LONG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"eloc=%u, elen=%u, first_block=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.inode*, i64, i32, i32)* @udf_table_prealloc_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_table_prealloc_blocks(%struct.super_block* %0, %struct.inode* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.udf_sb_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.kernel_lb_addr, align 4
  %17 = alloca %struct.extent_position, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.udf_inode_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.super_block*, %struct.super_block** %7, align 8
  %21 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %20)
  store %struct.udf_sb_info* %21, %struct.udf_sb_info** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %18, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.udf_sb_info*, %struct.udf_sb_info** %12, align 8
  %24 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %22, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %137

32:                                               ; preds = %5
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %33)
  store %struct.udf_inode_info* %34, %struct.udf_inode_info** %19, align 8
  %35 = load %struct.udf_inode_info*, %struct.udf_inode_info** %19, align 8
  %36 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ICBTAG_FLAG_AD_SHORT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 4, i32* %15, align 4
  br label %50

41:                                               ; preds = %32
  %42 = load %struct.udf_inode_info*, %struct.udf_inode_info** %19, align 8
  %43 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ICBTAG_FLAG_AD_LONG, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 4, i32* %15, align 4
  br label %49

48:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %137

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49, %40
  %51 = load %struct.udf_sb_info*, %struct.udf_sb_info** %12, align 8
  %52 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %51, i32 0, i32 0
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %17, i32 0, i32 0
  store i32 4, i32* %54, align 8
  %55 = load %struct.udf_inode_info*, %struct.udf_inode_info** %19, align 8
  %56 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %17, i32 0, i32 2
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %17, i32 0, i32 1
  store i32* null, i32** %59, align 8
  %60 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %16, i32 0, i32 0
  store i32 -1, i32* %60, align 4
  br label %61

61:                                               ; preds = %72, %50
  %62 = load i32, i32* %10, align 4
  %63 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %16, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.inode*, %struct.inode** %8, align 8
  %68 = call i32 @udf_next_aext(%struct.inode* %67, %struct.extent_position* %17, %struct.kernel_lb_addr* %16, i32* %14, i32 1)
  store i32 %68, i32* %18, align 4
  %69 = icmp ne i32 %68, -1
  br label %70

70:                                               ; preds = %66, %61
  %71 = phi i1 [ false, %61 ], [ %69, %66 ]
  br i1 %71, label %72, label %78

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %16, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @udf_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75, i32 %76)
  br label %61

78:                                               ; preds = %70
  %79 = load i32, i32* %10, align 4
  %80 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %16, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %119

83:                                               ; preds = %78
  %84 = load i32, i32* %15, align 4
  %85 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %17, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, %84
  store i32 %87, i32* %85, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.super_block*, %struct.super_block** %7, align 8
  %90 = getelementptr inbounds %struct.super_block, %struct.super_block* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %88, %91
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %83
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %16, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, %98
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.super_block*, %struct.super_block** %7, align 8
  %104 = getelementptr inbounds %struct.super_block, %struct.super_block* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %102, %105
  %107 = load i32, i32* %14, align 4
  %108 = sub nsw i32 %107, %106
  store i32 %108, i32* %14, align 4
  %109 = load %struct.inode*, %struct.inode** %8, align 8
  %110 = load i32, i32* %18, align 4
  %111 = shl i32 %110, 30
  %112 = load i32, i32* %14, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @udf_write_aext(%struct.inode* %109, %struct.extent_position* %17, %struct.kernel_lb_addr* %16, i32 %113, i32 1)
  br label %118

115:                                              ; preds = %83
  %116 = load %struct.inode*, %struct.inode** %8, align 8
  %117 = call i32 @udf_delete_aext(%struct.inode* %116, %struct.extent_position* byval(%struct.extent_position) align 8 %17)
  br label %118

118:                                              ; preds = %115, %96
  br label %120

119:                                              ; preds = %78
  store i32 0, i32* %13, align 4
  br label %120

120:                                              ; preds = %119, %118
  %121 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %17, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @brelse(i32* %122)
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = load %struct.super_block*, %struct.super_block** %7, align 8
  %128 = load i64, i64* %9, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sub nsw i32 0, %129
  %131 = call i32 @udf_add_free_space(%struct.super_block* %127, i64 %128, i32 %130)
  br label %132

132:                                              ; preds = %126, %120
  %133 = load %struct.udf_sb_info*, %struct.udf_sb_info** %12, align 8
  %134 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %133, i32 0, i32 0
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %132, %48, %31
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @udf_next_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32) #1

declare dso_local i32 @udf_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @udf_write_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #1

declare dso_local i32 @udf_delete_aext(%struct.inode*, %struct.extent_position* byval(%struct.extent_position) align 8) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i32 @udf_add_free_space(%struct.super_block*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

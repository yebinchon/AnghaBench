; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_extend_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_extend_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.extent_position = type { i32, i64 }
%struct.kernel_lb_addr = type { i32 }
%struct.udf_inode_info = type { i64, i32 }
%struct.kernel_long_ad = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@ICBTAG_FLAG_AD_SHORT = common dso_local global i64 0, align 8
@ICBTAG_FLAG_AD_LONG = common dso_local global i64 0, align 8
@EXT_NOT_RECORDED_NOT_ALLOCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @udf_extend_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_extend_file(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.extent_position, align 8
  %6 = alloca %struct.kernel_lb_addr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.udf_inode_info*, align 8
  %15 = alloca %struct.kernel_long_ad, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load %struct.super_block*, %struct.super_block** %20, align 8
  store %struct.super_block* %21, %struct.super_block** %9, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.super_block*, %struct.super_block** %9, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %22, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %27)
  store %struct.udf_inode_info* %28, %struct.udf_inode_info** %14, align 8
  store i32 0, i32* %16, align 4
  %29 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %30 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ICBTAG_FLAG_AD_SHORT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  store i32 4, i32* %13, align 4
  br label %45

35:                                               ; preds = %2
  %36 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %37 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ICBTAG_FLAG_AD_LONG, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 4, i32* %13, align 4
  br label %44

42:                                               ; preds = %35
  %43 = call i32 (...) @BUG()
  br label %44

44:                                               ; preds = %42, %41
  br label %45

45:                                               ; preds = %44, %34
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @inode_bmap(%struct.inode* %46, i32 %47, %struct.extent_position* %5, %struct.kernel_lb_addr* %6, i32* %7, i32* %11)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, -1
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %17, align 4
  %52 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  %59 = call i32 @udf_file_entry_alloc_offset(%struct.inode* %58)
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %70, label %61

61:                                               ; preds = %55, %45
  %62 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = icmp eq i64 %68, 4
  br i1 %69, label %70, label %77

70:                                               ; preds = %65, %55
  %71 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %15, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %15, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @EXT_NOT_RECORDED_NOT_ALLOCATED, align 4
  %76 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %15, i32 0, i32 0
  store i32 %75, i32* %76, align 8
  br label %91

77:                                               ; preds = %65, %61
  %78 = load i32, i32* %13, align 4
  %79 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, %78
  store i32 %81, i32* %79, align 8
  %82 = load %struct.inode*, %struct.inode** %3, align 8
  %83 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %15, i32 0, i32 1
  %84 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %15, i32 0, i32 0
  %85 = call i32 @udf_next_aext(%struct.inode* %82, %struct.extent_position* %5, %struct.TYPE_2__* %83, i32* %84, i32 0)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = shl i32 %86, 30
  %88 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %15, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %87
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %77, %70
  %92 = load i32, i32* %4, align 4
  %93 = load %struct.super_block*, %struct.super_block** %9, align 8
  %94 = getelementptr inbounds %struct.super_block, %struct.super_block* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %95, 1
  %97 = and i32 %92, %96
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %12, align 8
  %99 = load i32, i32* %17, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %91
  %102 = load %struct.inode*, %struct.inode** %3, align 8
  %103 = load i64, i64* %12, align 8
  %104 = call i32 @udf_do_extend_final_block(%struct.inode* %102, %struct.extent_position* %5, %struct.kernel_long_ad* %15, i64 %103)
  br label %118

105:                                              ; preds = %91
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.super_block*, %struct.super_block** %9, align 8
  %108 = getelementptr inbounds %struct.super_block, %struct.super_block* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %106, %109
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %12, align 8
  %113 = or i64 %111, %112
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %18, align 4
  %115 = load %struct.inode*, %struct.inode** %3, align 8
  %116 = load i32, i32* %18, align 4
  %117 = call i32 @udf_do_extend_file(%struct.inode* %115, %struct.extent_position* %5, %struct.kernel_long_ad* %15, i32 %116)
  store i32 %117, i32* %16, align 4
  br label %118

118:                                              ; preds = %105, %101
  %119 = load i32, i32* %16, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %126

122:                                              ; preds = %118
  store i32 0, i32* %16, align 4
  %123 = load i32, i32* %4, align 4
  %124 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %125 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %122, %121
  %127 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @brelse(i64 %128)
  %130 = load i32, i32* %16, align 4
  ret i32 %130
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @inode_bmap(%struct.inode*, i32, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32*) #1

declare dso_local i32 @udf_file_entry_alloc_offset(%struct.inode*) #1

declare dso_local i32 @udf_next_aext(%struct.inode*, %struct.extent_position*, %struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @udf_do_extend_final_block(%struct.inode*, %struct.extent_position*, %struct.kernel_long_ad*, i64) #1

declare dso_local i32 @udf_do_extend_file(%struct.inode*, %struct.extent_position*, %struct.kernel_long_ad*, i32) #1

declare dso_local i32 @brelse(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

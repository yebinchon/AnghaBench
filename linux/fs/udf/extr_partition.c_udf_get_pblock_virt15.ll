; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_partition.c_udf_get_pblock_virt15.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_partition.c_udf_get_pblock_virt15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.udf_sb_info = type { i32, %struct.udf_part_map* }
%struct.udf_part_map = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.udf_virtual_data }
%struct.udf_virtual_data = type { i32, i32 }
%struct.udf_inode_info = type { i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [54 x i8] c"Trying to access block beyond end of VAT (%u max %u)\0A\00", align 1
@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"get_pblock(UDF_VIRTUAL_MAP:%p,%u,%u) VAT: %u[%u]\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"recursive call to udf_get_pblock!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udf_get_pblock_virt15(%struct.super_block* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.udf_sb_info*, align 8
  %15 = alloca %struct.udf_part_map*, align 8
  %16 = alloca %struct.udf_virtual_data*, align 8
  %17 = alloca %struct.udf_inode_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  %18 = load %struct.super_block*, %struct.super_block** %6, align 8
  %19 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %18)
  store %struct.udf_sb_info* %19, %struct.udf_sb_info** %14, align 8
  %20 = load %struct.udf_sb_info*, %struct.udf_sb_info** %14, align 8
  %21 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.udf_inode_info* @UDF_I(i32 %22)
  store %struct.udf_inode_info* %23, %struct.udf_inode_info** %17, align 8
  %24 = load %struct.udf_sb_info*, %struct.udf_sb_info** %14, align 8
  %25 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %24, i32 0, i32 1
  %26 = load %struct.udf_part_map*, %struct.udf_part_map** %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %26, i64 %27
  store %struct.udf_part_map* %28, %struct.udf_part_map** %15, align 8
  %29 = load %struct.udf_part_map*, %struct.udf_part_map** %15, align 8
  %30 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store %struct.udf_virtual_data* %31, %struct.udf_virtual_data** %16, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.udf_virtual_data*, %struct.udf_virtual_data** %16, align 8
  %34 = getelementptr inbounds %struct.udf_virtual_data, %struct.udf_virtual_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.udf_virtual_data*, %struct.udf_virtual_data** %16, align 8
  %40 = getelementptr inbounds %struct.udf_virtual_data, %struct.udf_virtual_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  store i32 -1, i32* %5, align 4
  br label %160

43:                                               ; preds = %4
  %44 = load %struct.udf_inode_info*, %struct.udf_inode_info** %17, align 8
  %45 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %43
  %50 = load %struct.udf_inode_info*, %struct.udf_inode_info** %17, align 8
  %51 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.udf_virtual_data*, %struct.udf_virtual_data** %16, align 8
  %55 = getelementptr inbounds %struct.udf_virtual_data, %struct.udf_virtual_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %53, %57
  %59 = inttoptr i64 %58 to i32*
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le32_to_cpu(i32 %63)
  store i32 %64, i32* %13, align 4
  br label %142

65:                                               ; preds = %43
  %66 = load %struct.super_block*, %struct.super_block** %6, align 8
  %67 = getelementptr inbounds %struct.super_block, %struct.super_block* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.udf_virtual_data*, %struct.udf_virtual_data** %16, align 8
  %70 = getelementptr inbounds %struct.udf_virtual_data, %struct.udf_virtual_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %68, %71
  %73 = sext i32 %72 to i64
  %74 = udiv i64 %73, 4
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %65
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = load %struct.super_block*, %struct.super_block** %6, align 8
  %86 = getelementptr inbounds %struct.super_block, %struct.super_block* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = udiv i64 %88, 4
  %90 = udiv i64 %84, %89
  %91 = add i64 1, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = load %struct.super_block*, %struct.super_block** %6, align 8
  %96 = getelementptr inbounds %struct.super_block, %struct.super_block* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = udiv i64 %98, 4
  %100 = urem i64 %94, %99
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %12, align 4
  br label %112

102:                                              ; preds = %65
  store i32 0, i32* %11, align 4
  %103 = load %struct.udf_virtual_data*, %struct.udf_virtual_data** %16, align 8
  %104 = getelementptr inbounds %struct.udf_virtual_data, %struct.udf_virtual_data* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = udiv i64 %106, 4
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = add i64 %107, %109
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %102, %79
  %113 = load %struct.udf_sb_info*, %struct.udf_sb_info** %14, align 8
  %114 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @udf_block_map(i32 %115, i32 %116)
  store i32 %117, i32* %13, align 4
  %118 = load %struct.super_block*, %struct.super_block** %6, align 8
  %119 = load i32, i32* %13, align 4
  %120 = call %struct.buffer_head* @sb_bread(%struct.super_block* %118, i32 %119)
  store %struct.buffer_head* %120, %struct.buffer_head** %10, align 8
  %121 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %122 = icmp ne %struct.buffer_head* %121, null
  br i1 %122, label %130, label %123

123:                                              ; preds = %112
  %124 = load %struct.super_block*, %struct.super_block** %6, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i64, i64* %8, align 8
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), %struct.super_block* %124, i32 %125, i64 %126, i32 %127, i32 %128)
  store i32 -1, i32* %5, align 4
  br label %160

130:                                              ; preds = %112
  %131 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %132 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to i32*
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @le32_to_cpu(i32 %138)
  store i32 %139, i32* %13, align 4
  %140 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %141 = call i32 @brelse(%struct.buffer_head* %140)
  br label %142

142:                                              ; preds = %130, %49
  %143 = load %struct.udf_inode_info*, %struct.udf_inode_info** %17, align 8
  %144 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %8, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = call i32 (i8*, ...) @udf_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %160

151:                                              ; preds = %142
  %152 = load %struct.super_block*, %struct.super_block** %6, align 8
  %153 = load i32, i32* %13, align 4
  %154 = load %struct.udf_inode_info*, %struct.udf_inode_info** %17, align 8
  %155 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @udf_get_pblock(%struct.super_block* %152, i32 %153, i64 %157, i32 %158)
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %151, %149, %123, %37
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local %struct.udf_inode_info* @UDF_I(i32) #1

declare dso_local i32 @udf_debug(i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @udf_block_map(i32, i32) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @udf_get_pblock(%struct.super_block*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

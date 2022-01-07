; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_fill_partdesc_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_fill_partdesc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.partitionDesc = type { i64, i64, i32, i32 }
%struct.udf_part_map = type { i32, %struct.TYPE_5__, i8*, i8*, i32 }
%struct.TYPE_5__ = type { %struct.udf_bitmap*, %struct.inode* }
%struct.udf_bitmap = type { i8* }
%struct.inode = type { i8* }
%struct.udf_sb_info = type { %struct.udf_part_map* }
%struct.partitionHeaderDesc = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.kernel_lb_addr = type { i8*, i32 }

@PD_ACCESS_TYPE_READ_ONLY = common dso_local global i32 0, align 4
@UDF_PART_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@PD_ACCESS_TYPE_WRITE_ONCE = common dso_local global i32 0, align 4
@UDF_PART_FLAG_WRITE_ONCE = common dso_local global i32 0, align 4
@PD_ACCESS_TYPE_REWRITABLE = common dso_local global i32 0, align 4
@UDF_PART_FLAG_REWRITABLE = common dso_local global i32 0, align 4
@PD_ACCESS_TYPE_OVERWRITABLE = common dso_local global i32 0, align 4
@UDF_PART_FLAG_OVERWRITABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Partition (%d type %x) starts at physical %u, block length %u\0A\00", align 1
@UDF_FLAG_RW_INCOMPAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"cannot load unallocSpaceTable (part %d)\0A\00", align 1
@UDF_PART_FLAG_UNALLOC_TABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"unallocSpaceTable (part %d) @ %lu\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@UDF_PART_FLAG_UNALLOC_BITMAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"unallocSpaceBitmap (part %d) @ %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.partitionDesc*, i32)* @udf_fill_partdesc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_fill_partdesc_info(%struct.super_block* %0, %struct.partitionDesc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.partitionDesc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.udf_part_map*, align 8
  %9 = alloca %struct.udf_sb_info*, align 8
  %10 = alloca %struct.partitionHeaderDesc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kernel_lb_addr, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.udf_bitmap*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.partitionDesc* %1, %struct.partitionDesc** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %15)
  store %struct.udf_sb_info* %16, %struct.udf_sb_info** %9, align 8
  %17 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %18 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %17, i32 0, i32 0
  %19 = load %struct.udf_part_map*, %struct.udf_part_map** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %19, i64 %21
  store %struct.udf_part_map* %22, %struct.udf_part_map** %8, align 8
  %23 = load %struct.partitionDesc*, %struct.partitionDesc** %6, align 8
  %24 = getelementptr inbounds %struct.partitionDesc, %struct.partitionDesc* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @le32_to_cpu(i32 %25)
  %27 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %28 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.partitionDesc*, %struct.partitionDesc** %6, align 8
  %30 = getelementptr inbounds %struct.partitionDesc, %struct.partitionDesc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @le32_to_cpu(i32 %31)
  %33 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %34 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.partitionDesc*, %struct.partitionDesc** %6, align 8
  %36 = getelementptr inbounds %struct.partitionDesc, %struct.partitionDesc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @PD_ACCESS_TYPE_READ_ONLY, align 4
  %39 = call i64 @cpu_to_le32(i32 %38)
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %3
  %42 = load i32, i32* @UDF_PART_FLAG_READ_ONLY, align 4
  %43 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %44 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %3
  %48 = load %struct.partitionDesc*, %struct.partitionDesc** %6, align 8
  %49 = getelementptr inbounds %struct.partitionDesc, %struct.partitionDesc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @PD_ACCESS_TYPE_WRITE_ONCE, align 4
  %52 = call i64 @cpu_to_le32(i32 %51)
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i32, i32* @UDF_PART_FLAG_WRITE_ONCE, align 4
  %56 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %57 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %54, %47
  %61 = load %struct.partitionDesc*, %struct.partitionDesc** %6, align 8
  %62 = getelementptr inbounds %struct.partitionDesc, %struct.partitionDesc* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @PD_ACCESS_TYPE_REWRITABLE, align 4
  %65 = call i64 @cpu_to_le32(i32 %64)
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32, i32* @UDF_PART_FLAG_REWRITABLE, align 4
  %69 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %70 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %67, %60
  %74 = load %struct.partitionDesc*, %struct.partitionDesc** %6, align 8
  %75 = getelementptr inbounds %struct.partitionDesc, %struct.partitionDesc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @PD_ACCESS_TYPE_OVERWRITABLE, align 4
  %78 = call i64 @cpu_to_le32(i32 %77)
  %79 = icmp eq i64 %76, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i32, i32* @UDF_PART_FLAG_OVERWRITABLE, align 4
  %82 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %83 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %80, %73
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %89 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %92 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %95 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %90, i8* %93, i8* %96)
  %98 = load %struct.super_block*, %struct.super_block** %5, align 8
  %99 = load %struct.partitionDesc*, %struct.partitionDesc** %6, align 8
  %100 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %101 = call i32 @check_partition_desc(%struct.super_block* %98, %struct.partitionDesc* %99, %struct.udf_part_map* %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %86
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %4, align 4
  br label %197

106:                                              ; preds = %86
  %107 = load %struct.super_block*, %struct.super_block** %5, align 8
  %108 = load i32, i32* @UDF_FLAG_RW_INCOMPAT, align 4
  %109 = call i64 @UDF_QUERY_FLAG(%struct.super_block* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  br label %197

112:                                              ; preds = %106
  %113 = load %struct.partitionDesc*, %struct.partitionDesc** %6, align 8
  %114 = getelementptr inbounds %struct.partitionDesc, %struct.partitionDesc* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to %struct.partitionHeaderDesc*
  store %struct.partitionHeaderDesc* %116, %struct.partitionHeaderDesc** %10, align 8
  %117 = load %struct.partitionHeaderDesc*, %struct.partitionHeaderDesc** %10, align 8
  %118 = getelementptr inbounds %struct.partitionHeaderDesc, %struct.partitionHeaderDesc* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %159

122:                                              ; preds = %112
  %123 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %12, i32 0, i32 0
  %124 = load %struct.partitionHeaderDesc*, %struct.partitionHeaderDesc** %10, align 8
  %125 = getelementptr inbounds %struct.partitionHeaderDesc, %struct.partitionHeaderDesc* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i8* @le32_to_cpu(i32 %127)
  store i8* %128, i8** %123, align 8
  %129 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %12, i32 0, i32 1
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %129, align 8
  %131 = load %struct.super_block*, %struct.super_block** %5, align 8
  %132 = call %struct.inode* @udf_iget_special(%struct.super_block* %131, %struct.kernel_lb_addr* %12)
  store %struct.inode* %132, %struct.inode** %13, align 8
  %133 = load %struct.inode*, %struct.inode** %13, align 8
  %134 = call i64 @IS_ERR(%struct.inode* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %122
  %137 = load i32, i32* %7, align 4
  %138 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  %139 = load %struct.inode*, %struct.inode** %13, align 8
  %140 = call i32 @PTR_ERR(%struct.inode* %139)
  store i32 %140, i32* %4, align 4
  br label %197

141:                                              ; preds = %122
  %142 = load %struct.inode*, %struct.inode** %13, align 8
  %143 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %144 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  store %struct.inode* %142, %struct.inode** %145, align 8
  %146 = load i32, i32* @UDF_PART_FLAG_UNALLOC_TABLE, align 4
  %147 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %148 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %153 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load %struct.inode*, %struct.inode** %154, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %151, i8* %157)
  br label %159

159:                                              ; preds = %141, %112
  %160 = load %struct.partitionHeaderDesc*, %struct.partitionHeaderDesc** %10, align 8
  %161 = getelementptr inbounds %struct.partitionHeaderDesc, %struct.partitionHeaderDesc* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %196

165:                                              ; preds = %159
  %166 = load %struct.super_block*, %struct.super_block** %5, align 8
  %167 = load i32, i32* %7, align 4
  %168 = call %struct.udf_bitmap* @udf_sb_alloc_bitmap(%struct.super_block* %166, i32 %167)
  store %struct.udf_bitmap* %168, %struct.udf_bitmap** %14, align 8
  %169 = load %struct.udf_bitmap*, %struct.udf_bitmap** %14, align 8
  %170 = icmp ne %struct.udf_bitmap* %169, null
  br i1 %170, label %174, label %171

171:                                              ; preds = %165
  %172 = load i32, i32* @ENOMEM, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %4, align 4
  br label %197

174:                                              ; preds = %165
  %175 = load %struct.udf_bitmap*, %struct.udf_bitmap** %14, align 8
  %176 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %177 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  store %struct.udf_bitmap* %175, %struct.udf_bitmap** %178, align 8
  %179 = load %struct.partitionHeaderDesc*, %struct.partitionHeaderDesc** %10, align 8
  %180 = getelementptr inbounds %struct.partitionHeaderDesc, %struct.partitionHeaderDesc* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i8* @le32_to_cpu(i32 %182)
  %184 = load %struct.udf_bitmap*, %struct.udf_bitmap** %14, align 8
  %185 = getelementptr inbounds %struct.udf_bitmap, %struct.udf_bitmap* %184, i32 0, i32 0
  store i8* %183, i8** %185, align 8
  %186 = load i32, i32* @UDF_PART_FLAG_UNALLOC_BITMAP, align 4
  %187 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %188 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 8
  %191 = load i32, i32* %7, align 4
  %192 = load %struct.udf_bitmap*, %struct.udf_bitmap** %14, align 8
  %193 = getelementptr inbounds %struct.udf_bitmap, %struct.udf_bitmap* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %191, i8* %194)
  br label %196

196:                                              ; preds = %174, %159
  store i32 0, i32* %4, align 4
  br label %197

197:                                              ; preds = %196, %171, %136, %111, %104
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @udf_debug(i8*, i32, ...) #1

declare dso_local i32 @check_partition_desc(%struct.super_block*, %struct.partitionDesc*, %struct.udf_part_map*) #1

declare dso_local i64 @UDF_QUERY_FLAG(%struct.super_block*, i32) #1

declare dso_local %struct.inode* @udf_iget_special(%struct.super_block*, %struct.kernel_lb_addr*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.udf_bitmap* @udf_sb_alloc_bitmap(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

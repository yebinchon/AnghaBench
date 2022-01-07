; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_check_partition_desc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_check_partition_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.partitionDesc = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.udf_part_map = type { i64 }
%struct.partitionHeaderDesc = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@PD_PARTITION_CONTENTS_NSR02 = common dso_local global i32 0, align 4
@PD_PARTITION_CONTENTS_NSR03 = common dso_local global i32 0, align 4
@UDF_VIRTUAL_MAP15 = common dso_local global i64 0, align 8
@UDF_VIRTUAL_MAP20 = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4
@UDF_FLAG_RW_INCOMPAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.partitionDesc*, %struct.udf_part_map*)* @check_partition_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_partition_desc(%struct.super_block* %0, %struct.partitionDesc* %1, %struct.udf_part_map* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.partitionDesc*, align 8
  %7 = alloca %struct.udf_part_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.partitionHeaderDesc*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.partitionDesc* %1, %struct.partitionDesc** %6, align 8
  store %struct.udf_part_map* %2, %struct.udf_part_map** %7, align 8
  %13 = load %struct.partitionDesc*, %struct.partitionDesc** %6, align 8
  %14 = getelementptr inbounds %struct.partitionDesc, %struct.partitionDesc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  switch i32 %16, label %18 [
    i32 130, label %17
    i32 128, label %17
    i32 129, label %17
    i32 131, label %17
  ]

17:                                               ; preds = %3, %3, %3, %3
  br label %96

18:                                               ; preds = %3
  %19 = load %struct.partitionDesc*, %struct.partitionDesc** %6, align 8
  %20 = getelementptr inbounds %struct.partitionDesc, %struct.partitionDesc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PD_PARTITION_CONTENTS_NSR02, align 4
  %24 = call i64 @strcmp(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load %struct.partitionDesc*, %struct.partitionDesc** %6, align 8
  %28 = getelementptr inbounds %struct.partitionDesc, %struct.partitionDesc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PD_PARTITION_CONTENTS_NSR03, align 4
  %32 = call i64 @strcmp(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %96

35:                                               ; preds = %26, %18
  %36 = load %struct.partitionDesc*, %struct.partitionDesc** %6, align 8
  %37 = getelementptr inbounds %struct.partitionDesc, %struct.partitionDesc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.partitionHeaderDesc*
  store %struct.partitionHeaderDesc* %39, %struct.partitionHeaderDesc** %12, align 8
  %40 = load %struct.partitionHeaderDesc*, %struct.partitionHeaderDesc** %12, align 8
  %41 = getelementptr inbounds %struct.partitionHeaderDesc, %struct.partitionHeaderDesc* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  %44 = load %struct.partitionHeaderDesc*, %struct.partitionHeaderDesc** %12, align 8
  %45 = getelementptr inbounds %struct.partitionHeaderDesc, %struct.partitionHeaderDesc* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  %48 = load %struct.partitionHeaderDesc*, %struct.partitionHeaderDesc** %12, align 8
  %49 = getelementptr inbounds %struct.partitionHeaderDesc, %struct.partitionHeaderDesc* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  %52 = load %struct.partitionHeaderDesc*, %struct.partitionHeaderDesc** %12, align 8
  %53 = getelementptr inbounds %struct.partitionHeaderDesc, %struct.partitionHeaderDesc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %35
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  br label %96

68:                                               ; preds = %64, %61, %58, %35
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71, %68
  br label %96

75:                                               ; preds = %71
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %96

82:                                               ; preds = %78, %75
  %83 = load %struct.udf_part_map*, %struct.udf_part_map** %7, align 8
  %84 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @UDF_VIRTUAL_MAP15, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load %struct.udf_part_map*, %struct.udf_part_map** %7, align 8
  %90 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @UDF_VIRTUAL_MAP20, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88, %82
  br label %96

95:                                               ; preds = %88
  store i32 0, i32* %4, align 4
  br label %107

96:                                               ; preds = %94, %81, %74, %67, %34, %17
  %97 = load %struct.super_block*, %struct.super_block** %5, align 8
  %98 = call i32 @sb_rdonly(%struct.super_block* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* @EACCES, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %107

103:                                              ; preds = %96
  %104 = load %struct.super_block*, %struct.super_block** %5, align 8
  %105 = load i32, i32* @UDF_FLAG_RW_INCOMPAT, align 4
  %106 = call i32 @UDF_SET_FLAG(%struct.super_block* %104, i32 %105)
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %103, %100, %95
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @UDF_SET_FLAG(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

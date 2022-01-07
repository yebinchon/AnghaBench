; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_partition.c_udf_get_pblock_spar15.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_partition.c_udf_get_pblock_spar15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.sparingTable = type { %struct.sparingEntry*, i32 }
%struct.sparingEntry = type { i32, i32 }
%struct.udf_sb_info = type { %struct.udf_part_map* }
%struct.udf_part_map = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.udf_sparing_data }
%struct.udf_sparing_data = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udf_get_pblock_spar15(%struct.super_block* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sparingTable*, align 8
  %12 = alloca %struct.udf_sb_info*, align 8
  %13 = alloca %struct.udf_part_map*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.udf_sparing_data*, align 8
  %16 = alloca %struct.sparingEntry*, align 8
  %17 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.sparingTable* null, %struct.sparingTable** %11, align 8
  %18 = load %struct.super_block*, %struct.super_block** %6, align 8
  %19 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %18)
  store %struct.udf_sb_info* %19, %struct.udf_sb_info** %12, align 8
  %20 = load %struct.udf_sb_info*, %struct.udf_sb_info** %12, align 8
  %21 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %20, i32 0, i32 0
  %22 = load %struct.udf_part_map*, %struct.udf_part_map** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %22, i64 %23
  store %struct.udf_part_map* %24, %struct.udf_part_map** %13, align 8
  %25 = load %struct.udf_part_map*, %struct.udf_part_map** %13, align 8
  %26 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.udf_sparing_data* %27, %struct.udf_sparing_data** %15, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %28, %29
  %31 = load %struct.udf_sparing_data*, %struct.udf_sparing_data** %15, align 8
  %32 = getelementptr inbounds %struct.udf_sparing_data, %struct.udf_sparing_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = xor i32 %34, -1
  %36 = and i32 %30, %35
  store i32 %36, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %61, %4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %64

40:                                               ; preds = %37
  %41 = load %struct.udf_sparing_data*, %struct.udf_sparing_data** %15, align 8
  %42 = getelementptr inbounds %struct.udf_sparing_data, %struct.udf_sparing_data* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %43, i64 %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %40
  %50 = load %struct.udf_sparing_data*, %struct.udf_sparing_data** %15, align 8
  %51 = getelementptr inbounds %struct.udf_sparing_data, %struct.udf_sparing_data* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %52, i64 %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.sparingTable*
  store %struct.sparingTable* %59, %struct.sparingTable** %11, align 8
  br label %64

60:                                               ; preds = %40
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %37

64:                                               ; preds = %49, %37
  %65 = load %struct.sparingTable*, %struct.sparingTable** %11, align 8
  %66 = icmp ne %struct.sparingTable* %65, null
  br i1 %66, label %67, label %119

67:                                               ; preds = %64
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %115, %67
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.sparingTable*, %struct.sparingTable** %11, align 8
  %71 = getelementptr inbounds %struct.sparingTable, %struct.sparingTable* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @le16_to_cpu(i32 %72)
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %118

75:                                               ; preds = %68
  %76 = load %struct.sparingTable*, %struct.sparingTable** %11, align 8
  %77 = getelementptr inbounds %struct.sparingTable, %struct.sparingTable* %76, i32 0, i32 0
  %78 = load %struct.sparingEntry*, %struct.sparingEntry** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %78, i64 %80
  store %struct.sparingEntry* %81, %struct.sparingEntry** %16, align 8
  %82 = load %struct.sparingEntry*, %struct.sparingEntry** %16, align 8
  %83 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le32_to_cpu(i32 %84)
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %17, align 4
  %87 = icmp uge i32 %86, -16
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  br label %118

89:                                               ; preds = %75
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load %struct.sparingEntry*, %struct.sparingEntry** %16, align 8
  %95 = getelementptr inbounds %struct.sparingEntry, %struct.sparingEntry* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le32_to_cpu(i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %98, %99
  %101 = load %struct.udf_sparing_data*, %struct.udf_sparing_data** %15, align 8
  %102 = getelementptr inbounds %struct.udf_sparing_data, %struct.udf_sparing_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, 1
  %105 = and i32 %100, %104
  %106 = add nsw i32 %97, %105
  store i32 %106, i32* %5, align 4
  br label %127

107:                                              ; preds = %89
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %118

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %68

118:                                              ; preds = %111, %88, %68
  br label %119

119:                                              ; preds = %118, %64
  %120 = load %struct.udf_part_map*, %struct.udf_part_map** %13, align 8
  %121 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %122, %123
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %124, %125
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %119, %93
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

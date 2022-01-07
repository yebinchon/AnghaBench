; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_load_sparable_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_load_sparable_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64 }
%struct.udf_part_map = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.udf_sparing_data }
%struct.udf_sparing_data = type { %struct.buffer_head**, i64 }
%struct.buffer_head = type { i64 }
%struct.sparablePartitionMap = type { i32, i32*, i32 }
%struct.sparingTable = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@UDF_SPARABLE_MAP15 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"error loading logical volume descriptor: Invalid packet length %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"error loading logical volume descriptor: Too many sparing tables (%d)\0A\00", align 1
@UDF_ID_SPARING = common dso_local global i32 0, align 4
@udf_get_pblock_spar15 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.udf_part_map*, %struct.sparablePartitionMap*)* @udf_load_sparable_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_load_sparable_map(%struct.super_block* %0, %struct.udf_part_map* %1, %struct.sparablePartitionMap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.udf_part_map*, align 8
  %7 = alloca %struct.sparablePartitionMap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.sparingTable*, align 8
  %11 = alloca %struct.udf_sparing_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.udf_part_map* %1, %struct.udf_part_map** %6, align 8
  store %struct.sparablePartitionMap* %2, %struct.sparablePartitionMap** %7, align 8
  %14 = load %struct.udf_part_map*, %struct.udf_part_map** %6, align 8
  %15 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.udf_sparing_data* %16, %struct.udf_sparing_data** %11, align 8
  %17 = load i32, i32* @UDF_SPARABLE_MAP15, align 4
  %18 = load %struct.udf_part_map*, %struct.udf_part_map** %6, align 8
  %19 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sparablePartitionMap*, %struct.sparablePartitionMap** %7, align 8
  %21 = getelementptr inbounds %struct.sparablePartitionMap, %struct.sparablePartitionMap* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @le16_to_cpu(i32 %22)
  %24 = load %struct.udf_sparing_data*, %struct.udf_sparing_data** %11, align 8
  %25 = getelementptr inbounds %struct.udf_sparing_data, %struct.udf_sparing_data* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.udf_sparing_data*, %struct.udf_sparing_data** %11, align 8
  %27 = getelementptr inbounds %struct.udf_sparing_data, %struct.udf_sparing_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @is_power_of_2(i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %3
  %32 = load %struct.super_block*, %struct.super_block** %5, align 8
  %33 = load %struct.udf_sparing_data*, %struct.udf_sparing_data** %11, align 8
  %34 = getelementptr inbounds %struct.udf_sparing_data, %struct.udf_sparing_data* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @udf_err(%struct.super_block* %32, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %121

40:                                               ; preds = %3
  %41 = load %struct.sparablePartitionMap*, %struct.sparablePartitionMap** %7, align 8
  %42 = getelementptr inbounds %struct.sparablePartitionMap, %struct.sparablePartitionMap* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 4
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.super_block*, %struct.super_block** %5, align 8
  %47 = load %struct.sparablePartitionMap*, %struct.sparablePartitionMap** %7, align 8
  %48 = getelementptr inbounds %struct.sparablePartitionMap, %struct.sparablePartitionMap* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @udf_err(%struct.super_block* %46, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %121

53:                                               ; preds = %40
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %114, %53
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.sparablePartitionMap*, %struct.sparablePartitionMap** %7, align 8
  %57 = getelementptr inbounds %struct.sparablePartitionMap, %struct.sparablePartitionMap* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %117

60:                                               ; preds = %54
  %61 = load %struct.sparablePartitionMap*, %struct.sparablePartitionMap** %7, align 8
  %62 = getelementptr inbounds %struct.sparablePartitionMap, %struct.sparablePartitionMap* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le32_to_cpu(i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load %struct.super_block*, %struct.super_block** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call %struct.buffer_head* @udf_read_tagged(%struct.super_block* %69, i32 %70, i32 %71, i64* %9)
  store %struct.buffer_head* %72, %struct.buffer_head** %13, align 8
  %73 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %74 = icmp ne %struct.buffer_head* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %60
  br label %114

76:                                               ; preds = %60
  %77 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %78 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.sparingTable*
  store %struct.sparingTable* %80, %struct.sparingTable** %10, align 8
  %81 = load i64, i64* %9, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %103, label %83

83:                                               ; preds = %76
  %84 = load %struct.sparingTable*, %struct.sparingTable** %10, align 8
  %85 = getelementptr inbounds %struct.sparingTable, %struct.sparingTable* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @UDF_ID_SPARING, align 4
  %89 = load i32, i32* @UDF_ID_SPARING, align 4
  %90 = call i32 @strlen(i32 %89)
  %91 = call i64 @strncmp(i32 %87, i32 %88, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %83
  %94 = load %struct.sparingTable*, %struct.sparingTable** %10, align 8
  %95 = getelementptr inbounds %struct.sparingTable, %struct.sparingTable* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @le16_to_cpu(i32 %96)
  %98 = add i64 8, %97
  %99 = load %struct.super_block*, %struct.super_block** %5, align 8
  %100 = getelementptr inbounds %struct.super_block, %struct.super_block* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ugt i64 %98, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %93, %83, %76
  %104 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %105 = call i32 @brelse(%struct.buffer_head* %104)
  br label %114

106:                                              ; preds = %93
  %107 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %108 = load %struct.udf_sparing_data*, %struct.udf_sparing_data** %11, align 8
  %109 = getelementptr inbounds %struct.udf_sparing_data, %struct.udf_sparing_data* %108, i32 0, i32 0
  %110 = load %struct.buffer_head**, %struct.buffer_head*** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %110, i64 %112
  store %struct.buffer_head* %107, %struct.buffer_head** %113, align 8
  br label %114

114:                                              ; preds = %106, %103, %75
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %54

117:                                              ; preds = %54
  %118 = load i32, i32* @udf_get_pblock_spar15, align 4
  %119 = load %struct.udf_part_map*, %struct.udf_part_map** %6, align 8
  %120 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %117, %45, %31
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i32 @udf_err(%struct.super_block*, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.buffer_head* @udf_read_tagged(%struct.super_block*, i32, i32, i64*) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

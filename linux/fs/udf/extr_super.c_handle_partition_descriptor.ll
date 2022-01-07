; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_handle_partition_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_handle_partition_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udf_vds_record = type { i32 }
%struct.buffer_head = type { i64 }
%struct.desc_seq_scan_data = type { i32, i32, %struct.part_desc_seq_scan_data* }
%struct.part_desc_seq_scan_data = type { i32, %struct.udf_vds_record }
%struct.partitionDesc = type { i32 }

@PART_DESC_ALLOC_STEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.udf_vds_record* (%struct.buffer_head*, %struct.desc_seq_scan_data*)* @handle_partition_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.udf_vds_record* @handle_partition_descriptor(%struct.buffer_head* %0, %struct.desc_seq_scan_data* %1) #0 {
  %3 = alloca %struct.udf_vds_record*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.desc_seq_scan_data*, align 8
  %6 = alloca %struct.partitionDesc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.part_desc_seq_scan_data*, align 8
  %10 = alloca i32, align 4
  store %struct.buffer_head* %0, %struct.buffer_head** %4, align 8
  store %struct.desc_seq_scan_data* %1, %struct.desc_seq_scan_data** %5, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %12 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.partitionDesc*
  store %struct.partitionDesc* %14, %struct.partitionDesc** %6, align 8
  %15 = load %struct.partitionDesc*, %struct.partitionDesc** %6, align 8
  %16 = getelementptr inbounds %struct.partitionDesc, %struct.partitionDesc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16_to_cpu(i32 %17)
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %45, %2
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.desc_seq_scan_data*, %struct.desc_seq_scan_data** %5, align 8
  %22 = getelementptr inbounds %struct.desc_seq_scan_data, %struct.desc_seq_scan_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.desc_seq_scan_data*, %struct.desc_seq_scan_data** %5, align 8
  %28 = getelementptr inbounds %struct.desc_seq_scan_data, %struct.desc_seq_scan_data* %27, i32 0, i32 2
  %29 = load %struct.part_desc_seq_scan_data*, %struct.part_desc_seq_scan_data** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.part_desc_seq_scan_data, %struct.part_desc_seq_scan_data* %29, i64 %31
  %33 = getelementptr inbounds %struct.part_desc_seq_scan_data, %struct.part_desc_seq_scan_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %26, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %25
  %37 = load %struct.desc_seq_scan_data*, %struct.desc_seq_scan_data** %5, align 8
  %38 = getelementptr inbounds %struct.desc_seq_scan_data, %struct.desc_seq_scan_data* %37, i32 0, i32 2
  %39 = load %struct.part_desc_seq_scan_data*, %struct.part_desc_seq_scan_data** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.part_desc_seq_scan_data, %struct.part_desc_seq_scan_data* %39, i64 %41
  %43 = getelementptr inbounds %struct.part_desc_seq_scan_data, %struct.part_desc_seq_scan_data* %42, i32 0, i32 1
  store %struct.udf_vds_record* %43, %struct.udf_vds_record** %3, align 8
  br label %102

44:                                               ; preds = %25
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %19

48:                                               ; preds = %19
  %49 = load %struct.desc_seq_scan_data*, %struct.desc_seq_scan_data** %5, align 8
  %50 = getelementptr inbounds %struct.desc_seq_scan_data, %struct.desc_seq_scan_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.desc_seq_scan_data*, %struct.desc_seq_scan_data** %5, align 8
  %53 = getelementptr inbounds %struct.desc_seq_scan_data, %struct.desc_seq_scan_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %51, %54
  br i1 %55, label %56, label %91

56:                                               ; preds = %48
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @PART_DESC_ALLOC_STEP, align 4
  %59 = call i32 @ALIGN(i32 %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.part_desc_seq_scan_data* @kcalloc(i32 %60, i32 8, i32 %61)
  store %struct.part_desc_seq_scan_data* %62, %struct.part_desc_seq_scan_data** %9, align 8
  %63 = load %struct.part_desc_seq_scan_data*, %struct.part_desc_seq_scan_data** %9, align 8
  %64 = icmp ne %struct.part_desc_seq_scan_data* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  %68 = call %struct.udf_vds_record* @ERR_PTR(i32 %67)
  store %struct.udf_vds_record* %68, %struct.udf_vds_record** %3, align 8
  br label %102

69:                                               ; preds = %56
  %70 = load %struct.part_desc_seq_scan_data*, %struct.part_desc_seq_scan_data** %9, align 8
  %71 = load %struct.desc_seq_scan_data*, %struct.desc_seq_scan_data** %5, align 8
  %72 = getelementptr inbounds %struct.desc_seq_scan_data, %struct.desc_seq_scan_data* %71, i32 0, i32 2
  %73 = load %struct.part_desc_seq_scan_data*, %struct.part_desc_seq_scan_data** %72, align 8
  %74 = load %struct.desc_seq_scan_data*, %struct.desc_seq_scan_data** %5, align 8
  %75 = getelementptr inbounds %struct.desc_seq_scan_data, %struct.desc_seq_scan_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @memcpy(%struct.part_desc_seq_scan_data* %70, %struct.part_desc_seq_scan_data* %73, i32 %79)
  %81 = load %struct.desc_seq_scan_data*, %struct.desc_seq_scan_data** %5, align 8
  %82 = getelementptr inbounds %struct.desc_seq_scan_data, %struct.desc_seq_scan_data* %81, i32 0, i32 2
  %83 = load %struct.part_desc_seq_scan_data*, %struct.part_desc_seq_scan_data** %82, align 8
  %84 = call i32 @kfree(%struct.part_desc_seq_scan_data* %83)
  %85 = load %struct.part_desc_seq_scan_data*, %struct.part_desc_seq_scan_data** %9, align 8
  %86 = load %struct.desc_seq_scan_data*, %struct.desc_seq_scan_data** %5, align 8
  %87 = getelementptr inbounds %struct.desc_seq_scan_data, %struct.desc_seq_scan_data* %86, i32 0, i32 2
  store %struct.part_desc_seq_scan_data* %85, %struct.part_desc_seq_scan_data** %87, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.desc_seq_scan_data*, %struct.desc_seq_scan_data** %5, align 8
  %90 = getelementptr inbounds %struct.desc_seq_scan_data, %struct.desc_seq_scan_data* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %69, %48
  %92 = load %struct.desc_seq_scan_data*, %struct.desc_seq_scan_data** %5, align 8
  %93 = getelementptr inbounds %struct.desc_seq_scan_data, %struct.desc_seq_scan_data* %92, i32 0, i32 2
  %94 = load %struct.part_desc_seq_scan_data*, %struct.part_desc_seq_scan_data** %93, align 8
  %95 = load %struct.desc_seq_scan_data*, %struct.desc_seq_scan_data** %5, align 8
  %96 = getelementptr inbounds %struct.desc_seq_scan_data, %struct.desc_seq_scan_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds %struct.part_desc_seq_scan_data, %struct.part_desc_seq_scan_data* %94, i64 %99
  %101 = getelementptr inbounds %struct.part_desc_seq_scan_data, %struct.part_desc_seq_scan_data* %100, i32 0, i32 1
  store %struct.udf_vds_record* %101, %struct.udf_vds_record** %3, align 8
  br label %102

102:                                              ; preds = %91, %65, %36
  %103 = load %struct.udf_vds_record*, %struct.udf_vds_record** %3, align 8
  ret %struct.udf_vds_record* %103
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local %struct.part_desc_seq_scan_data* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.udf_vds_record* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(%struct.part_desc_seq_scan_data*, %struct.part_desc_seq_scan_data*, i32) #1

declare dso_local i32 @kfree(%struct.part_desc_seq_scan_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

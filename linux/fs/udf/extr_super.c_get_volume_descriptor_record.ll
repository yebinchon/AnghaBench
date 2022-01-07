; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_get_volume_descriptor_record.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_get_volume_descriptor_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udf_vds_record = type { i32 }
%struct.buffer_head = type { i32 }
%struct.desc_seq_scan_data = type { %struct.udf_vds_record* }

@VDS_POS_PRIMARY_VOL_DESC = common dso_local global i64 0, align 8
@VDS_POS_IMP_USE_VOL_DESC = common dso_local global i64 0, align 8
@VDS_POS_LOGICAL_VOL_DESC = common dso_local global i64 0, align 8
@VDS_POS_UNALLOC_SPACE_DESC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.udf_vds_record* (i32, %struct.buffer_head*, %struct.desc_seq_scan_data*)* @get_volume_descriptor_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.udf_vds_record* @get_volume_descriptor_record(i32 %0, %struct.buffer_head* %1, %struct.desc_seq_scan_data* %2) #0 {
  %4 = alloca %struct.udf_vds_record*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.desc_seq_scan_data*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store %struct.desc_seq_scan_data* %2, %struct.desc_seq_scan_data** %7, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %37 [
    i32 129, label %9
    i32 132, label %15
    i32 131, label %21
    i32 128, label %27
    i32 130, label %33
  ]

9:                                                ; preds = %3
  %10 = load %struct.desc_seq_scan_data*, %struct.desc_seq_scan_data** %7, align 8
  %11 = getelementptr inbounds %struct.desc_seq_scan_data, %struct.desc_seq_scan_data* %10, i32 0, i32 0
  %12 = load %struct.udf_vds_record*, %struct.udf_vds_record** %11, align 8
  %13 = load i64, i64* @VDS_POS_PRIMARY_VOL_DESC, align 8
  %14 = getelementptr inbounds %struct.udf_vds_record, %struct.udf_vds_record* %12, i64 %13
  store %struct.udf_vds_record* %14, %struct.udf_vds_record** %4, align 8
  br label %38

15:                                               ; preds = %3
  %16 = load %struct.desc_seq_scan_data*, %struct.desc_seq_scan_data** %7, align 8
  %17 = getelementptr inbounds %struct.desc_seq_scan_data, %struct.desc_seq_scan_data* %16, i32 0, i32 0
  %18 = load %struct.udf_vds_record*, %struct.udf_vds_record** %17, align 8
  %19 = load i64, i64* @VDS_POS_IMP_USE_VOL_DESC, align 8
  %20 = getelementptr inbounds %struct.udf_vds_record, %struct.udf_vds_record* %18, i64 %19
  store %struct.udf_vds_record* %20, %struct.udf_vds_record** %4, align 8
  br label %38

21:                                               ; preds = %3
  %22 = load %struct.desc_seq_scan_data*, %struct.desc_seq_scan_data** %7, align 8
  %23 = getelementptr inbounds %struct.desc_seq_scan_data, %struct.desc_seq_scan_data* %22, i32 0, i32 0
  %24 = load %struct.udf_vds_record*, %struct.udf_vds_record** %23, align 8
  %25 = load i64, i64* @VDS_POS_LOGICAL_VOL_DESC, align 8
  %26 = getelementptr inbounds %struct.udf_vds_record, %struct.udf_vds_record* %24, i64 %25
  store %struct.udf_vds_record* %26, %struct.udf_vds_record** %4, align 8
  br label %38

27:                                               ; preds = %3
  %28 = load %struct.desc_seq_scan_data*, %struct.desc_seq_scan_data** %7, align 8
  %29 = getelementptr inbounds %struct.desc_seq_scan_data, %struct.desc_seq_scan_data* %28, i32 0, i32 0
  %30 = load %struct.udf_vds_record*, %struct.udf_vds_record** %29, align 8
  %31 = load i64, i64* @VDS_POS_UNALLOC_SPACE_DESC, align 8
  %32 = getelementptr inbounds %struct.udf_vds_record, %struct.udf_vds_record* %30, i64 %31
  store %struct.udf_vds_record* %32, %struct.udf_vds_record** %4, align 8
  br label %38

33:                                               ; preds = %3
  %34 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %35 = load %struct.desc_seq_scan_data*, %struct.desc_seq_scan_data** %7, align 8
  %36 = call %struct.udf_vds_record* @handle_partition_descriptor(%struct.buffer_head* %34, %struct.desc_seq_scan_data* %35)
  store %struct.udf_vds_record* %36, %struct.udf_vds_record** %4, align 8
  br label %38

37:                                               ; preds = %3
  store %struct.udf_vds_record* null, %struct.udf_vds_record** %4, align 8
  br label %38

38:                                               ; preds = %37, %33, %27, %21, %15, %9
  %39 = load %struct.udf_vds_record*, %struct.udf_vds_record** %4, align 8
  ret %struct.udf_vds_record* %39
}

declare dso_local %struct.udf_vds_record* @handle_partition_descriptor(%struct.buffer_head*, %struct.desc_seq_scan_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

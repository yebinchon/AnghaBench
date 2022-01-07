; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_close_lvid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_close_lvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.udf_sb_info = type { i64, i32, i64, %struct.buffer_head* }
%struct.buffer_head = type { i64 }
%struct.logicalVolIntegrityDesc = type { i32 }
%struct.logicalVolIntegrityDescImpUse = type { i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@UDF_OS_CLASS_UNIX = common dso_local global i32 0, align 4
@UDF_OS_ID_LINUX = common dso_local global i32 0, align 4
@UDF_MAX_WRITE_VERSION = common dso_local global i64 0, align 8
@UDF_FLAG_INCONSISTENT = common dso_local global i32 0, align 4
@LVID_INTEGRITY_TYPE_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @udf_close_lvid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_close_lvid(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.udf_sb_info*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.logicalVolIntegrityDesc*, align 8
  %6 = alloca %struct.logicalVolIntegrityDescImpUse*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %7)
  store %struct.udf_sb_info* %8, %struct.udf_sb_info** %3, align 8
  %9 = load %struct.udf_sb_info*, %struct.udf_sb_info** %3, align 8
  %10 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %9, i32 0, i32 3
  %11 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %11, %struct.buffer_head** %4, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %13 = icmp ne %struct.buffer_head* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %108

15:                                               ; preds = %1
  %16 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.logicalVolIntegrityDesc*
  store %struct.logicalVolIntegrityDesc* %19, %struct.logicalVolIntegrityDesc** %5, align 8
  %20 = load %struct.super_block*, %struct.super_block** %2, align 8
  %21 = call %struct.logicalVolIntegrityDescImpUse* @udf_sb_lvidiu(%struct.super_block* %20)
  store %struct.logicalVolIntegrityDescImpUse* %21, %struct.logicalVolIntegrityDescImpUse** %6, align 8
  %22 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %6, align 8
  %23 = icmp ne %struct.logicalVolIntegrityDescImpUse* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %108

25:                                               ; preds = %15
  %26 = load %struct.udf_sb_info*, %struct.udf_sb_info** %3, align 8
  %27 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i32, i32* @UDF_OS_CLASS_UNIX, align 4
  %30 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %6, align 8
  %31 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %29, i32* %34, align 4
  %35 = load i32, i32* @UDF_OS_ID_LINUX, align 4
  %36 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %6, align 8
  %37 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 %35, i32* %40, align 4
  %41 = load i64, i64* @UDF_MAX_WRITE_VERSION, align 8
  %42 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %6, align 8
  %43 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @le16_to_cpu(i8* %44)
  %46 = icmp sgt i64 %41, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %25
  %48 = load i64, i64* @UDF_MAX_WRITE_VERSION, align 8
  %49 = call i8* @cpu_to_le16(i64 %48)
  %50 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %6, align 8
  %51 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %47, %25
  %53 = load %struct.udf_sb_info*, %struct.udf_sb_info** %3, align 8
  %54 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %6, align 8
  %57 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @le16_to_cpu(i8* %58)
  %60 = icmp sgt i64 %55, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load %struct.udf_sb_info*, %struct.udf_sb_info** %3, align 8
  %63 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @cpu_to_le16(i64 %64)
  %66 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %6, align 8
  %67 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %61, %52
  %69 = load %struct.udf_sb_info*, %struct.udf_sb_info** %3, align 8
  %70 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %6, align 8
  %73 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @le16_to_cpu(i8* %74)
  %76 = icmp sgt i64 %71, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %68
  %78 = load %struct.udf_sb_info*, %struct.udf_sb_info** %3, align 8
  %79 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i8* @cpu_to_le16(i64 %80)
  %82 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %6, align 8
  %83 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %77, %68
  %85 = load %struct.super_block*, %struct.super_block** %2, align 8
  %86 = load i32, i32* @UDF_FLAG_INCONSISTENT, align 4
  %87 = call i32 @UDF_QUERY_FLAG(%struct.super_block* %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @LVID_INTEGRITY_TYPE_CLOSE, align 4
  %91 = call i32 @cpu_to_le32(i32 %90)
  %92 = load %struct.logicalVolIntegrityDesc*, %struct.logicalVolIntegrityDesc** %5, align 8
  %93 = getelementptr inbounds %struct.logicalVolIntegrityDesc, %struct.logicalVolIntegrityDesc* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %89, %84
  %95 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %96 = call i32 @set_buffer_uptodate(%struct.buffer_head* %95)
  %97 = load %struct.logicalVolIntegrityDesc*, %struct.logicalVolIntegrityDesc** %5, align 8
  %98 = call i32 @udf_finalize_lvid(%struct.logicalVolIntegrityDesc* %97)
  %99 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %100 = call i32 @mark_buffer_dirty(%struct.buffer_head* %99)
  %101 = load %struct.udf_sb_info*, %struct.udf_sb_info** %3, align 8
  %102 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %101, i32 0, i32 2
  store i64 0, i64* %102, align 8
  %103 = load %struct.udf_sb_info*, %struct.udf_sb_info** %3, align 8
  %104 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %103, i32 0, i32 1
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %107 = call i32 @sync_dirty_buffer(%struct.buffer_head* %106)
  br label %108

108:                                              ; preds = %94, %24, %14
  ret void
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local %struct.logicalVolIntegrityDescImpUse* @udf_sb_lvidiu(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @le16_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @UDF_QUERY_FLAG(%struct.super_block*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @udf_finalize_lvid(%struct.logicalVolIntegrityDesc*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_open_lvid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_open_lvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.udf_sb_info = type { i32, i64, %struct.buffer_head* }
%struct.buffer_head = type { i64 }
%struct.logicalVolIntegrityDesc = type { i32 }
%struct.logicalVolIntegrityDescImpUse = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@UDF_OS_CLASS_UNIX = common dso_local global i32 0, align 4
@UDF_OS_ID_LINUX = common dso_local global i32 0, align 4
@LVID_INTEGRITY_TYPE_CLOSE = common dso_local global i64 0, align 8
@LVID_INTEGRITY_TYPE_OPEN = common dso_local global i32 0, align 4
@UDF_FLAG_INCONSISTENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @udf_open_lvid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_open_lvid(%struct.super_block* %0) #0 {
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
  %10 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %9, i32 0, i32 2
  %11 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %11, %struct.buffer_head** %4, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %13 = icmp ne %struct.buffer_head* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %68

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
  br label %68

25:                                               ; preds = %15
  %26 = load %struct.udf_sb_info*, %struct.udf_sb_info** %3, align 8
  %27 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i32, i32* @UDF_OS_CLASS_UNIX, align 4
  %30 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %6, align 8
  %31 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %29, i32* %34, align 4
  %35 = load i32, i32* @UDF_OS_ID_LINUX, align 4
  %36 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %6, align 8
  %37 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 %35, i32* %40, align 4
  %41 = load %struct.logicalVolIntegrityDesc*, %struct.logicalVolIntegrityDesc** %5, align 8
  %42 = getelementptr inbounds %struct.logicalVolIntegrityDesc, %struct.logicalVolIntegrityDesc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @le32_to_cpu(i32 %43)
  %45 = load i64, i64* @LVID_INTEGRITY_TYPE_CLOSE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %25
  %48 = load i32, i32* @LVID_INTEGRITY_TYPE_OPEN, align 4
  %49 = call i32 @cpu_to_le32(i32 %48)
  %50 = load %struct.logicalVolIntegrityDesc*, %struct.logicalVolIntegrityDesc** %5, align 8
  %51 = getelementptr inbounds %struct.logicalVolIntegrityDesc, %struct.logicalVolIntegrityDesc* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %56

52:                                               ; preds = %25
  %53 = load %struct.super_block*, %struct.super_block** %2, align 8
  %54 = load i32, i32* @UDF_FLAG_INCONSISTENT, align 4
  %55 = call i32 @UDF_SET_FLAG(%struct.super_block* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.logicalVolIntegrityDesc*, %struct.logicalVolIntegrityDesc** %5, align 8
  %58 = call i32 @udf_finalize_lvid(%struct.logicalVolIntegrityDesc* %57)
  %59 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %60 = call i32 @mark_buffer_dirty(%struct.buffer_head* %59)
  %61 = load %struct.udf_sb_info*, %struct.udf_sb_info** %3, align 8
  %62 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.udf_sb_info*, %struct.udf_sb_info** %3, align 8
  %64 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %67 = call i32 @sync_dirty_buffer(%struct.buffer_head* %66)
  br label %68

68:                                               ; preds = %56, %24, %14
  ret void
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local %struct.logicalVolIntegrityDescImpUse* @udf_sb_lvidiu(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @UDF_SET_FLAG(%struct.super_block*, i32) #1

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

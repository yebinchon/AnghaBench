; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_load_logicalvolint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_load_logicalvolint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64 }
%struct.kernel_extent_ad = type { i64, i32 }
%struct.buffer_head = type { i64 }
%struct.udf_sb_info = type { %struct.buffer_head* }
%struct.logicalVolIntegrityDesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@UDF_MAX_LVID_NESTING = common dso_local global i32 0, align 4
@TAG_IDENT_LVID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Too many LVID indirections (max %u), ignoring.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i64, i32)* @udf_load_logicalvolint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_load_logicalvolint(%struct.super_block* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.kernel_extent_ad, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.udf_sb_info*, align 8
  %10 = alloca %struct.logicalVolIntegrityDesc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kernel_extent_ad, align 8
  %13 = bitcast %struct.kernel_extent_ad* %4 to { i64, i32 }*
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  store i64 %1, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  store i32 %2, i32* %15, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %16)
  store %struct.udf_sb_info* %17, %struct.udf_sb_info** %9, align 8
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %80, %3
  %19 = load i32, i32* %11, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* @UDF_MAX_LVID_NESTING, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %93

23:                                               ; preds = %18
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  br label %24

24:                                               ; preds = %45, %23
  %25 = getelementptr inbounds %struct.kernel_extent_ad, %struct.kernel_extent_ad* %4, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = getelementptr inbounds %struct.kernel_extent_ad, %struct.kernel_extent_ad* %4, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.kernel_extent_ad, %struct.kernel_extent_ad* %4, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.buffer_head* @udf_read_tagged(%struct.super_block* %29, i32 %31, i32 %33, i64* %8)
  store %struct.buffer_head* %34, %struct.buffer_head** %6, align 8
  %35 = icmp ne %struct.buffer_head* %34, null
  br label %36

36:                                               ; preds = %28, %24
  %37 = phi i1 [ false, %24 ], [ %35, %28 ]
  br i1 %37, label %38, label %58

38:                                               ; preds = %36
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @TAG_IDENT_LVID, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %44 = call i32 @brelse(%struct.buffer_head* %43)
  br label %58

45:                                               ; preds = %38
  %46 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %47 = call i32 @brelse(%struct.buffer_head* %46)
  %48 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %48, %struct.buffer_head** %7, align 8
  %49 = load %struct.super_block*, %struct.super_block** %5, align 8
  %50 = getelementptr inbounds %struct.super_block, %struct.super_block* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.kernel_extent_ad, %struct.kernel_extent_ad* %4, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, %51
  store i64 %54, i64* %52, align 8
  %55 = getelementptr inbounds %struct.kernel_extent_ad, %struct.kernel_extent_ad* %4, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  br label %24

58:                                               ; preds = %42, %36
  %59 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %60 = icmp ne %struct.buffer_head* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  br label %103

62:                                               ; preds = %58
  %63 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %64 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %63, i32 0, i32 0
  %65 = load %struct.buffer_head*, %struct.buffer_head** %64, align 8
  %66 = call i32 @brelse(%struct.buffer_head* %65)
  %67 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %68 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %69 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %68, i32 0, i32 0
  store %struct.buffer_head* %67, %struct.buffer_head** %69, align 8
  %70 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %71 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.logicalVolIntegrityDesc*
  store %struct.logicalVolIntegrityDesc* %73, %struct.logicalVolIntegrityDesc** %10, align 8
  %74 = load %struct.logicalVolIntegrityDesc*, %struct.logicalVolIntegrityDesc** %10, align 8
  %75 = getelementptr inbounds %struct.logicalVolIntegrityDesc, %struct.logicalVolIntegrityDesc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %62
  br label %103

80:                                               ; preds = %62
  %81 = load %struct.logicalVolIntegrityDesc*, %struct.logicalVolIntegrityDesc** %10, align 8
  %82 = getelementptr inbounds %struct.logicalVolIntegrityDesc, %struct.logicalVolIntegrityDesc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call { i64, i32 } @leea_to_cpu(i64 %84)
  %86 = bitcast %struct.kernel_extent_ad* %12 to { i64, i32 }*
  %87 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %86, i32 0, i32 0
  %88 = extractvalue { i64, i32 } %85, 0
  store i64 %88, i64* %87, align 8
  %89 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %86, i32 0, i32 1
  %90 = extractvalue { i64, i32 } %85, 1
  store i32 %90, i32* %89, align 8
  %91 = bitcast %struct.kernel_extent_ad* %4 to i8*
  %92 = bitcast %struct.kernel_extent_ad* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 16, i1 false)
  br label %18

93:                                               ; preds = %18
  %94 = load %struct.super_block*, %struct.super_block** %5, align 8
  %95 = load i32, i32* @UDF_MAX_LVID_NESTING, align 4
  %96 = call i32 @udf_warn(%struct.super_block* %94, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %98 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %97, i32 0, i32 0
  %99 = load %struct.buffer_head*, %struct.buffer_head** %98, align 8
  %100 = call i32 @brelse(%struct.buffer_head* %99)
  %101 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %102 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %101, i32 0, i32 0
  store %struct.buffer_head* null, %struct.buffer_head** %102, align 8
  br label %103

103:                                              ; preds = %93, %79, %61
  ret void
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @udf_read_tagged(%struct.super_block*, i32, i32, i64*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local { i64, i32 } @leea_to_cpu(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @udf_warn(%struct.super_block*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

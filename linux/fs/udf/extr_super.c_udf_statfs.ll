; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.kstatfs = type { %struct.TYPE_6__, i32, i64, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i8** }
%struct.udf_sb_info = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.logicalVolIntegrityDescImpUse = type { i32, i32 }

@UDF_SUPER_MAGIC = common dso_local global i32 0, align 4
@UDF_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @udf_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.udf_sb_info*, align 8
  %7 = alloca %struct.logicalVolIntegrityDescImpUse*, align 8
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %5, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %12)
  store %struct.udf_sb_info* %13, %struct.udf_sb_info** %6, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @huge_encode_dev(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = call %struct.logicalVolIntegrityDescImpUse* @udf_sb_lvidiu(%struct.super_block* %20)
  store %struct.logicalVolIntegrityDescImpUse* %21, %struct.logicalVolIntegrityDescImpUse** %7, align 8
  %22 = load i32, i32* @UDF_SUPER_MAGIC, align 4
  %23 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %24 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 8
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %29 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 4
  %30 = load %struct.udf_sb_info*, %struct.udf_sb_info** %6, align 8
  %31 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load %struct.udf_sb_info*, %struct.udf_sb_info** %6, align 8
  %34 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %40 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load %struct.super_block*, %struct.super_block** %5, align 8
  %42 = call i64 @udf_count_free(%struct.super_block* %41)
  %43 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %44 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %46 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %49 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %48, i32 0, i32 5
  store i64 %47, i64* %49, align 8
  %50 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %7, align 8
  %51 = icmp ne %struct.logicalVolIntegrityDescImpUse* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %2
  %53 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %7, align 8
  %54 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @le32_to_cpu(i32 %55)
  %57 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %7, align 8
  %58 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @le32_to_cpu(i32 %59)
  %61 = add nsw i64 %56, %60
  br label %63

62:                                               ; preds = %2
  br label %63

63:                                               ; preds = %62, %52
  %64 = phi i64 [ %61, %52 ], [ 0, %62 ]
  %65 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %66 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %70 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %69, i32 0, i32 4
  store i64 %68, i64* %70, align 8
  %71 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %72 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %75 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %74, i32 0, i32 3
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* @UDF_NAME_LEN, align 4
  %77 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %78 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %83 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i8**, i8*** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  store i8* %81, i8** %86, align 8
  %87 = load i32, i32* %8, align 4
  %88 = ashr i32 %87, 32
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %92 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i8**, i8*** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 1
  store i8* %90, i8** %95, align 8
  ret i32 0
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @huge_encode_dev(i32) #1

declare dso_local %struct.logicalVolIntegrityDescImpUse* @udf_sb_lvidiu(%struct.super_block*) #1

declare dso_local i64 @udf_count_free(%struct.super_block*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_catalog.c_hfsplus_find_cat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_catalog.c_hfsplus_find_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hfs_find_data = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@HFSPLUS_FOLDER_THREAD = common dso_local global i64 0, align 8
@HFSPLUS_FILE_THREAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"found bad thread record in catalog\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"catalog name length corrupted\0A\00", align 1
@hfs_find_rec_by_key = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_find_cat(%struct.super_block* %0, i32 %1, %struct.hfs_find_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfs_find_data*, align 8
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hfs_find_data* %2, %struct.hfs_find_data** %7, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %13 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @hfsplus_cat_build_key_with_cnid(%struct.super_block* %11, i32 %14, i32 %15)
  %17 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %18 = call i32 @hfs_brec_read(%struct.hfs_find_data* %17, %struct.TYPE_6__* %8, i32 12)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %64

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @be16_to_cpu(i32 %25)
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @HFSPLUS_FOLDER_THREAD, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @HFSPLUS_FILE_THREAD, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %64

39:                                               ; preds = %31, %23
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be16_to_cpu(i32 %43)
  %45 = icmp sgt i32 %44, 255
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %64

50:                                               ; preds = %39
  %51 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %52 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @be32_to_cpu(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = call i32 @hfsplus_cat_build_key_uni(i32 %53, i32 %57, %struct.TYPE_7__* %59)
  %61 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %62 = load i32, i32* @hfs_find_rec_by_key, align 4
  %63 = call i32 @hfs_brec_find(%struct.hfs_find_data* %61, i32 %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %50, %46, %35, %21
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @hfsplus_cat_build_key_with_cnid(%struct.super_block*, i32, i32) #1

declare dso_local i32 @hfs_brec_read(%struct.hfs_find_data*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @hfsplus_cat_build_key_uni(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @hfs_brec_find(%struct.hfs_find_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

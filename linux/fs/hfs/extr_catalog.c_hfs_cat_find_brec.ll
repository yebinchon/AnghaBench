; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_catalog.c_hfs_cat_find_brec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_catalog.c_hfs_cat_find_brec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hfs_find_data = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@HFS_CDR_THD = common dso_local global i32 0, align 4
@HFS_CDR_FTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"found bad thread record in catalog\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@HFS_NAMELEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"bad catalog namelength\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_cat_find_brec(%struct.super_block* %0, i32 %1, %struct.hfs_find_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfs_find_data*, align 8
  %8 = alloca %struct.TYPE_12__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hfs_find_data* %2, %struct.hfs_find_data** %7, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %14 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @hfs_cat_build_key(%struct.super_block* %12, %struct.TYPE_13__* %15, i32 %16, i32* null)
  %18 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %19 = call i32 @hfs_brec_read(%struct.hfs_find_data* %18, %struct.TYPE_12__* %8, i32 16)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %80

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @HFS_CDR_THD, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @HFS_CDR_FTH, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %80

38:                                               ; preds = %30, %24
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %43 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  store i32 %41, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %52 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 %50, i32* %56, align 4
  store i32 %50, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @HFS_NAMELEN, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %38
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %80

64:                                               ; preds = %38
  %65 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %66 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %65, i32 0, i32 0
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @memcpy(i32 %71, i32 %75, i32 %76)
  %78 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %79 = call i32 @hfs_brec_find(%struct.hfs_find_data* %78)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %64, %60, %34, %22
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @hfs_cat_build_key(%struct.super_block*, %struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @hfs_brec_read(%struct.hfs_find_data*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @hfs_brec_find(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

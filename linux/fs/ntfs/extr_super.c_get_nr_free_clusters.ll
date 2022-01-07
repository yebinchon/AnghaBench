; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_super.c_get_nr_free_clusters.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_super.c_get_nr_free_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"Entering.\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Reading $Bitmap, max_index = 0x%lx, max_size = 0x%lx.\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"read_mapping_page() error. Skipping page (index 0x%lx).\00", align 1
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Finished reading $Bitmap, last index = 0x%lx.\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Exiting.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*)* @get_nr_free_clusters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_nr_free_clusters(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.address_space*, %struct.address_space** %15, align 8
  store %struct.address_space* %16, %struct.address_space** %4, align 8
  %17 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = call i32 @down_read(i32* %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 7
  %25 = ashr i64 %24, 3
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = sub nsw i64 %28, 1
  %30 = load i32, i32* @PAGE_SHIFT, align 4
  %31 = zext i32 %30 to i64
  %32 = ashr i64 %29, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = sdiv i32 %35, 4
  %37 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %36)
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %71, %1
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %38
  %43 = load %struct.address_space*, %struct.address_space** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call %struct.page* @read_mapping_page(%struct.address_space* %43, i32 %44, i32* null)
  store %struct.page* %45, %struct.page** %5, align 8
  %46 = load %struct.page*, %struct.page** %5, align 8
  %47 = call i64 @IS_ERR(%struct.page* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  %51 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = mul nsw i32 %52, 8
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %3, align 8
  %56 = sub nsw i64 %55, %54
  store i64 %56, i64* %3, align 8
  br label %71

57:                                               ; preds = %42
  %58 = load %struct.page*, %struct.page** %5, align 8
  %59 = call i64* @kmap_atomic(%struct.page* %58)
  store i64* %59, i64** %8, align 8
  %60 = load i64*, i64** %8, align 8
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = load i32, i32* @BITS_PER_BYTE, align 4
  %63 = mul nsw i32 %61, %62
  %64 = call i64 @bitmap_weight(i64* %60, i32 %63)
  %65 = load i64, i64* %3, align 8
  %66 = sub nsw i64 %65, %64
  store i64 %66, i64* %3, align 8
  %67 = load i64*, i64** %8, align 8
  %68 = call i32 @kunmap_atomic(i64* %67)
  %69 = load %struct.page*, %struct.page** %5, align 8
  %70 = call i32 @put_page(%struct.page* %69)
  br label %71

71:                                               ; preds = %57, %49
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %38

74:                                               ; preds = %38
  %75 = load i32, i32* %6, align 4
  %76 = sub nsw i32 %75, 1
  %77 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = and i64 %80, 63
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %74
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = and i64 %86, 63
  %88 = sub nsw i64 64, %87
  %89 = load i64, i64* %3, align 8
  %90 = add nsw i64 %89, %88
  store i64 %90, i64* %3, align 8
  br label %91

91:                                               ; preds = %83, %74
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = call i32 @up_read(i32* %93)
  %95 = load i64, i64* %3, align 8
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i64 0, i64* %3, align 8
  br label %98

98:                                               ; preds = %97, %91
  %99 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %100 = load i64, i64* %3, align 8
  ret i64 %100
}

declare dso_local i32 @ntfs_debug(i8*, ...) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.page* @read_mapping_page(%struct.address_space*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i64* @kmap_atomic(%struct.page*) #1

declare dso_local i64 @bitmap_weight(i64*, i32) #1

declare dso_local i32 @kunmap_atomic(i64*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nfit_test_search_spa.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nfit_test_search_spa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_bus = type { i32 }
%struct.nd_cmd_translate_spa = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.nd_region = type { i32, %struct.nd_mapping*, i64 }
%struct.nd_mapping = type { %struct.nvdimm* }
%struct.nvdimm = type { i64 }
%struct.region_search_spa = type { i64, %struct.nd_region* }

@nfit_test_search_region_spa = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@handle = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvdimm_bus*, %struct.nd_cmd_translate_spa*)* @nfit_test_search_spa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfit_test_search_spa(%struct.nvdimm_bus* %0, %struct.nd_cmd_translate_spa* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvdimm_bus*, align 8
  %5 = alloca %struct.nd_cmd_translate_spa*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nd_region*, align 8
  %8 = alloca %struct.nvdimm*, align 8
  %9 = alloca %struct.nd_mapping*, align 8
  %10 = alloca %struct.region_search_spa, align 8
  %11 = alloca i64, align 8
  store %struct.nvdimm_bus* %0, %struct.nvdimm_bus** %4, align 8
  store %struct.nd_cmd_translate_spa* %1, %struct.nd_cmd_translate_spa** %5, align 8
  store %struct.nd_region* null, %struct.nd_region** %7, align 8
  store %struct.nvdimm* null, %struct.nvdimm** %8, align 8
  store %struct.nd_mapping* null, %struct.nd_mapping** %9, align 8
  %12 = getelementptr inbounds %struct.region_search_spa, %struct.region_search_spa* %10, i32 0, i32 0
  %13 = load %struct.nd_cmd_translate_spa*, %struct.nd_cmd_translate_spa** %5, align 8
  %14 = getelementptr inbounds %struct.nd_cmd_translate_spa, %struct.nd_cmd_translate_spa* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %12, align 8
  %16 = getelementptr inbounds %struct.region_search_spa, %struct.region_search_spa* %10, i32 0, i32 1
  store %struct.nd_region* null, %struct.nd_region** %16, align 8
  %17 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %4, align 8
  %18 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %17, i32 0, i32 0
  %19 = load i32, i32* @nfit_test_search_region_spa, align 4
  %20 = call i32 @device_for_each_child(i32* %18, %struct.region_search_spa* %10, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %66

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.region_search_spa, %struct.region_search_spa* %10, i32 0, i32 1
  %28 = load %struct.nd_region*, %struct.nd_region** %27, align 8
  store %struct.nd_region* %28, %struct.nd_region** %7, align 8
  %29 = getelementptr inbounds %struct.region_search_spa, %struct.region_search_spa* %10, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %32 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  store i64 %34, i64* %11, align 8
  %35 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %36 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %35, i32 0, i32 1
  %37 = load %struct.nd_mapping*, %struct.nd_mapping** %36, align 8
  %38 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %39 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %37, i64 %42
  store %struct.nd_mapping* %43, %struct.nd_mapping** %9, align 8
  %44 = load %struct.nd_mapping*, %struct.nd_mapping** %9, align 8
  %45 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %44, i32 0, i32 0
  %46 = load %struct.nvdimm*, %struct.nvdimm** %45, align 8
  store %struct.nvdimm* %46, %struct.nvdimm** %8, align 8
  %47 = load i32*, i32** @handle, align 8
  %48 = load %struct.nvdimm*, %struct.nvdimm** %8, align 8
  %49 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nd_cmd_translate_spa*, %struct.nd_cmd_translate_spa** %5, align 8
  %54 = getelementptr inbounds %struct.nd_cmd_translate_spa, %struct.nd_cmd_translate_spa* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32 %52, i32* %57, align 8
  %58 = load %struct.nd_cmd_translate_spa*, %struct.nd_cmd_translate_spa** %5, align 8
  %59 = getelementptr inbounds %struct.nd_cmd_translate_spa, %struct.nd_cmd_translate_spa* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.nd_cmd_translate_spa*, %struct.nd_cmd_translate_spa** %5, align 8
  %62 = getelementptr inbounds %struct.nd_cmd_translate_spa, %struct.nd_cmd_translate_spa* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i64 %60, i64* %65, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %26, %23
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @device_for_each_child(i32*, %struct.region_search_spa*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

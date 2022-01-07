; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_subsys_create_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_subsys_create_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.hpi_response = type { i64, %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i64 }
%struct.hpi_adapter_obj = type { i32, i32, %struct.hpi_hw_obj*, i32 }
%struct.hpi_hw_obj = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.hpi_adapter_obj* }

@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"subsys_create_adapter\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"can't get mem for adapter object\0A\00", align 1
@HPI_ERROR_MEMORY_ALLOC = common dso_local global i64 0, align 8
@HPI_ERROR_BACKEND_BASE = common dso_local global i64 0, align 8
@HPI_ERROR_DSP_BOOTLOAD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"lost adapter after boot\0A\00", align 1
@HPI_ERROR_BAD_ADAPTER = common dso_local global i64 0, align 8
@MAX_DSPS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_message*, %struct.hpi_response*)* @subsys_create_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subsys_create_adapter(%struct.hpi_message* %0, %struct.hpi_response* %1) #0 {
  %3 = alloca %struct.hpi_message*, align 8
  %4 = alloca %struct.hpi_response*, align 8
  %5 = alloca %struct.hpi_adapter_obj, align 8
  %6 = alloca %struct.hpi_adapter_obj*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hpi_hw_obj*, align 8
  store %struct.hpi_message* %0, %struct.hpi_message** %3, align 8
  store %struct.hpi_response* %1, %struct.hpi_response** %4, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load i32, i32* @VERBOSE, align 4
  %12 = call i32 @HPI_DEBUG_LOG(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @memset(%struct.hpi_adapter_obj* %5, i32 0, i32 24)
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.hpi_hw_obj* @kzalloc(i32 8, i32 %14)
  %16 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %5, i32 0, i32 2
  store %struct.hpi_hw_obj* %15, %struct.hpi_hw_obj** %16, align 8
  %17 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %5, i32 0, i32 2
  %18 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %17, align 8
  %19 = icmp ne %struct.hpi_hw_obj* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ERROR, align 4
  %22 = call i32 @HPI_DEBUG_LOG(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i64, i64* @HPI_ERROR_MEMORY_ALLOC, align 8
  %24 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %25 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %107

26:                                               ; preds = %2
  %27 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %28 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %5, i32 0, i32 3
  store i32 %34, i32* %35, align 8
  %36 = call i64 @create_adapter_obj(%struct.hpi_adapter_obj* %5, i64* %7)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %26
  %40 = call i32 @delete_adapter_obj(%struct.hpi_adapter_obj* %5)
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @HPI_ERROR_BACKEND_BASE, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i64, i64* @HPI_ERROR_DSP_BOOTLOAD, align 8
  %46 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %47 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %50 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  br label %55

51:                                               ; preds = %39
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %54 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %51, %44
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %58 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  store i64 %56, i64* %60, align 8
  br label %107

61:                                               ; preds = %26
  %62 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %5, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.hpi_adapter_obj* @hpi_find_adapter(i32 %63)
  store %struct.hpi_adapter_obj* %64, %struct.hpi_adapter_obj** %6, align 8
  %65 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %66 = icmp ne %struct.hpi_adapter_obj* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* @ERROR, align 4
  %69 = call i32 @HPI_DEBUG_LOG(i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i64, i64* @HPI_ERROR_BAD_ADAPTER, align 8
  %71 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %72 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %107

73:                                               ; preds = %61
  store i64 0, i64* %9, align 8
  br label %74

74:                                               ; preds = %89, %73
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* @MAX_DSPS, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %80 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %79, i32 0, i32 2
  %81 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %80, align 8
  store %struct.hpi_hw_obj* %81, %struct.hpi_hw_obj** %10, align 8
  %82 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %83 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %10, align 8
  %84 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %83, i32 0, i32 0
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = load i64, i64* %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  store %struct.hpi_adapter_obj* %82, %struct.hpi_adapter_obj** %88, align 8
  br label %89

89:                                               ; preds = %78
  %90 = load i64, i64* %9, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %9, align 8
  br label %74

92:                                               ; preds = %74
  %93 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %5, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %96 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  store i32 %94, i32* %98, align 4
  %99 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %5, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %102 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 8
  %105 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %106 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %92, %67, %55, %20
  ret void
}

declare dso_local i32 @HPI_DEBUG_LOG(i32, i8*) #1

declare dso_local i32 @memset(%struct.hpi_adapter_obj*, i32, i32) #1

declare dso_local %struct.hpi_hw_obj* @kzalloc(i32, i32) #1

declare dso_local i64 @create_adapter_obj(%struct.hpi_adapter_obj*, i64*) #1

declare dso_local i32 @delete_adapter_obj(%struct.hpi_adapter_obj*) #1

declare dso_local %struct.hpi_adapter_obj* @hpi_find_adapter(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

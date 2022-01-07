; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_subsys_create_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_subsys_create_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.hpi_response = type { i64, %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.hpi_adapter_obj = type { i32, i32, i32, i32 }

@DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c" subsys_create_adapter\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"can't get mem for adapter object\0A\00", align 1
@HPI_ERROR_MEMORY_ALLOC = common dso_local global i64 0, align 8
@HPI_ERROR_BACKEND_BASE = common dso_local global i64 0, align 8
@HPI_ERROR_DSP_BOOTLOAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_message*, %struct.hpi_response*)* @subsys_create_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subsys_create_adapter(%struct.hpi_message* %0, %struct.hpi_response* %1) #0 {
  %3 = alloca %struct.hpi_message*, align 8
  %4 = alloca %struct.hpi_response*, align 8
  %5 = alloca %struct.hpi_adapter_obj, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.hpi_message* %0, %struct.hpi_message** %3, align 8
  store %struct.hpi_response* %1, %struct.hpi_response** %4, align 8
  %8 = load i32, i32* @DEBUG, align 4
  %9 = call i32 @HPI_DEBUG_LOG(i32 %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @memset(%struct.hpi_adapter_obj* %5, i32 0, i32 16)
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32 @kzalloc(i32 4, i32 %11)
  %13 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %5, i32 0, i32 3
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %5, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ERROR, align 4
  %19 = call i32 @HPI_DEBUG_LOG(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i64, i64* @HPI_ERROR_MEMORY_ALLOC, align 8
  %21 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %22 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %73

23:                                               ; preds = %2
  %24 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %25 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %5, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = call i64 @create_adapter_obj(%struct.hpi_adapter_obj* %5, i32* %6)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %23
  %37 = call i32 @delete_adapter_obj(%struct.hpi_adapter_obj* %5)
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @HPI_ERROR_BACKEND_BASE, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i64, i64* @HPI_ERROR_DSP_BOOTLOAD, align 8
  %43 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %44 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %47 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  br label %52

48:                                               ; preds = %36
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %51 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %41
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %55 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  store i32 %53, i32* %57, align 8
  br label %73

58:                                               ; preds = %23
  %59 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %5, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %62 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  store i32 %60, i32* %64, align 4
  %65 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %5, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %68 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 8
  %71 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %72 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %58, %52, %17
  ret void
}

declare dso_local i32 @HPI_DEBUG_LOG(i32, i8*) #1

declare dso_local i32 @memset(%struct.hpi_adapter_obj*, i32, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i64 @create_adapter_obj(%struct.hpi_adapter_obj*, i32*) #1

declare dso_local i32 @delete_adapter_obj(%struct.hpi_adapter_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

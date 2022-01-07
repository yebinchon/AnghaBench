; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c__HPI_6205.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c__HPI_6205.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { i32 }
%struct.hpi_message = type { i64, i32, i32 }
%struct.hpi_response = type { i32 }

@HPI_ADAPTER_DEBUG_READ = common dso_local global i64 0, align 8
@HPI_ERROR_DSP_HARDWARE = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c" %d,%d dsp crashed.\0A\00", align 1
@HPI_SUBSYS_CREATE_ADAPTER = common dso_local global i64 0, align 8
@HPI_ERROR_PROCESSING_MESSAGE = common dso_local global i32 0, align 4
@VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"start of switch\0A\00", align 1
@HPI_ERROR_INVALID_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*)* @_HPI_6205 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_HPI_6205(%struct.hpi_adapter_obj* %0, %struct.hpi_message* %1, %struct.hpi_response* %2) #0 {
  %4 = alloca %struct.hpi_adapter_obj*, align 8
  %5 = alloca %struct.hpi_message*, align 8
  %6 = alloca %struct.hpi_response*, align 8
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %4, align 8
  store %struct.hpi_message* %1, %struct.hpi_message** %5, align 8
  store %struct.hpi_response* %2, %struct.hpi_response** %6, align 8
  %7 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %8 = icmp ne %struct.hpi_adapter_obj* %7, null
  br i1 %8, label %9, label %38

9:                                                ; preds = %3
  %10 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %11 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %12, 10
  br i1 %13, label %14, label %38

14:                                               ; preds = %9
  %15 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %16 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HPI_ADAPTER_DEBUG_READ, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %22 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %23 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %26 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @HPI_ERROR_DSP_HARDWARE, align 4
  %29 = call i32 @hpi_init_response(%struct.hpi_response* %21, i32 %24, i64 %27, i32 %28)
  %30 = load i32, i32* @WARNING, align 4
  %31 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %32 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %35 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i32, i8*, ...) @HPI_DEBUG_LOG(i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %33, i64 %36)
  br label %93

38:                                               ; preds = %14, %9, %3
  %39 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %40 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @HPI_SUBSYS_CREATE_ADAPTER, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @HPI_ERROR_PROCESSING_MESSAGE, align 4
  %46 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %47 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %38
  %49 = load i32, i32* @VERBOSE, align 4
  %50 = call i32 (i32, i8*, ...) @HPI_DEBUG_LOG(i32 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %52 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %89 [
    i32 128, label %54
  ]

54:                                               ; preds = %48
  %55 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %56 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %83 [
    i32 129, label %58
    i32 133, label %63
    i32 132, label %68
    i32 130, label %73
    i32 131, label %78
  ]

58:                                               ; preds = %54
  %59 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %60 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %61 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %62 = call i32 @subsys_message(%struct.hpi_adapter_obj* %59, %struct.hpi_message* %60, %struct.hpi_response* %61)
  br label %88

63:                                               ; preds = %54
  %64 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %65 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %66 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %67 = call i32 @adapter_message(%struct.hpi_adapter_obj* %64, %struct.hpi_message* %65, %struct.hpi_response* %66)
  br label %88

68:                                               ; preds = %54
  %69 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %70 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %71 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %72 = call i32 @control_message(%struct.hpi_adapter_obj* %69, %struct.hpi_message* %70, %struct.hpi_response* %71)
  br label %88

73:                                               ; preds = %54
  %74 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %75 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %76 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %77 = call i32 @outstream_message(%struct.hpi_adapter_obj* %74, %struct.hpi_message* %75, %struct.hpi_response* %76)
  br label %88

78:                                               ; preds = %54
  %79 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %80 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %81 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %82 = call i32 @instream_message(%struct.hpi_adapter_obj* %79, %struct.hpi_message* %80, %struct.hpi_response* %81)
  br label %88

83:                                               ; preds = %54
  %84 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %85 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %86 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %87 = call i32 @hw_message(%struct.hpi_adapter_obj* %84, %struct.hpi_message* %85, %struct.hpi_response* %86)
  br label %88

88:                                               ; preds = %83, %78, %73, %68, %63, %58
  br label %93

89:                                               ; preds = %48
  %90 = load i32, i32* @HPI_ERROR_INVALID_TYPE, align 4
  %91 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %92 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %20, %89, %88
  ret void
}

declare dso_local i32 @hpi_init_response(%struct.hpi_response*, i32, i64, i32) #1

declare dso_local i32 @HPI_DEBUG_LOG(i32, i8*, ...) #1

declare dso_local i32 @subsys_message(%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @adapter_message(%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @control_message(%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @outstream_message(%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @instream_message(%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @hw_message(%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

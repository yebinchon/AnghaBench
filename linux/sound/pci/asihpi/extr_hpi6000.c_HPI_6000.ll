; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_HPI_6000.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_HPI_6000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { i64, i64, i32, i32 }
%struct.hpi_response = type { i32, i32 }
%struct.hpi_adapter_obj = type { i32 }

@HPI_ERROR_BAD_ADAPTER_NUMBER = common dso_local global i32 0, align 4
@DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid adapter index: %d \0A\00", align 1
@HPI_ERROR_DSP_HARDWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"adapter %d dsp crashed\0A\00", align 1
@HPI_SUBSYS_CREATE_ADAPTER = common dso_local global i64 0, align 8
@HPI_ERROR_PROCESSING_MESSAGE = common dso_local global i32 0, align 4
@HPI_ERROR_INVALID_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HPI_6000(%struct.hpi_message* %0, %struct.hpi_response* %1) #0 {
  %3 = alloca %struct.hpi_message*, align 8
  %4 = alloca %struct.hpi_response*, align 8
  %5 = alloca %struct.hpi_adapter_obj*, align 8
  store %struct.hpi_message* %0, %struct.hpi_message** %3, align 8
  store %struct.hpi_response* %1, %struct.hpi_response** %4, align 8
  store %struct.hpi_adapter_obj* null, %struct.hpi_adapter_obj** %5, align 8
  %6 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %7 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 129
  br i1 %9, label %10, label %53

10:                                               ; preds = %2
  %11 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %12 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.hpi_adapter_obj* @hpi_find_adapter(i32 %13)
  store %struct.hpi_adapter_obj* %14, %struct.hpi_adapter_obj** %5, align 8
  %15 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %5, align 8
  %16 = icmp ne %struct.hpi_adapter_obj* %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %10
  %18 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %19 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %20 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %23 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @HPI_ERROR_BAD_ADAPTER_NUMBER, align 4
  %26 = call i32 @hpi_init_response(%struct.hpi_response* %18, i64 %21, i64 %24, i32 %25)
  %27 = load i32, i32* @DEBUG, align 4
  %28 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %29 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @HPI_DEBUG_LOG(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %113

32:                                               ; preds = %10
  %33 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %5, align 8
  %34 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %35, 10
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %39 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %40 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %43 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @HPI_ERROR_DSP_HARDWARE, align 4
  %46 = call i32 @hpi_init_response(%struct.hpi_response* %38, i64 %41, i64 %44, i32 %45)
  %47 = load i32, i32* @DEBUG, align 4
  %48 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %49 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @HPI_DEBUG_LOG(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %113

52:                                               ; preds = %32
  br label %53

53:                                               ; preds = %52, %2
  %54 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %55 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @HPI_SUBSYS_CREATE_ADAPTER, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %61 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %62 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %65 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @HPI_ERROR_PROCESSING_MESSAGE, align 4
  %68 = call i32 @hpi_init_response(%struct.hpi_response* %60, i64 %63, i64 %66, i32 %67)
  br label %69

69:                                               ; preds = %59, %53
  %70 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %71 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  switch i32 %72, label %109 [
    i32 128, label %73
  ]

73:                                               ; preds = %69
  %74 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %75 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  switch i64 %76, label %103 [
    i64 129, label %77
    i64 133, label %81
    i64 132, label %88
    i64 130, label %93
    i64 131, label %98
  ]

77:                                               ; preds = %73
  %78 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %79 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %80 = call i32 @subsys_message(%struct.hpi_message* %78, %struct.hpi_response* %79)
  br label %108

81:                                               ; preds = %73
  %82 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %83 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %82, i32 0, i32 0
  store i32 8, i32* %83, align 4
  %84 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %5, align 8
  %85 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %86 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %87 = call i32 @adapter_message(%struct.hpi_adapter_obj* %84, %struct.hpi_message* %85, %struct.hpi_response* %86)
  br label %108

88:                                               ; preds = %73
  %89 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %5, align 8
  %90 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %91 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %92 = call i32 @control_message(%struct.hpi_adapter_obj* %89, %struct.hpi_message* %90, %struct.hpi_response* %91)
  br label %108

93:                                               ; preds = %73
  %94 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %5, align 8
  %95 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %96 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %97 = call i32 @outstream_message(%struct.hpi_adapter_obj* %94, %struct.hpi_message* %95, %struct.hpi_response* %96)
  br label %108

98:                                               ; preds = %73
  %99 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %5, align 8
  %100 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %101 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %102 = call i32 @instream_message(%struct.hpi_adapter_obj* %99, %struct.hpi_message* %100, %struct.hpi_response* %101)
  br label %108

103:                                              ; preds = %73
  %104 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %5, align 8
  %105 = load %struct.hpi_message*, %struct.hpi_message** %3, align 8
  %106 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %107 = call i32 @hw_message(%struct.hpi_adapter_obj* %104, %struct.hpi_message* %105, %struct.hpi_response* %106)
  br label %108

108:                                              ; preds = %103, %98, %93, %88, %81, %77
  br label %113

109:                                              ; preds = %69
  %110 = load i32, i32* @HPI_ERROR_INVALID_TYPE, align 4
  %111 = load %struct.hpi_response*, %struct.hpi_response** %4, align 8
  %112 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %17, %37, %109, %108
  ret void
}

declare dso_local %struct.hpi_adapter_obj* @hpi_find_adapter(i32) #1

declare dso_local i32 @hpi_init_response(%struct.hpi_response*, i64, i64, i32) #1

declare dso_local i32 @HPI_DEBUG_LOG(i32, i8*, i32) #1

declare dso_local i32 @subsys_message(%struct.hpi_message*, %struct.hpi_response*) #1

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

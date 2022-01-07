; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpimsgx.c_hpi_send_recv_ex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpimsgx.c_hpi_send_recv_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { i64, i32, i64, i32 }
%struct.hpi_response = type { i64 }

@logging_enabled = common dso_local global i64 0, align 8
@DEBUG = common dso_local global i32 0, align 4
@HPI_TYPE_REQUEST = common dso_local global i64 0, align 8
@HPI_ERROR_INVALID_TYPE = common dso_local global i32 0, align 4
@HPI_MAX_ADAPTERS = common dso_local global i64 0, align 8
@HPIMSGX_ALLADAPTERS = common dso_local global i64 0, align 8
@HPI_ERROR_BAD_ADAPTER_NUMBER = common dso_local global i32 0, align 4
@HPI_ERROR_DSP_COMMUNICATION = common dso_local global i64 0, align 8
@HPI_DEBUG_LEVEL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpi_send_recv_ex(%struct.hpi_message* %0, %struct.hpi_response* %1, i8* %2) #0 {
  %4 = alloca %struct.hpi_message*, align 8
  %5 = alloca %struct.hpi_response*, align 8
  %6 = alloca i8*, align 8
  store %struct.hpi_message* %0, %struct.hpi_message** %4, align 8
  store %struct.hpi_response* %1, %struct.hpi_response** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i64, i64* @logging_enabled, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load i32, i32* @DEBUG, align 4
  %11 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %12 = call i32 @HPI_DEBUG_MESSAGE(i32 %10, %struct.hpi_message* %11)
  br label %13

13:                                               ; preds = %9, %3
  %14 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %15 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HPI_TYPE_REQUEST, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load %struct.hpi_response*, %struct.hpi_response** %5, align 8
  %21 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %22 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %25 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @HPI_ERROR_INVALID_TYPE, align 4
  %28 = call i32 @hpi_init_response(%struct.hpi_response* %20, i32 %23, i32 %26, i32 %27)
  br label %98

29:                                               ; preds = %13
  %30 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %31 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @HPI_MAX_ADAPTERS, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %37 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HPIMSGX_ALLADAPTERS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load %struct.hpi_response*, %struct.hpi_response** %5, align 8
  %43 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %44 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %47 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @HPI_ERROR_BAD_ADAPTER_NUMBER, align 4
  %50 = call i32 @hpi_init_response(%struct.hpi_response* %42, i32 %45, i32 %48, i32 %49)
  br label %98

51:                                               ; preds = %35, %29
  %52 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %53 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %79 [
    i32 128, label %55
    i32 132, label %60
    i32 130, label %65
    i32 129, label %69
    i32 131, label %74
  ]

55:                                               ; preds = %51
  %56 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %57 = load %struct.hpi_response*, %struct.hpi_response** %5, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @subsys_message(%struct.hpi_message* %56, %struct.hpi_response* %57, i8* %58)
  br label %83

60:                                               ; preds = %51
  %61 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %62 = load %struct.hpi_response*, %struct.hpi_response** %5, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @adapter_message(%struct.hpi_message* %61, %struct.hpi_response* %62, i8* %63)
  br label %83

65:                                               ; preds = %51
  %66 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %67 = load %struct.hpi_response*, %struct.hpi_response** %5, align 8
  %68 = call i32 @mixer_message(%struct.hpi_message* %66, %struct.hpi_response* %67)
  br label %83

69:                                               ; preds = %51
  %70 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %71 = load %struct.hpi_response*, %struct.hpi_response** %5, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @outstream_message(%struct.hpi_message* %70, %struct.hpi_response* %71, i8* %72)
  br label %83

74:                                               ; preds = %51
  %75 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %76 = load %struct.hpi_response*, %struct.hpi_response** %5, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @instream_message(%struct.hpi_message* %75, %struct.hpi_response* %76, i8* %77)
  br label %83

79:                                               ; preds = %51
  %80 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %81 = load %struct.hpi_response*, %struct.hpi_response** %5, align 8
  %82 = call i32 @hw_entry_point(%struct.hpi_message* %80, %struct.hpi_response* %81)
  br label %83

83:                                               ; preds = %79, %74, %69, %65, %60, %55
  %84 = load i64, i64* @logging_enabled, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load %struct.hpi_response*, %struct.hpi_response** %5, align 8
  %88 = call i32 @HPI_DEBUG_RESPONSE(%struct.hpi_response* %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load %struct.hpi_response*, %struct.hpi_response** %5, align 8
  %91 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @HPI_ERROR_DSP_COMMUNICATION, align 8
  %94 = icmp sge i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32, i32* @HPI_DEBUG_LEVEL_ERROR, align 4
  %97 = call i32 @hpi_debug_level_set(i32 %96)
  store i64 0, i64* @logging_enabled, align 8
  br label %98

98:                                               ; preds = %19, %41, %95, %89
  ret void
}

declare dso_local i32 @HPI_DEBUG_MESSAGE(i32, %struct.hpi_message*) #1

declare dso_local i32 @hpi_init_response(%struct.hpi_response*, i32, i32, i32) #1

declare dso_local i32 @subsys_message(%struct.hpi_message*, %struct.hpi_response*, i8*) #1

declare dso_local i32 @adapter_message(%struct.hpi_message*, %struct.hpi_response*, i8*) #1

declare dso_local i32 @mixer_message(%struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @outstream_message(%struct.hpi_message*, %struct.hpi_response*, i8*) #1

declare dso_local i32 @instream_message(%struct.hpi_message*, %struct.hpi_response*, i8*) #1

declare dso_local i32 @hw_entry_point(%struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @HPI_DEBUG_RESPONSE(%struct.hpi_response*) #1

declare dso_local i32 @hpi_debug_level_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

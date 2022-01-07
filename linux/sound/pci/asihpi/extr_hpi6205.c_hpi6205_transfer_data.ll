; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_hpi6205_transfer_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_hpi6205_transfer_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { %struct.hpi_hw_obj* }
%struct.hpi_hw_obj = type { %struct.bus_master_interface* }
%struct.bus_master_interface = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@HPI_ERROR_INVALID_DATA_POINTER = common dso_local global i16 0, align 2
@H620_HIF_IDLE = common dso_local global i32 0, align 4
@HPI6205_TIMEOUT = common dso_local global i64 0, align 8
@HPI_ERROR_DSP_HARDWARE = common dso_local global i16 0, align 2
@HPI6205_SIZEOF_DATA = common dso_local global i64 0, align 8
@H620_HIF_SEND_DATA = common dso_local global i32 0, align 4
@DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"spun %d times for data xfer of %d\0A\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Timed out waiting for state %d got %d\0A\00", align 1
@H620_HIF_GET_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"interface->dsp_ack=%d, expected %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.hpi_adapter_obj*, i8*, i64, i32)* @hpi6205_transfer_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @hpi6205_transfer_data(%struct.hpi_adapter_obj* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i16, align 2
  %6 = alloca %struct.hpi_adapter_obj*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hpi_hw_obj*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i16, align 2
  %13 = alloca i64, align 8
  %14 = alloca %struct.bus_master_interface*, align 8
  %15 = alloca i64, align 8
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %17 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %16, i32 0, i32 0
  %18 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %17, align 8
  store %struct.hpi_hw_obj* %18, %struct.hpi_hw_obj** %10, align 8
  store i64 0, i64* %11, align 8
  store i16 0, i16* %12, align 2
  %19 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %10, align 8
  %20 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %19, i32 0, i32 0
  %21 = load %struct.bus_master_interface*, %struct.bus_master_interface** %20, align 8
  store %struct.bus_master_interface* %21, %struct.bus_master_interface** %14, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = load i16, i16* @HPI_ERROR_INVALID_DATA_POINTER, align 2
  store i16 %25, i16* %5, align 2
  br label %135

26:                                               ; preds = %4
  %27 = load i64, i64* %8, align 8
  %28 = and i64 %27, -4
  store i64 %28, i64* %8, align 8
  %29 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %10, align 8
  %30 = load i32, i32* @H620_HIF_IDLE, align 4
  %31 = load i64, i64* @HPI6205_TIMEOUT, align 8
  %32 = call i64 @wait_dsp_ack(%struct.hpi_hw_obj* %29, i32 %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %26
  %35 = load i16, i16* @HPI_ERROR_DSP_HARDWARE, align 2
  store i16 %35, i16* %5, align 2
  br label %135

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %113, %36
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %117

41:                                               ; preds = %37
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %11, align 8
  %44 = sub nsw i64 %42, %43
  store i64 %44, i64* %15, align 8
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* @HPI6205_SIZEOF_DATA, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i64, i64* @HPI6205_SIZEOF_DATA, align 8
  store i64 %49, i64* %15, align 8
  br label %50

50:                                               ; preds = %48, %41
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @H620_HIF_SEND_DATA, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load %struct.bus_master_interface*, %struct.bus_master_interface** %14, align 8
  %56 = getelementptr inbounds %struct.bus_master_interface, %struct.bus_master_interface* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = bitcast i32* %59 to i8*
  %61 = load i8*, i8** %7, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i64, i64* %15, align 8
  %65 = call i32 @memcpy(i8* %60, i8* %63, i64 %64)
  br label %66

66:                                               ; preds = %54, %50
  %67 = load i64, i64* %15, align 8
  %68 = load %struct.bus_master_interface*, %struct.bus_master_interface** %14, align 8
  %69 = getelementptr inbounds %struct.bus_master_interface, %struct.bus_master_interface* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load i32, i32* @H620_HIF_IDLE, align 4
  %71 = load %struct.bus_master_interface*, %struct.bus_master_interface** %14, align 8
  %72 = getelementptr inbounds %struct.bus_master_interface, %struct.bus_master_interface* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %10, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @send_dsp_command(%struct.hpi_hw_obj* %73, i32 %74)
  %76 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %10, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i64, i64* @HPI6205_TIMEOUT, align 8
  %79 = call i64 @wait_dsp_ack(%struct.hpi_hw_obj* %76, i32 %77, i64 %78)
  store i64 %79, i64* %13, align 8
  %80 = load i32, i32* @DEBUG, align 4
  %81 = load i64, i64* @HPI6205_TIMEOUT, align 8
  %82 = load i64, i64* %13, align 8
  %83 = sub nsw i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = load i64, i64* %15, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @HPI_DEBUG_LOG(i32 %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %86)
  %88 = load i64, i64* %13, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %66
  %91 = load i32, i32* @ERROR, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.bus_master_interface*, %struct.bus_master_interface** %14, align 8
  %94 = getelementptr inbounds %struct.bus_master_interface, %struct.bus_master_interface* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @HPI_DEBUG_LOG(i32 %91, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %95)
  br label %117

97:                                               ; preds = %66
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @H620_HIF_GET_DATA, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %97
  %102 = load i8*, i8** %7, align 8
  %103 = load i64, i64* %11, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = load %struct.bus_master_interface*, %struct.bus_master_interface** %14, align 8
  %106 = getelementptr inbounds %struct.bus_master_interface, %struct.bus_master_interface* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = bitcast i32* %109 to i8*
  %111 = load i64, i64* %15, align 8
  %112 = call i32 @memcpy(i8* %104, i8* %110, i64 %111)
  br label %113

113:                                              ; preds = %101, %97
  %114 = load i64, i64* %15, align 8
  %115 = load i64, i64* %11, align 8
  %116 = add nsw i64 %115, %114
  store i64 %116, i64* %11, align 8
  br label %37

117:                                              ; preds = %90, %37
  %118 = load %struct.bus_master_interface*, %struct.bus_master_interface** %14, align 8
  %119 = getelementptr inbounds %struct.bus_master_interface, %struct.bus_master_interface* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = load i32, i32* @DEBUG, align 4
  %125 = load %struct.bus_master_interface*, %struct.bus_master_interface** %14, align 8
  %126 = getelementptr inbounds %struct.bus_master_interface, %struct.bus_master_interface* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @HPI_DEBUG_LOG(i32 %124, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %123, %117
  %131 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %10, align 8
  %132 = load i32, i32* @H620_HIF_IDLE, align 4
  %133 = call i32 @send_dsp_command(%struct.hpi_hw_obj* %131, i32 %132)
  %134 = load i16, i16* %12, align 2
  store i16 %134, i16* %5, align 2
  br label %135

135:                                              ; preds = %130, %34, %24
  %136 = load i16, i16* %5, align 2
  ret i16 %136
}

declare dso_local i64 @wait_dsp_ack(%struct.hpi_hw_obj*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @send_dsp_command(%struct.hpi_hw_obj*, i32) #1

declare dso_local i32 @HPI_DEBUG_LOG(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

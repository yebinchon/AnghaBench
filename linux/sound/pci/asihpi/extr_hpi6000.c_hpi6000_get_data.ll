; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_hpi6000_get_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_hpi6000_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { %struct.hpi_hw_obj* }
%struct.hpi_hw_obj = type { %struct.dsp_obj* }
%struct.dsp_obj = type { i32 }
%struct.hpi_message = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.hpi_response = type { i32 }

@HPI_HIF_IDLE = common dso_local global i32 0, align 4
@HPI_HIF_ERROR_MASK = common dso_local global i64 0, align 8
@HPI6000_ERROR_GET_DATA_IDLE_TIMEOUT = common dso_local global i16 0, align 2
@HPI_HIF_GET_DATA = common dso_local global i32 0, align 4
@HPI6000_ERROR_GET_DATA_CMD = common dso_local global i16 0, align 2
@HPI6000_ERROR_GET_DATA_ACK = common dso_local global i16 0, align 2
@H6READ = common dso_local global i32 0, align 4
@HPI6000_ERROR_GET_DATA_READ = common dso_local global i16 0, align 2
@HPI6000_ERROR_GET_DATA_IDLECMD = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.hpi_adapter_obj*, i64, %struct.hpi_message*, %struct.hpi_response*)* @hpi6000_get_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @hpi6000_get_data(%struct.hpi_adapter_obj* %0, i64 %1, %struct.hpi_message* %2, %struct.hpi_response* %3) #0 {
  %5 = alloca i16, align 2
  %6 = alloca %struct.hpi_adapter_obj*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hpi_message*, align 8
  %9 = alloca %struct.hpi_response*, align 8
  %10 = alloca %struct.hpi_hw_obj*, align 8
  %11 = alloca %struct.dsp_obj*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.hpi_message* %2, %struct.hpi_message** %8, align 8
  store %struct.hpi_response* %3, %struct.hpi_response** %9, align 8
  %19 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %20 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %19, i32 0, i32 0
  %21 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %20, align 8
  store %struct.hpi_hw_obj* %21, %struct.hpi_hw_obj** %10, align 8
  %22 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %10, align 8
  %23 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %22, i32 0, i32 0
  %24 = load %struct.dsp_obj*, %struct.dsp_obj** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.dsp_obj, %struct.dsp_obj* %24, i64 %25
  store %struct.dsp_obj* %26, %struct.dsp_obj** %11, align 8
  store i64 0, i64* %12, align 8
  %27 = load %struct.hpi_message*, %struct.hpi_message** %8, align 8
  %28 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i64*
  store i64* %34, i64** %16, align 8
  %35 = load %struct.hpi_response*, %struct.hpi_response** %9, align 8
  br label %36

36:                                               ; preds = %134, %4
  %37 = load i64, i64* %12, align 8
  %38 = load %struct.hpi_message*, %struct.hpi_message** %8, align 8
  %39 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = and i64 %44, -4
  %46 = icmp slt i64 %37, %45
  br i1 %46, label %47, label %141

47:                                               ; preds = %36
  %48 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* @HPI_HIF_IDLE, align 4
  %51 = call i64 @hpi6000_wait_dsp_ack(%struct.hpi_adapter_obj* %48, i64 %49, i32 %50)
  store i64 %51, i64* %13, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* @HPI_HIF_ERROR_MASK, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i16, i16* @HPI6000_ERROR_GET_DATA_IDLE_TIMEOUT, align 2
  store i16 %57, i16* %5, align 2
  br label %142

58:                                               ; preds = %47
  %59 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i32, i32* @HPI_HIF_GET_DATA, align 4
  %62 = call i64 @hpi6000_send_host_command(%struct.hpi_adapter_obj* %59, i64 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i16, i16* @HPI6000_ERROR_GET_DATA_CMD, align 2
  store i16 %65, i16* %5, align 2
  br label %142

66:                                               ; preds = %58
  %67 = load %struct.dsp_obj*, %struct.dsp_obj** %11, align 8
  %68 = call i32 @hpi6000_send_dsp_interrupt(%struct.dsp_obj* %67)
  %69 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i32, i32* @HPI_HIF_GET_DATA, align 4
  %72 = call i64 @hpi6000_wait_dsp_ack(%struct.hpi_adapter_obj* %69, i64 %70, i32 %71)
  store i64 %72, i64* %13, align 8
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* @HPI_HIF_ERROR_MASK, align 8
  %75 = and i64 %73, %74
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = load i16, i16* @HPI6000_ERROR_GET_DATA_ACK, align 2
  store i16 %78, i16* %5, align 2
  br label %142

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %89, %79
  %81 = load %struct.dsp_obj*, %struct.dsp_obj** %11, align 8
  %82 = load i64, i64* %15, align 8
  %83 = call i32 @HPI_HIF_ADDR(i64 %82)
  %84 = call i64 @hpi_read_word(%struct.dsp_obj* %81, i32 %83)
  store i64 %84, i64* %15, align 8
  %85 = load %struct.dsp_obj*, %struct.dsp_obj** %11, align 8
  %86 = load i64, i64* %14, align 8
  %87 = call i32 @HPI_HIF_ADDR(i64 %86)
  %88 = call i64 @hpi_read_word(%struct.dsp_obj* %85, i32 %87)
  store i64 %88, i64* %14, align 8
  br label %89

89:                                               ; preds = %80
  %90 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %91 = load i32, i32* @H6READ, align 4
  %92 = call i64 @hpi6000_check_PCI2040_error_flag(%struct.hpi_adapter_obj* %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %80, label %94

94:                                               ; preds = %89
  %95 = load i64, i64* %14, align 8
  store i64 %95, i64* %17, align 8
  store i64 512, i64* %18, align 8
  br label %96

96:                                               ; preds = %115, %94
  %97 = load i64, i64* %17, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %126

99:                                               ; preds = %96
  %100 = load i64, i64* %17, align 8
  %101 = load i64, i64* %18, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i64, i64* %17, align 8
  store i64 %104, i64* %18, align 8
  br label %105

105:                                              ; preds = %103, %99
  %106 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* %15, align 8
  %109 = load i64*, i64** %16, align 8
  %110 = load i64, i64* %18, align 8
  %111 = call i64 @hpi6000_dsp_block_read32(%struct.hpi_adapter_obj* %106, i64 %107, i64 %108, i64* %109, i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i16, i16* @HPI6000_ERROR_GET_DATA_READ, align 2
  store i16 %114, i16* %5, align 2
  br label %142

115:                                              ; preds = %105
  %116 = load i64, i64* %18, align 8
  %117 = mul nsw i64 %116, 4
  %118 = load i64, i64* %15, align 8
  %119 = add nsw i64 %118, %117
  store i64 %119, i64* %15, align 8
  %120 = load i64, i64* %18, align 8
  %121 = load i64*, i64** %16, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 %120
  store i64* %122, i64** %16, align 8
  %123 = load i64, i64* %18, align 8
  %124 = load i64, i64* %17, align 8
  %125 = sub nsw i64 %124, %123
  store i64 %125, i64* %17, align 8
  br label %96

126:                                              ; preds = %96
  %127 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %128 = load i64, i64* %7, align 8
  %129 = load i32, i32* @HPI_HIF_IDLE, align 4
  %130 = call i64 @hpi6000_send_host_command(%struct.hpi_adapter_obj* %127, i64 %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load i16, i16* @HPI6000_ERROR_GET_DATA_IDLECMD, align 2
  store i16 %133, i16* %5, align 2
  br label %142

134:                                              ; preds = %126
  %135 = load %struct.dsp_obj*, %struct.dsp_obj** %11, align 8
  %136 = call i32 @hpi6000_send_dsp_interrupt(%struct.dsp_obj* %135)
  %137 = load i64, i64* %14, align 8
  %138 = mul nsw i64 %137, 4
  %139 = load i64, i64* %12, align 8
  %140 = add nsw i64 %139, %138
  store i64 %140, i64* %12, align 8
  br label %36

141:                                              ; preds = %36
  store i16 0, i16* %5, align 2
  br label %142

142:                                              ; preds = %141, %132, %113, %77, %64, %56
  %143 = load i16, i16* %5, align 2
  ret i16 %143
}

declare dso_local i64 @hpi6000_wait_dsp_ack(%struct.hpi_adapter_obj*, i64, i32) #1

declare dso_local i64 @hpi6000_send_host_command(%struct.hpi_adapter_obj*, i64, i32) #1

declare dso_local i32 @hpi6000_send_dsp_interrupt(%struct.dsp_obj*) #1

declare dso_local i64 @hpi_read_word(%struct.dsp_obj*, i32) #1

declare dso_local i32 @HPI_HIF_ADDR(i64) #1

declare dso_local i64 @hpi6000_check_PCI2040_error_flag(%struct.hpi_adapter_obj*, i32) #1

declare dso_local i64 @hpi6000_dsp_block_read32(%struct.hpi_adapter_obj*, i64, i64, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

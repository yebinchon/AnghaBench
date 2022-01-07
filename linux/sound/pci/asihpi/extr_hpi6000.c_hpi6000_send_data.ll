; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_hpi6000_send_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_hpi6000_send_data.c"
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
@HPI6000_ERROR_SEND_DATA_IDLE_TIMEOUT = common dso_local global i16 0, align 2
@HPI_HIF_SEND_DATA = common dso_local global i32 0, align 4
@HPI6000_ERROR_SEND_DATA_CMD = common dso_local global i16 0, align 2
@HPI6000_ERROR_SEND_DATA_ACK = common dso_local global i16 0, align 2
@H6READ = common dso_local global i32 0, align 4
@HPI6000_ERROR_SEND_DATA_ADR = common dso_local global i16 0, align 2
@HPI6000_ERROR_SEND_DATA_WRITE = common dso_local global i16 0, align 2
@HPI6000_ERROR_SEND_DATA_IDLECMD = common dso_local global i16 0, align 2
@HPI6000_ERROR_SEND_DATA_TIMEOUT = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.hpi_adapter_obj*, i64, %struct.hpi_message*, %struct.hpi_response*)* @hpi6000_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @hpi6000_send_data(%struct.hpi_adapter_obj* %0, i64 %1, %struct.hpi_message* %2, %struct.hpi_response* %3) #0 {
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
  %19 = alloca i64, align 8
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.hpi_message* %2, %struct.hpi_message** %8, align 8
  store %struct.hpi_response* %3, %struct.hpi_response** %9, align 8
  %20 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %21 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %20, i32 0, i32 0
  %22 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %21, align 8
  store %struct.hpi_hw_obj* %22, %struct.hpi_hw_obj** %10, align 8
  %23 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %10, align 8
  %24 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %23, i32 0, i32 0
  %25 = load %struct.dsp_obj*, %struct.dsp_obj** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.dsp_obj, %struct.dsp_obj* %25, i64 %26
  store %struct.dsp_obj* %27, %struct.dsp_obj** %11, align 8
  store i64 0, i64* %12, align 8
  %28 = load %struct.hpi_message*, %struct.hpi_message** %8, align 8
  %29 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i64*
  store i64* %35, i64** %16, align 8
  store i64 8, i64* %17, align 8
  %36 = load %struct.hpi_response*, %struct.hpi_response** %9, align 8
  br label %37

37:                                               ; preds = %148, %4
  %38 = load i64, i64* %12, align 8
  %39 = load %struct.hpi_message*, %struct.hpi_message** %8, align 8
  %40 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = and i64 %45, -4
  %47 = icmp slt i64 %38, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load i64, i64* %17, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %17, align 8
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %48, %37
  %53 = phi i1 [ false, %37 ], [ %51, %48 ]
  br i1 %53, label %54, label %155

54:                                               ; preds = %52
  %55 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i32, i32* @HPI_HIF_IDLE, align 4
  %58 = call i64 @hpi6000_wait_dsp_ack(%struct.hpi_adapter_obj* %55, i64 %56, i32 %57)
  store i64 %58, i64* %13, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* @HPI_HIF_ERROR_MASK, align 8
  %61 = and i64 %59, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i16, i16* @HPI6000_ERROR_SEND_DATA_IDLE_TIMEOUT, align 2
  store i16 %64, i16* %5, align 2
  br label %161

65:                                               ; preds = %54
  %66 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i32, i32* @HPI_HIF_SEND_DATA, align 4
  %69 = call i64 @hpi6000_send_host_command(%struct.hpi_adapter_obj* %66, i64 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i16, i16* @HPI6000_ERROR_SEND_DATA_CMD, align 2
  store i16 %72, i16* %5, align 2
  br label %161

73:                                               ; preds = %65
  %74 = load %struct.dsp_obj*, %struct.dsp_obj** %11, align 8
  %75 = call i32 @hpi6000_send_dsp_interrupt(%struct.dsp_obj* %74)
  %76 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i32, i32* @HPI_HIF_SEND_DATA, align 4
  %79 = call i64 @hpi6000_wait_dsp_ack(%struct.hpi_adapter_obj* %76, i64 %77, i32 %78)
  store i64 %79, i64* %13, align 8
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* @HPI_HIF_ERROR_MASK, align 8
  %82 = and i64 %80, %81
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = load i16, i16* @HPI6000_ERROR_SEND_DATA_ACK, align 2
  store i16 %85, i16* %5, align 2
  br label %161

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %96, %86
  %88 = load %struct.dsp_obj*, %struct.dsp_obj** %11, align 8
  %89 = load i64, i64* %15, align 8
  %90 = call i32 @HPI_HIF_ADDR(i64 %89)
  %91 = call i64 @hpi_read_word(%struct.dsp_obj* %88, i32 %90)
  store i64 %91, i64* %15, align 8
  %92 = load %struct.dsp_obj*, %struct.dsp_obj** %11, align 8
  %93 = load i64, i64* %14, align 8
  %94 = call i32 @HPI_HIF_ADDR(i64 %93)
  %95 = call i64 @hpi_read_word(%struct.dsp_obj* %92, i32 %94)
  store i64 %95, i64* %14, align 8
  br label %96

96:                                               ; preds = %87
  %97 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %98 = load i32, i32* @H6READ, align 4
  %99 = call i64 @hpi6000_check_PCI2040_error_flag(%struct.hpi_adapter_obj* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %87, label %101

101:                                              ; preds = %96
  %102 = load i64, i64* %15, align 8
  %103 = load i64, i64* %14, align 8
  %104 = call i32 @hpi6000_send_data_check_adr(i64 %102, i64 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %101
  %107 = load i16, i16* @HPI6000_ERROR_SEND_DATA_ADR, align 2
  store i16 %107, i16* %5, align 2
  br label %161

108:                                              ; preds = %101
  %109 = load i64, i64* %14, align 8
  store i64 %109, i64* %18, align 8
  store i64 512, i64* %19, align 8
  br label %110

110:                                              ; preds = %129, %108
  %111 = load i64, i64* %18, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %140

113:                                              ; preds = %110
  %114 = load i64, i64* %18, align 8
  %115 = load i64, i64* %19, align 8
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i64, i64* %18, align 8
  store i64 %118, i64* %19, align 8
  br label %119

119:                                              ; preds = %117, %113
  %120 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %121 = load i64, i64* %7, align 8
  %122 = load i64, i64* %15, align 8
  %123 = load i64*, i64** %16, align 8
  %124 = load i64, i64* %19, align 8
  %125 = call i64 @hpi6000_dsp_block_write32(%struct.hpi_adapter_obj* %120, i64 %121, i64 %122, i64* %123, i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = load i16, i16* @HPI6000_ERROR_SEND_DATA_WRITE, align 2
  store i16 %128, i16* %5, align 2
  br label %161

129:                                              ; preds = %119
  %130 = load i64, i64* %19, align 8
  %131 = mul nsw i64 %130, 4
  %132 = load i64, i64* %15, align 8
  %133 = add nsw i64 %132, %131
  store i64 %133, i64* %15, align 8
  %134 = load i64, i64* %19, align 8
  %135 = load i64*, i64** %16, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 %134
  store i64* %136, i64** %16, align 8
  %137 = load i64, i64* %19, align 8
  %138 = load i64, i64* %18, align 8
  %139 = sub nsw i64 %138, %137
  store i64 %139, i64* %18, align 8
  br label %110

140:                                              ; preds = %110
  %141 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %142 = load i64, i64* %7, align 8
  %143 = load i32, i32* @HPI_HIF_IDLE, align 4
  %144 = call i64 @hpi6000_send_host_command(%struct.hpi_adapter_obj* %141, i64 %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = load i16, i16* @HPI6000_ERROR_SEND_DATA_IDLECMD, align 2
  store i16 %147, i16* %5, align 2
  br label %161

148:                                              ; preds = %140
  %149 = load %struct.dsp_obj*, %struct.dsp_obj** %11, align 8
  %150 = call i32 @hpi6000_send_dsp_interrupt(%struct.dsp_obj* %149)
  %151 = load i64, i64* %14, align 8
  %152 = mul nsw i64 %151, 4
  %153 = load i64, i64* %12, align 8
  %154 = add nsw i64 %153, %152
  store i64 %154, i64* %12, align 8
  br label %37

155:                                              ; preds = %52
  %156 = load i64, i64* %17, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %155
  %159 = load i16, i16* @HPI6000_ERROR_SEND_DATA_TIMEOUT, align 2
  store i16 %159, i16* %5, align 2
  br label %161

160:                                              ; preds = %155
  store i16 0, i16* %5, align 2
  br label %161

161:                                              ; preds = %160, %158, %146, %127, %106, %84, %71, %63
  %162 = load i16, i16* %5, align 2
  ret i16 %162
}

declare dso_local i64 @hpi6000_wait_dsp_ack(%struct.hpi_adapter_obj*, i64, i32) #1

declare dso_local i64 @hpi6000_send_host_command(%struct.hpi_adapter_obj*, i64, i32) #1

declare dso_local i32 @hpi6000_send_dsp_interrupt(%struct.dsp_obj*) #1

declare dso_local i64 @hpi_read_word(%struct.dsp_obj*, i32) #1

declare dso_local i32 @HPI_HIF_ADDR(i64) #1

declare dso_local i64 @hpi6000_check_PCI2040_error_flag(%struct.hpi_adapter_obj*, i32) #1

declare dso_local i32 @hpi6000_send_data_check_adr(i64, i64) #1

declare dso_local i64 @hpi6000_dsp_block_write32(%struct.hpi_adapter_obj*, i64, i64, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

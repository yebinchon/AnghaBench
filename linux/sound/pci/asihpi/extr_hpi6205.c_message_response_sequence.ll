; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_message_response_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_message_response_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { %struct.hpi_hw_obj* }
%struct.hpi_hw_obj = type { %struct.bus_master_interface* }
%struct.bus_master_interface = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.hpi_message, %struct.hpi_response }
%struct.hpi_message = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hpi_response = type { i32, i32, i32 }

@message_count = common dso_local global i32 0, align 4
@HPI_ERROR_MESSAGE_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"message len %d too big for buffer %zd \0A\00", align 1
@H620_HIF_IDLE = common dso_local global i32 0, align 4
@HPI6205_TIMEOUT = common dso_local global i64 0, align 8
@DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"timeout waiting for idle\0A\00", align 1
@HPI6205_ERROR_MSG_RESP_IDLE_TIMEOUT = common dso_local global i32 0, align 4
@H620_HIF_GET_RESP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"(%u) Timed out waiting for GET_RESP state [%x]\0A\00", align 1
@VERBOSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"(%u) transition to GET_RESP after %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"response len %d too big for buffer %d\0A\00", align 1
@HPI_ERROR_RESPONSE_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"something timed out!\0A\00", align 1
@HPI6205_ERROR_MSG_RESP_TIMEOUT = common dso_local global i32 0, align 4
@HPI_ADAPTER_CLOSE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [45 x i8] c"Timeout waiting for idle (on adapter_close)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*)* @message_response_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @message_response_sequence(%struct.hpi_adapter_obj* %0, %struct.hpi_message* %1, %struct.hpi_response* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hpi_adapter_obj*, align 8
  %6 = alloca %struct.hpi_message*, align 8
  %7 = alloca %struct.hpi_response*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hpi_hw_obj*, align 8
  %11 = alloca %struct.bus_master_interface*, align 8
  %12 = alloca i32, align 4
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %5, align 8
  store %struct.hpi_message* %1, %struct.hpi_message** %6, align 8
  store %struct.hpi_response* %2, %struct.hpi_response** %7, align 8
  %13 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %5, align 8
  %14 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %13, i32 0, i32 0
  %15 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %14, align 8
  store %struct.hpi_hw_obj* %15, %struct.hpi_hw_obj** %10, align 8
  %16 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %10, align 8
  %17 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %16, i32 0, i32 0
  %18 = load %struct.bus_master_interface*, %struct.bus_master_interface** %17, align 8
  store %struct.bus_master_interface* %18, %struct.bus_master_interface** %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* @message_count, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @message_count, align 4
  %21 = load %struct.hpi_message*, %struct.hpi_message** %6, align 8
  %22 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = icmp ugt i64 %24, 12
  br i1 %25, label %26, label %39

26:                                               ; preds = %3
  %27 = load i32, i32* @HPI_ERROR_MESSAGE_BUFFER_TOO_SMALL, align 4
  %28 = load %struct.hpi_response*, %struct.hpi_response** %7, align 8
  %29 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.hpi_response*, %struct.hpi_response** %7, align 8
  %31 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %30, i32 0, i32 0
  store i32 12, i32* %31, align 4
  %32 = load %struct.hpi_response*, %struct.hpi_response** %7, align 8
  %33 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %32, i32 0, i32 1
  store i32 4, i32* %33, align 4
  %34 = load i32, i32* @ERROR, align 4
  %35 = load %struct.hpi_message*, %struct.hpi_message** %6, align 8
  %36 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i32, i8*, ...) @HPI_DEBUG_LOG(i32 %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %37, i64 12)
  store i32 0, i32* %4, align 4
  br label %174

39:                                               ; preds = %3
  %40 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %10, align 8
  %41 = load i32, i32* @H620_HIF_IDLE, align 4
  %42 = load i64, i64* @HPI6205_TIMEOUT, align 8
  %43 = call i64 @wait_dsp_ack(%struct.hpi_hw_obj* %40, i32 %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @DEBUG, align 4
  %47 = call i32 (i32, i8*, ...) @HPI_DEBUG_LOG(i32 %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @HPI6205_ERROR_MSG_RESP_IDLE_TIMEOUT, align 4
  store i32 %48, i32* %4, align 4
  br label %174

49:                                               ; preds = %39
  %50 = load %struct.bus_master_interface*, %struct.bus_master_interface** %11, align 8
  %51 = getelementptr inbounds %struct.bus_master_interface, %struct.bus_master_interface* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.hpi_message*, %struct.hpi_message** %6, align 8
  %54 = load %struct.hpi_message*, %struct.hpi_message** %6, align 8
  %55 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @memcpy(%struct.hpi_response* %52, %struct.hpi_message* %53, i32 %56)
  %58 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %10, align 8
  %59 = load i32, i32* @H620_HIF_GET_RESP, align 4
  %60 = call i32 @send_dsp_command(%struct.hpi_hw_obj* %58, i32 %59)
  %61 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %10, align 8
  %62 = load i32, i32* @H620_HIF_GET_RESP, align 4
  %63 = load i64, i64* @HPI6205_TIMEOUT, align 8
  %64 = call i64 @wait_dsp_ack(%struct.hpi_hw_obj* %61, i32 %62, i64 %63)
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %49
  %68 = load i32, i32* @ERROR, align 4
  %69 = load i32, i32* @message_count, align 4
  %70 = load %struct.bus_master_interface*, %struct.bus_master_interface** %11, align 8
  %71 = getelementptr inbounds %struct.bus_master_interface, %struct.bus_master_interface* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, i8*, ...) @HPI_DEBUG_LOG(i32 %68, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %72)
  br label %81

74:                                               ; preds = %49
  %75 = load i32, i32* @VERBOSE, align 4
  %76 = load i32, i32* @message_count, align 4
  %77 = load i64, i64* @HPI6205_TIMEOUT, align 8
  %78 = load i64, i64* %9, align 8
  %79 = sub nsw i64 %77, %78
  %80 = call i32 (i32, i8*, ...) @HPI_DEBUG_LOG(i32 %75, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %76, i64 %79)
  br label %81

81:                                               ; preds = %74, %67
  %82 = load i64, i64* @HPI6205_TIMEOUT, align 8
  store i64 %82, i64* %8, align 8
  %83 = load i64, i64* %8, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %139

85:                                               ; preds = %81
  %86 = load %struct.bus_master_interface*, %struct.bus_master_interface** %11, align 8
  %87 = getelementptr inbounds %struct.bus_master_interface, %struct.bus_master_interface* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.hpi_response*, %struct.hpi_response** %7, align 8
  %93 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp sle i32 %91, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %85
  %97 = load %struct.hpi_response*, %struct.hpi_response** %7, align 8
  %98 = load %struct.bus_master_interface*, %struct.bus_master_interface** %11, align 8
  %99 = getelementptr inbounds %struct.bus_master_interface, %struct.bus_master_interface* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load %struct.bus_master_interface*, %struct.bus_master_interface** %11, align 8
  %102 = getelementptr inbounds %struct.bus_master_interface, %struct.bus_master_interface* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @memcpy(%struct.hpi_response* %97, %struct.hpi_message* %100, i32 %106)
  br label %138

108:                                              ; preds = %85
  %109 = load i32, i32* @ERROR, align 4
  %110 = load %struct.bus_master_interface*, %struct.bus_master_interface** %11, align 8
  %111 = getelementptr inbounds %struct.bus_master_interface, %struct.bus_master_interface* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.hpi_response*, %struct.hpi_response** %7, align 8
  %117 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @HPI_DEBUG_LOG(i32 %109, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %115, i32 %118)
  %120 = load %struct.hpi_response*, %struct.hpi_response** %7, align 8
  %121 = load %struct.bus_master_interface*, %struct.bus_master_interface** %11, align 8
  %122 = getelementptr inbounds %struct.bus_master_interface, %struct.bus_master_interface* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = call i32 @memcpy(%struct.hpi_response* %120, %struct.hpi_message* %123, i32 4)
  %125 = load i32, i32* @HPI_ERROR_RESPONSE_BUFFER_TOO_SMALL, align 4
  %126 = load %struct.hpi_response*, %struct.hpi_response** %7, align 8
  %127 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  %128 = load %struct.bus_master_interface*, %struct.bus_master_interface** %11, align 8
  %129 = getelementptr inbounds %struct.bus_master_interface, %struct.bus_master_interface* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.hpi_response*, %struct.hpi_response** %7, align 8
  %135 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load %struct.hpi_response*, %struct.hpi_response** %7, align 8
  %137 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %136, i32 0, i32 1
  store i32 4, i32* %137, align 4
  br label %138

138:                                              ; preds = %108, %96
  br label %139

139:                                              ; preds = %138, %81
  %140 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %10, align 8
  %141 = load i32, i32* @H620_HIF_IDLE, align 4
  %142 = call i32 @send_dsp_command(%struct.hpi_hw_obj* %140, i32 %141)
  %143 = load i64, i64* %8, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load i64, i64* %9, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %145, %139
  %149 = load i32, i32* @DEBUG, align 4
  %150 = call i32 (i32, i8*, ...) @HPI_DEBUG_LOG(i32 %149, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %151 = load i32, i32* @HPI6205_ERROR_MSG_RESP_TIMEOUT, align 4
  store i32 %151, i32* %4, align 4
  br label %174

152:                                              ; preds = %145
  %153 = load %struct.hpi_message*, %struct.hpi_message** %6, align 8
  %154 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @HPI_ADAPTER_CLOSE, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %152
  %159 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %10, align 8
  %160 = load i32, i32* @H620_HIF_IDLE, align 4
  %161 = load i64, i64* @HPI6205_TIMEOUT, align 8
  %162 = call i64 @wait_dsp_ack(%struct.hpi_hw_obj* %159, i32 %160, i64 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %158
  %165 = load i32, i32* @DEBUG, align 4
  %166 = call i32 (i32, i8*, ...) @HPI_DEBUG_LOG(i32 %165, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %167 = load i32, i32* @HPI6205_ERROR_MSG_RESP_IDLE_TIMEOUT, align 4
  store i32 %167, i32* %4, align 4
  br label %174

168:                                              ; preds = %158
  br label %169

169:                                              ; preds = %168, %152
  %170 = load %struct.hpi_message*, %struct.hpi_message** %6, align 8
  %171 = load %struct.hpi_response*, %struct.hpi_response** %7, align 8
  %172 = call i32 @hpi_validate_response(%struct.hpi_message* %170, %struct.hpi_response* %171)
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %12, align 4
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %169, %164, %148, %45, %26
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32 @HPI_DEBUG_LOG(i32, i8*, ...) #1

declare dso_local i64 @wait_dsp_ack(%struct.hpi_hw_obj*, i32, i64) #1

declare dso_local i32 @memcpy(%struct.hpi_response*, %struct.hpi_message*, i32) #1

declare dso_local i32 @send_dsp_command(%struct.hpi_hw_obj*, i32) #1

declare dso_local i32 @hpi_validate_response(%struct.hpi_message*, %struct.hpi_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_hpi6000_message_response_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_hpi6000_message_response_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { i64, %struct.hpi_hw_obj* }
%struct.hpi_hw_obj = type { i64, i64, %struct.dsp_obj* }
%struct.dsp_obj = type { i32 }
%struct.hpi_message = type { i64 }
%struct.hpi_response = type { i64 }

@HPI_HIF_IDLE = common dso_local global i32 0, align 4
@HPI_HIF_ERROR_MASK = common dso_local global i64 0, align 8
@HPI6000_ERROR_MSG_RESP_IDLE_TIMEOUT = common dso_local global i16 0, align 2
@TIMEOUT = common dso_local global i64 0, align 8
@message_buffer_address = common dso_local global i64 0, align 8
@H6READ = common dso_local global i32 0, align 4
@HPI6000_ERROR_MSG_GET_ADR = common dso_local global i16 0, align 2
@HPI6000_ERROR_MSG_RESP_BLOCKWRITE32 = common dso_local global i16 0, align 2
@HPI_HIF_GET_RESP = common dso_local global i32 0, align 4
@HPI6000_ERROR_MSG_RESP_GETRESPCMD = common dso_local global i16 0, align 2
@HPI6000_ERROR_MSG_RESP_GET_RESP_ACK = common dso_local global i16 0, align 2
@response_buffer_address = common dso_local global i64 0, align 8
@HPI6000_ERROR_RESP_GET_ADR = common dso_local global i16 0, align 2
@HPI6000_ERROR_RESP_GET_LEN = common dso_local global i16 0, align 2
@HPI_ERROR_RESPONSE_BUFFER_TOO_SMALL = common dso_local global i16 0, align 2
@HPI6000_ERROR_MSG_RESP_BLOCKREAD32 = common dso_local global i16 0, align 2
@HPI6000_ERROR_MSG_RESP_IDLECMD = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.hpi_adapter_obj*, i64, %struct.hpi_message*, %struct.hpi_response*)* @hpi6000_message_response_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @hpi6000_message_response_sequence(%struct.hpi_adapter_obj* %0, i64 %1, %struct.hpi_message* %2, %struct.hpi_response* %3) #0 {
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
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.hpi_message* %2, %struct.hpi_message** %8, align 8
  store %struct.hpi_response* %3, %struct.hpi_response** %9, align 8
  %18 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %19 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %18, i32 0, i32 1
  %20 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %19, align 8
  store %struct.hpi_hw_obj* %20, %struct.hpi_hw_obj** %10, align 8
  %21 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %10, align 8
  %22 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %21, i32 0, i32 2
  %23 = load %struct.dsp_obj*, %struct.dsp_obj** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.dsp_obj, %struct.dsp_obj* %23, i64 %24
  store %struct.dsp_obj* %25, %struct.dsp_obj** %11, align 8
  store i64 0, i64* %17, align 8
  %26 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @HPI_HIF_IDLE, align 4
  %29 = call i64 @hpi6000_wait_dsp_ack(%struct.hpi_adapter_obj* %26, i64 %27, i32 %28)
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* @HPI_HIF_ERROR_MASK, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %4
  %35 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %36 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = load i16, i16* @HPI6000_ERROR_MSG_RESP_IDLE_TIMEOUT, align 2
  store i16 %39, i16* %5, align 2
  br label %211

40:                                               ; preds = %4
  %41 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %42 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %10, align 8
  %44 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %40
  %48 = load i64, i64* @TIMEOUT, align 8
  store i64 %48, i64* %12, align 8
  br label %49

49:                                               ; preds = %66, %47
  %50 = load %struct.dsp_obj*, %struct.dsp_obj** %11, align 8
  %51 = load i64, i64* @message_buffer_address, align 8
  %52 = call i32 @HPI_HIF_ADDR(i64 %51)
  %53 = call i64 @hpi_read_word(%struct.dsp_obj* %50, i32 %52)
  store i64 %53, i64* %14, align 8
  %54 = load i64, i64* %14, align 8
  %55 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %10, align 8
  %56 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %49
  %58 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %59 = load i32, i32* @H6READ, align 4
  %60 = call i64 @hpi6000_check_PCI2040_error_flag(%struct.hpi_adapter_obj* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i64, i64* %12, align 8
  %64 = add nsw i64 %63, -1
  store i64 %64, i64* %12, align 8
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %62, %57
  %67 = phi i1 [ false, %57 ], [ %65, %62 ]
  br i1 %67, label %49, label %68

68:                                               ; preds = %66
  %69 = load i64, i64* %12, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = load i16, i16* @HPI6000_ERROR_MSG_GET_ADR, align 2
  store i16 %72, i16* %5, align 2
  br label %211

73:                                               ; preds = %68
  br label %78

74:                                               ; preds = %40
  %75 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %10, align 8
  %76 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %14, align 8
  br label %78

78:                                               ; preds = %74, %73
  %79 = load %struct.hpi_message*, %struct.hpi_message** %8, align 8
  %80 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %15, align 8
  %82 = load %struct.hpi_message*, %struct.hpi_message** %8, align 8
  %83 = bitcast %struct.hpi_message* %82 to i64*
  store i64* %83, i64** %16, align 8
  %84 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* %14, align 8
  %87 = load i64*, i64** %16, align 8
  %88 = load i64, i64* %15, align 8
  %89 = udiv i64 %88, 4
  %90 = call i64 @hpi6000_dsp_block_write32(%struct.hpi_adapter_obj* %84, i64 %85, i64 %86, i64* %87, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %78
  %93 = load i16, i16* @HPI6000_ERROR_MSG_RESP_BLOCKWRITE32, align 2
  store i16 %93, i16* %5, align 2
  br label %211

94:                                               ; preds = %78
  %95 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load i32, i32* @HPI_HIF_GET_RESP, align 4
  %98 = call i64 @hpi6000_send_host_command(%struct.hpi_adapter_obj* %95, i64 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i16, i16* @HPI6000_ERROR_MSG_RESP_GETRESPCMD, align 2
  store i16 %101, i16* %5, align 2
  br label %211

102:                                              ; preds = %94
  %103 = load %struct.dsp_obj*, %struct.dsp_obj** %11, align 8
  %104 = call i32 @hpi6000_send_dsp_interrupt(%struct.dsp_obj* %103)
  %105 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load i32, i32* @HPI_HIF_GET_RESP, align 4
  %108 = call i64 @hpi6000_wait_dsp_ack(%struct.hpi_adapter_obj* %105, i64 %106, i32 %107)
  store i64 %108, i64* %13, align 8
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* @HPI_HIF_ERROR_MASK, align 8
  %111 = and i64 %109, %110
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %102
  %114 = load i16, i16* @HPI6000_ERROR_MSG_RESP_GET_RESP_ACK, align 2
  store i16 %114, i16* %5, align 2
  br label %211

115:                                              ; preds = %102
  %116 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %10, align 8
  %117 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %147

120:                                              ; preds = %115
  %121 = load i64, i64* @TIMEOUT, align 8
  store i64 %121, i64* %12, align 8
  br label %122

122:                                              ; preds = %136, %120
  %123 = load %struct.dsp_obj*, %struct.dsp_obj** %11, align 8
  %124 = load i64, i64* @response_buffer_address, align 8
  %125 = call i32 @HPI_HIF_ADDR(i64 %124)
  %126 = call i64 @hpi_read_word(%struct.dsp_obj* %123, i32 %125)
  store i64 %126, i64* %14, align 8
  br label %127

127:                                              ; preds = %122
  %128 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %129 = load i32, i32* @H6READ, align 4
  %130 = call i64 @hpi6000_check_PCI2040_error_flag(%struct.hpi_adapter_obj* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load i64, i64* %12, align 8
  %134 = add nsw i64 %133, -1
  store i64 %134, i64* %12, align 8
  %135 = icmp ne i64 %134, 0
  br label %136

136:                                              ; preds = %132, %127
  %137 = phi i1 [ false, %127 ], [ %135, %132 ]
  br i1 %137, label %122, label %138

138:                                              ; preds = %136
  %139 = load i64, i64* %14, align 8
  %140 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %10, align 8
  %141 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  %142 = load i64, i64* %12, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %138
  %145 = load i16, i16* @HPI6000_ERROR_RESP_GET_ADR, align 2
  store i16 %145, i16* %5, align 2
  br label %211

146:                                              ; preds = %138
  br label %151

147:                                              ; preds = %115
  %148 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %10, align 8
  %149 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %14, align 8
  br label %151

151:                                              ; preds = %147, %146
  %152 = load i64, i64* @TIMEOUT, align 8
  store i64 %152, i64* %12, align 8
  br label %153

153:                                              ; preds = %167, %151
  %154 = load %struct.dsp_obj*, %struct.dsp_obj** %11, align 8
  %155 = load i64, i64* %15, align 8
  %156 = call i32 @HPI_HIF_ADDR(i64 %155)
  %157 = call i64 @hpi_read_word(%struct.dsp_obj* %154, i32 %156)
  store i64 %157, i64* %15, align 8
  br label %158

158:                                              ; preds = %153
  %159 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %160 = load i32, i32* @H6READ, align 4
  %161 = call i64 @hpi6000_check_PCI2040_error_flag(%struct.hpi_adapter_obj* %159, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load i64, i64* %12, align 8
  %165 = add nsw i64 %164, -1
  store i64 %165, i64* %12, align 8
  %166 = icmp ne i64 %165, 0
  br label %167

167:                                              ; preds = %163, %158
  %168 = phi i1 [ false, %158 ], [ %166, %163 ]
  br i1 %168, label %153, label %169

169:                                              ; preds = %167
  %170 = load i64, i64* %12, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %169
  %173 = load i16, i16* @HPI6000_ERROR_RESP_GET_LEN, align 2
  store i16 %173, i16* %5, align 2
  br label %211

174:                                              ; preds = %169
  %175 = load i64, i64* %15, align 8
  %176 = load %struct.hpi_response*, %struct.hpi_response** %9, align 8
  %177 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp sgt i64 %175, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = load i16, i16* @HPI_ERROR_RESPONSE_BUFFER_TOO_SMALL, align 2
  store i16 %181, i16* %5, align 2
  br label %211

182:                                              ; preds = %174
  %183 = load %struct.hpi_response*, %struct.hpi_response** %9, align 8
  %184 = bitcast %struct.hpi_response* %183 to i64*
  store i64* %184, i64** %16, align 8
  %185 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %186 = load i64, i64* %7, align 8
  %187 = load i64, i64* %14, align 8
  %188 = load i64*, i64** %16, align 8
  %189 = load i64, i64* %15, align 8
  %190 = udiv i64 %189, 4
  %191 = call i64 @hpi6000_dsp_block_read32(%struct.hpi_adapter_obj* %185, i64 %186, i64 %187, i64* %188, i64 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %182
  %194 = load i16, i16* @HPI6000_ERROR_MSG_RESP_BLOCKREAD32, align 2
  store i16 %194, i16* %5, align 2
  br label %211

195:                                              ; preds = %182
  %196 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %197 = load i64, i64* %7, align 8
  %198 = load i32, i32* @HPI_HIF_IDLE, align 4
  %199 = call i64 @hpi6000_send_host_command(%struct.hpi_adapter_obj* %196, i64 %197, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %195
  %202 = load i16, i16* @HPI6000_ERROR_MSG_RESP_IDLECMD, align 2
  store i16 %202, i16* %5, align 2
  br label %211

203:                                              ; preds = %195
  %204 = load %struct.dsp_obj*, %struct.dsp_obj** %11, align 8
  %205 = call i32 @hpi6000_send_dsp_interrupt(%struct.dsp_obj* %204)
  %206 = load %struct.hpi_message*, %struct.hpi_message** %8, align 8
  %207 = load %struct.hpi_response*, %struct.hpi_response** %9, align 8
  %208 = call i64 @hpi_validate_response(%struct.hpi_message* %206, %struct.hpi_response* %207)
  store i64 %208, i64* %17, align 8
  %209 = load i64, i64* %17, align 8
  %210 = trunc i64 %209 to i16
  store i16 %210, i16* %5, align 2
  br label %211

211:                                              ; preds = %203, %201, %193, %180, %172, %144, %113, %100, %92, %71, %34
  %212 = load i16, i16* %5, align 2
  ret i16 %212
}

declare dso_local i64 @hpi6000_wait_dsp_ack(%struct.hpi_adapter_obj*, i64, i32) #1

declare dso_local i64 @hpi_read_word(%struct.dsp_obj*, i32) #1

declare dso_local i32 @HPI_HIF_ADDR(i64) #1

declare dso_local i64 @hpi6000_check_PCI2040_error_flag(%struct.hpi_adapter_obj*, i32) #1

declare dso_local i64 @hpi6000_dsp_block_write32(%struct.hpi_adapter_obj*, i64, i64, i64*, i64) #1

declare dso_local i64 @hpi6000_send_host_command(%struct.hpi_adapter_obj*, i64, i32) #1

declare dso_local i32 @hpi6000_send_dsp_interrupt(%struct.dsp_obj*) #1

declare dso_local i64 @hpi6000_dsp_block_read32(%struct.hpi_adapter_obj*, i64, i64, i64*, i64) #1

declare dso_local i64 @hpi_validate_response(%struct.hpi_message*, %struct.hpi_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

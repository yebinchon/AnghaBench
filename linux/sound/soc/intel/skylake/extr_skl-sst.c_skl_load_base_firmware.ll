; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst.c_skl_load_base_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst.c_skl_load_base_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { %struct.TYPE_8__*, %struct.TYPE_7__, i32, i32, %struct.skl_dev* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.sst_dsp.0*)* }
%struct.sst_dsp.0 = type opaque
%struct.skl_dev = type { i32, i32, i32, i64 }
%struct.firmware = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Request firmware failed %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SKL_ADSP_FW_BIN_HDR_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"UUID parsing err: %d\0A\00", align 1
@SKL_DSP_CORE0_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Boot dsp core failed ret: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"CL dma prepare failed : %d\0A\00", align 1
@SKL_INIT_TIMEOUT = common dso_local global i32 0, align 4
@SKL_FW_INIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"ROM loaded, we can continue with FW loading\0A\00", align 1
@SKL_ADSP_FW_STATUS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"Timeout waiting for ROM init done, reg:0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Transfer firmware failed%d\0A\00", align 1
@SKL_IPC_BOOT_MSECS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"DSP boot failed, FW Ready timed-out\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Download firmware successful%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*)* @skl_load_base_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_load_base_firmware(%struct.sst_dsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sst_dsp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.skl_dev*, align 8
  %7 = alloca %struct.firmware, align 4
  %8 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %10 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %9, i32 0, i32 4
  %11 = load %struct.skl_dev*, %struct.skl_dev** %10, align 8
  store %struct.skl_dev* %11, %struct.skl_dev** %6, align 8
  %12 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %13 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %15 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %14, i32 0, i32 2
  %16 = call i32 @init_waitqueue_head(i32* %15)
  %17 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %18 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = icmp eq %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %1
  %22 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %23 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %22, i32 0, i32 0
  %24 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %25 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %28 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @request_firmware(%struct.TYPE_8__** %23, i32 %26, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %21
  %34 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %35 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 (i32, i8*, ...) @dev_err(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %207

41:                                               ; preds = %21
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %44 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %42
  %48 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %49 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %50 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = load i32, i32* @SKL_ADSP_FW_BIN_HDR_OFFSET, align 4
  %53 = call i32 @snd_skl_parse_uuids(%struct.sst_dsp* %48, %struct.TYPE_8__* %51, i32 %52, i32 0)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %47
  %57 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %58 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (i32, i8*, ...) @dev_err(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %63 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = call i32 @release_firmware(%struct.TYPE_8__* %64)
  %66 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %67 = load i32, i32* @SKL_DSP_CORE0_MASK, align 4
  %68 = call i32 @skl_dsp_disable_core(%struct.sst_dsp* %66, i32 %67)
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %207

70:                                               ; preds = %47
  br label %71

71:                                               ; preds = %70, %42
  %72 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %73 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.firmware, %struct.firmware* %7, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  %78 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %79 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.firmware, %struct.firmware* %7, i32 0, i32 0
  store i32 %82, i32* %83, align 4
  %84 = call i32 @skl_dsp_strip_extended_manifest(%struct.firmware* %7)
  %85 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %86 = call i32 @skl_dsp_boot(%struct.sst_dsp* %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %71
  %90 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %91 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 (i32, i8*, ...) @dev_err(i32 %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  br label %196

95:                                               ; preds = %71
  %96 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %97 = call i32 @skl_cldma_prepare(%struct.sst_dsp* %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %102 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = call i32 (i32, i8*, ...) @dev_err(i32 %103, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  br label %196

106:                                              ; preds = %95
  %107 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %108 = call i32 @skl_ipc_int_enable(%struct.sst_dsp* %107)
  %109 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %110 = call i32 @skl_ipc_op_int_enable(%struct.sst_dsp* %109)
  %111 = load i32, i32* @SKL_INIT_TIMEOUT, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %127, %106
  %113 = load i32, i32* %5, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %112
  %116 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %117 = load i32, i32* @SKL_FW_INIT, align 4
  %118 = call i64 @skl_check_fw_status(%struct.sst_dsp* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %122 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i32, i8*, ...) @dev_dbg(i32 %123, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %130

125:                                              ; preds = %115
  %126 = call i32 @mdelay(i32 1)
  br label %127

127:                                              ; preds = %125
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %5, align 4
  br label %112

130:                                              ; preds = %120, %112
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %144, label %133

133:                                              ; preds = %130
  %134 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %135 = load i32, i32* @SKL_ADSP_FW_STATUS, align 4
  %136 = call i32 @sst_dsp_shim_read(%struct.sst_dsp* %134, i32 %135)
  store i32 %136, i32* %8, align 4
  %137 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %138 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i32 (i32, i8*, ...) @dev_err(i32 %139, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* @EIO, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %4, align 4
  br label %187

144:                                              ; preds = %130
  %145 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %146 = getelementptr inbounds %struct.firmware, %struct.firmware* %7, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.firmware, %struct.firmware* %7, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @skl_transfer_firmware(%struct.sst_dsp* %145, i32 %147, i32 %149)
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* %4, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %144
  %154 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %155 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %4, align 4
  %158 = call i32 (i32, i8*, ...) @dev_err(i32 %156, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %157)
  br label %187

159:                                              ; preds = %144
  %160 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %161 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %164 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @SKL_IPC_BOOT_MSECS, align 4
  %167 = call i32 @msecs_to_jiffies(i32 %166)
  %168 = call i32 @wait_event_timeout(i32 %162, i32 %165, i32 %167)
  store i32 %168, i32* %4, align 4
  %169 = load i32, i32* %4, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %159
  %172 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %173 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (i32, i8*, ...) @dev_err(i32 %174, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %176 = load i32, i32* @EIO, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %4, align 4
  br label %187

178:                                              ; preds = %159
  %179 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %180 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %4, align 4
  %183 = call i32 (i32, i8*, ...) @dev_dbg(i32 %181, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %182)
  %184 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %185 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %184, i32 0, i32 1
  store i32 1, i32* %185, align 4
  br label %186

186:                                              ; preds = %178
  store i32 0, i32* %2, align 4
  br label %207

187:                                              ; preds = %171, %153, %133
  %188 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %189 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i32 (%struct.sst_dsp.0*)*, i32 (%struct.sst_dsp.0*)** %191, align 8
  %193 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %194 = bitcast %struct.sst_dsp* %193 to %struct.sst_dsp.0*
  %195 = call i32 %192(%struct.sst_dsp.0* %194)
  br label %196

196:                                              ; preds = %187, %100, %89
  %197 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %198 = load i32, i32* @SKL_DSP_CORE0_MASK, align 4
  %199 = call i32 @skl_dsp_disable_core(%struct.sst_dsp* %197, i32 %198)
  %200 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %201 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %200, i32 0, i32 0
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %201, align 8
  %203 = call i32 @release_firmware(%struct.TYPE_8__* %202)
  %204 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %205 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %204, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %205, align 8
  %206 = load i32, i32* %4, align 4
  store i32 %206, i32* %2, align 4
  br label %207

207:                                              ; preds = %196, %186, %56, %33
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_8__**, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_skl_parse_uuids(%struct.sst_dsp*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.TYPE_8__*) #1

declare dso_local i32 @skl_dsp_disable_core(%struct.sst_dsp*, i32) #1

declare dso_local i32 @skl_dsp_strip_extended_manifest(%struct.firmware*) #1

declare dso_local i32 @skl_dsp_boot(%struct.sst_dsp*) #1

declare dso_local i32 @skl_cldma_prepare(%struct.sst_dsp*) #1

declare dso_local i32 @skl_ipc_int_enable(%struct.sst_dsp*) #1

declare dso_local i32 @skl_ipc_op_int_enable(%struct.sst_dsp*) #1

declare dso_local i64 @skl_check_fw_status(%struct.sst_dsp*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @sst_dsp_shim_read(%struct.sst_dsp*, i32) #1

declare dso_local i32 @skl_transfer_firmware(%struct.sst_dsp*, i32, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

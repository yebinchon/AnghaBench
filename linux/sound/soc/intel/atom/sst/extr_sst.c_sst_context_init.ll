; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst.c_sst_context_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst.c_sst_context_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32, i32, %struct.TYPE_17__*, i32, i32, i32, i32, %struct.TYPE_16__*, %struct.stream_info*, %struct.TYPE_18__, %struct.TYPE_15__*, %struct.TYPE_13__, i32, i64, i64, i32*, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.stream_info = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_13__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@SST_RESET = common dso_local global i32 0, align 4
@SST_IPCX = common dso_local global i64 0, align 8
@SST_IPCD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Got drv data max stream %d\0A\00", align 1
@PIPE_RSVD = common dso_local global i32 0, align 4
@SST_DRV_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Registered IRQ %#x\0A\00", align 1
@SST_IMRX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PM_QOS_CPU_DMA_LATENCY = common dso_local global i32 0, align 4
@PM_QOS_DEFAULT_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Requesting FW %s now...\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@sst_firmware_load_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Firmware download failed:%d\0A\00", align 1
@sst_fw_version_attr_group = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Unable to create sysfs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_context_init(%struct.intel_sst_drv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_sst_drv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.stream_info*, align 8
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %8 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %7, i32 0, i32 10
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %10 = icmp ne %struct.TYPE_15__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %242

14:                                               ; preds = %1
  %15 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %16 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %15, i32 0, i32 10
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %242

24:                                               ; preds = %14
  %25 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %26 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %25, i32 0, i32 9
  %27 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %28 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %27, i32 0, i32 10
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @memcpy(%struct.TYPE_18__* %26, i32 %31, i32 4)
  %33 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %34 = call i32 @sst_driver_ops(%struct.intel_sst_drv* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %242

40:                                               ; preds = %24
  %41 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %42 = call i32 @sst_init_locks(%struct.intel_sst_drv* %41)
  %43 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %44 = load i32, i32* @SST_RESET, align 4
  %45 = call i32 @sst_set_fw_state_locked(%struct.intel_sst_drv* %43, i32 %44)
  %46 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %47 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %49 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %48, i32 0, i32 16
  store i64 0, i64* %49, align 8
  %50 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %51 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %50, i32 0, i32 15
  store i32* null, i32** %51, align 8
  %52 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %53 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %52, i32 0, i32 14
  store i64 0, i64* %53, align 8
  %54 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %55 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %54, i32 0, i32 13
  store i64 0, i64* %55, align 8
  %56 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %57 = call i64 @sst_workqueue_init(%struct.intel_sst_drv* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %40
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %242

62:                                               ; preds = %40
  %63 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %64 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %63, i32 0, i32 10
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %71 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %70, i32 0, i32 12
  store i32 %69, i32* %71, align 8
  %72 = load i64, i64* @SST_IPCX, align 8
  %73 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %74 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %73, i32 0, i32 10
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %72, %79
  %81 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %82 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %81, i32 0, i32 11
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  store i64 %80, i64* %83, align 8
  %84 = load i64, i64* @SST_IPCD, align 8
  %85 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %86 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %85, i32 0, i32 10
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %84, %91
  %93 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %94 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %93, i32 0, i32 11
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  store i64 %92, i64* %95, align 8
  %96 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %97 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %96, i32 0, i32 2
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %100 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %99, i32 0, i32 9
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @dev_info(%struct.TYPE_17__* %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %102)
  store i32 1, i32* %5, align 4
  br label %104

104:                                              ; preds = %126, %62
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %107 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %106, i32 0, i32 9
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sle i32 %105, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %104
  %112 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %113 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %112, i32 0, i32 8
  %114 = load %struct.stream_info*, %struct.stream_info** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %114, i64 %116
  store %struct.stream_info* %117, %struct.stream_info** %6, align 8
  %118 = load %struct.stream_info*, %struct.stream_info** %6, align 8
  %119 = call i32 @memset(%struct.stream_info* %118, i32 0, i32 8)
  %120 = load i32, i32* @PIPE_RSVD, align 4
  %121 = load %struct.stream_info*, %struct.stream_info** %6, align 8
  %122 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.stream_info*, %struct.stream_info** %6, align 8
  %124 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %123, i32 0, i32 0
  %125 = call i32 @mutex_init(i32* %124)
  br label %126

126:                                              ; preds = %111
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %5, align 4
  br label %104

129:                                              ; preds = %104
  %130 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %131 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %130, i32 0, i32 2
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %131, align 8
  %133 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %134 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %137 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %136, i32 0, i32 7
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %142 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %141, i32 0, i32 7
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @SST_DRV_NAME, align 4
  %147 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %148 = call i32 @devm_request_threaded_irq(%struct.TYPE_17__* %132, i32 %135, i32 %140, i32 %145, i32 0, i32 %146, %struct.intel_sst_drv* %147)
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* %4, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %129
  br label %236

152:                                              ; preds = %129
  %153 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %154 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %153, i32 0, i32 2
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %154, align 8
  %156 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %157 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @dev_dbg(%struct.TYPE_17__* %155, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  %160 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %161 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @SST_IMRX, align 4
  %164 = call i32 @sst_shim_write64(i32 %162, i32 %163, i32 -65480)
  %165 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %166 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %165, i32 0, i32 2
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %166, align 8
  %168 = load i32, i32* @GFP_KERNEL, align 4
  %169 = call i32 @devm_kzalloc(%struct.TYPE_17__* %167, i32 4, i32 %168)
  %170 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %171 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 4
  %172 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %173 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %152
  %177 = load i32, i32* @ENOMEM, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %4, align 4
  br label %236

179:                                              ; preds = %152
  %180 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %181 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @PM_QOS_CPU_DMA_LATENCY, align 4
  %184 = load i32, i32* @PM_QOS_DEFAULT_VALUE, align 4
  %185 = call i32 @pm_qos_add_request(i32 %182, i32 %183, i32 %184)
  %186 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %187 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %186, i32 0, i32 2
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %187, align 8
  %189 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %190 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @dev_dbg(%struct.TYPE_17__* %188, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* @THIS_MODULE, align 4
  %194 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %195 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %198 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %197, i32 0, i32 2
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %198, align 8
  %200 = load i32, i32* @GFP_KERNEL, align 4
  %201 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %202 = load i32, i32* @sst_firmware_load_cb, align 4
  %203 = call i32 @request_firmware_nowait(i32 %193, i32 1, i32 %196, %struct.TYPE_17__* %199, i32 %200, %struct.intel_sst_drv* %201, i32 %202)
  store i32 %203, i32* %4, align 4
  %204 = load i32, i32* %4, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %179
  %207 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %208 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %207, i32 0, i32 2
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %208, align 8
  %210 = load i32, i32* %4, align 4
  %211 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %209, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %210)
  br label %236

212:                                              ; preds = %179
  %213 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %214 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %213, i32 0, i32 2
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 0
  %217 = call i32 @sysfs_create_group(i32* %216, i32* @sst_fw_version_attr_group)
  store i32 %217, i32* %4, align 4
  %218 = load i32, i32* %4, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %212
  %221 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %222 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %221, i32 0, i32 2
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %222, align 8
  %224 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %223, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %230

225:                                              ; preds = %212
  %226 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %227 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %226, i32 0, i32 2
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %227, align 8
  %229 = call i32 @sst_register(%struct.TYPE_17__* %228)
  store i32 0, i32* %2, align 4
  br label %242

230:                                              ; preds = %220
  %231 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %232 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %231, i32 0, i32 2
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 0
  %235 = call i32 @sysfs_remove_group(i32* %234, i32* @sst_fw_version_attr_group)
  br label %236

236:                                              ; preds = %230, %206, %176, %151
  %237 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %238 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @destroy_workqueue(i32 %239)
  %241 = load i32, i32* %4, align 4
  store i32 %241, i32* %2, align 4
  br label %242

242:                                              ; preds = %236, %225, %59, %37, %21, %11
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local i32 @memcpy(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @sst_driver_ops(%struct.intel_sst_drv*) #1

declare dso_local i32 @sst_init_locks(%struct.intel_sst_drv*) #1

declare dso_local i32 @sst_set_fw_state_locked(%struct.intel_sst_drv*, i32) #1

declare dso_local i64 @sst_workqueue_init(%struct.intel_sst_drv*) #1

declare dso_local i32 @dev_info(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @memset(%struct.stream_info*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_17__*, i32, i32, i32, i32, i32, %struct.intel_sst_drv*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @sst_shim_write64(i32, i32, i32) #1

declare dso_local i32 @devm_kzalloc(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @pm_qos_add_request(i32, i32, i32) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i32, %struct.TYPE_17__*, i32, %struct.intel_sst_drv*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*, ...) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @sst_register(%struct.TYPE_17__*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

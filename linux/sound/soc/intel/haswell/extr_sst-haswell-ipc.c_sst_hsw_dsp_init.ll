; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_dsp_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_dsp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.sst_hsw* }
%struct.sst_hsw = type { %struct.TYPE_12__*, i32, i32*, %struct.device*, i32, i32, i32, %struct.sst_generic_ipc }
%struct.TYPE_12__ = type { i32 }
%struct.device = type { i32 }
%struct.sst_generic_ipc = type { %struct.TYPE_12__*, i8*, i8*, %struct.TYPE_11__, %struct.device* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.sst_pdata = type { %struct.sst_hsw* }
%struct.sst_hsw_ipc_fw_version = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"initialising Audio DSP IPC\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hsw_tx_msg = common dso_local global i32 0, align 4
@hsw_shim_dbg = common dso_local global i32 0, align 4
@hsw_tx_data_copy = common dso_local global i32 0, align 4
@hsw_reply_msg_match = common dso_local global i32 0, align 4
@hsw_is_dsp_busy = common dso_local global i32 0, align 4
@IPC_MAX_MAILBOX_BYTES = common dso_local global i8* null, align 8
@hsw_dev = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@SST_HSW_DX_CONTEXT_SIZE = common dso_local global i32 0, align 4
@SST_HSW_MODULE_BASE_FW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Base\00", align 1
@SST_HSW_MODULE_WAVES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"intel/IntcPP01.bin\00", align 1
@IPC_BOOT_MSECS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"error: audio DSP boot timeout IPCD 0x%x IPCX 0x%x\0A\00", align 1
@SST_IPCD = common dso_local global i32 0, align 4
@SST_IPCX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"error: failed to get stream info\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_hsw_dsp_init(%struct.device* %0, %struct.sst_pdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sst_pdata*, align 8
  %6 = alloca %struct.sst_hsw_ipc_fw_version, align 4
  %7 = alloca %struct.sst_hsw*, align 8
  %8 = alloca %struct.sst_generic_ipc*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.sst_pdata* %1, %struct.sst_pdata** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @dev_dbg(%struct.device* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sst_hsw* @devm_kzalloc(%struct.device* %12, i32 104, i32 %13)
  store %struct.sst_hsw* %14, %struct.sst_hsw** %7, align 8
  %15 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %16 = icmp eq %struct.sst_hsw* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %213

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %23 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %22, i32 0, i32 3
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %25 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %24, i32 0, i32 7
  store %struct.sst_generic_ipc* %25, %struct.sst_generic_ipc** %8, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %28 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %27, i32 0, i32 4
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load i32, i32* @hsw_tx_msg, align 4
  %30 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %31 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 4
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @hsw_shim_dbg, align 4
  %34 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %35 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 3
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @hsw_tx_data_copy, align 4
  %38 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %39 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* @hsw_reply_msg_match, align 4
  %42 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %43 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @hsw_is_dsp_busy, align 4
  %46 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %47 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load i8*, i8** @IPC_MAX_MAILBOX_BYTES, align 8
  %50 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %51 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @IPC_MAX_MAILBOX_BYTES, align 8
  %53 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %54 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %56 = call i32 @sst_ipc_init(%struct.sst_generic_ipc* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %20
  br label %211

60:                                               ; preds = %20
  %61 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %62 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %61, i32 0, i32 6
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %65 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %64, i32 0, i32 5
  %66 = call i32 @init_waitqueue_head(i32* %65)
  %67 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  store %struct.sst_hsw* %67, %struct.sst_hsw** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @hsw_dev, i32 0, i32 0), align 8
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load %struct.sst_pdata*, %struct.sst_pdata** %5, align 8
  %70 = call %struct.TYPE_12__* @sst_dsp_new(%struct.device* %68, %struct.TYPE_13__* @hsw_dev, %struct.sst_pdata* %69)
  %71 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %72 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %71, i32 0, i32 0
  store %struct.TYPE_12__* %70, %struct.TYPE_12__** %72, align 8
  %73 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %74 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %73, i32 0, i32 0
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = icmp eq %struct.TYPE_12__* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %60
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %9, align 4
  br label %208

80:                                               ; preds = %60
  %81 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %82 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %81, i32 0, i32 0
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %85 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %84, i32 0, i32 0
  store %struct.TYPE_12__* %83, %struct.TYPE_12__** %85, align 8
  %86 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %87 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SST_HSW_DX_CONTEXT_SIZE, align 4
  %92 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %93 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %92, i32 0, i32 1
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call i32* @dma_alloc_coherent(i32 %90, i32 %91, i32* %93, i32 %94)
  %96 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %97 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %96, i32 0, i32 2
  store i32* %95, i32** %97, align 8
  %98 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %99 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %80
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %9, align 4
  br label %203

105:                                              ; preds = %80
  %106 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %107 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %106, i32 0, i32 0
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = call i32 @sst_dsp_reset(%struct.TYPE_12__* %108)
  %110 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %111 = load i32, i32* @SST_HSW_MODULE_BASE_FW, align 4
  %112 = call i32 @sst_hsw_module_load(%struct.sst_hsw* %110, i32 %111, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %189

116:                                              ; preds = %105
  %117 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %118 = load i32, i32* @SST_HSW_MODULE_WAVES, align 4
  %119 = call i32 @sst_hsw_module_load(%struct.sst_hsw* %117, i32 %118, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %120 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %121 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %120, i32 0, i32 0
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = call i32 @sst_block_alloc_scratch(%struct.TYPE_12__* %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  br label %180

127:                                              ; preds = %116
  %128 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %129 = call i32 @sst_hsw_reset_param_buf(%struct.sst_hsw* %128)
  %130 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %131 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %130, i32 0, i32 0
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = call i32 @sst_dsp_boot(%struct.TYPE_12__* %132)
  %134 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %135 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %138 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @IPC_BOOT_MSECS, align 4
  %141 = call i32 @msecs_to_jiffies(i32 %140)
  %142 = call i32 @wait_event_timeout(i32 %136, i32 %139, i32 %141)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %162

145:                                              ; preds = %127
  %146 = load i32, i32* @EIO, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %9, align 4
  %148 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %149 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %148, i32 0, i32 3
  %150 = load %struct.device*, %struct.device** %149, align 8
  %151 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %152 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %151, i32 0, i32 0
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %152, align 8
  %154 = load i32, i32* @SST_IPCD, align 4
  %155 = call i32 @sst_dsp_shim_read_unlocked(%struct.TYPE_12__* %153, i32 %154)
  %156 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %157 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %156, i32 0, i32 0
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = load i32, i32* @SST_IPCX, align 4
  %160 = call i32 @sst_dsp_shim_read_unlocked(%struct.TYPE_12__* %158, i32 %159)
  %161 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %150, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %155, i32 %160)
  br label %180

162:                                              ; preds = %127
  %163 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %164 = call i32 @sst_hsw_init_module_state(%struct.sst_hsw* %163)
  %165 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %166 = call i32 @sst_hsw_fw_get_version(%struct.sst_hsw* %165, %struct.sst_hsw_ipc_fw_version* %6)
  %167 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %168 = call i32 @sst_hsw_mixer_get_info(%struct.sst_hsw* %167)
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %162
  %172 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %173 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %172, i32 0, i32 3
  %174 = load %struct.device*, %struct.device** %173, align 8
  %175 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %174, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %180

176:                                              ; preds = %162
  %177 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %178 = load %struct.sst_pdata*, %struct.sst_pdata** %5, align 8
  %179 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %178, i32 0, i32 0
  store %struct.sst_hsw* %177, %struct.sst_hsw** %179, align 8
  store i32 0, i32* %3, align 4
  br label %213

180:                                              ; preds = %171, %145, %126
  %181 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %182 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %181, i32 0, i32 0
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %182, align 8
  %184 = call i32 @sst_dsp_reset(%struct.TYPE_12__* %183)
  %185 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %186 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %185, i32 0, i32 0
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = call i32 @sst_fw_free_all(%struct.TYPE_12__* %187)
  br label %189

189:                                              ; preds = %180, %115
  %190 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %191 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %190, i32 0, i32 0
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @SST_HSW_DX_CONTEXT_SIZE, align 4
  %196 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %197 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %200 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @dma_free_coherent(i32 %194, i32 %195, i32* %198, i32 %201)
  br label %203

203:                                              ; preds = %189, %102
  %204 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %205 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %204, i32 0, i32 0
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  %207 = call i32 @sst_dsp_free(%struct.TYPE_12__* %206)
  br label %208

208:                                              ; preds = %203, %77
  %209 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %210 = call i32 @sst_ipc_fini(%struct.sst_generic_ipc* %209)
  br label %211

211:                                              ; preds = %208, %59
  %212 = load i32, i32* %9, align 4
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %211, %176, %17
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local %struct.sst_hsw* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @sst_ipc_init(%struct.sst_generic_ipc*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local %struct.TYPE_12__* @sst_dsp_new(%struct.device*, %struct.TYPE_13__*, %struct.sst_pdata*) #1

declare dso_local i32* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @sst_dsp_reset(%struct.TYPE_12__*) #1

declare dso_local i32 @sst_hsw_module_load(%struct.sst_hsw*, i32, i32, i8*) #1

declare dso_local i32 @sst_block_alloc_scratch(%struct.TYPE_12__*) #1

declare dso_local i32 @sst_hsw_reset_param_buf(%struct.sst_hsw*) #1

declare dso_local i32 @sst_dsp_boot(%struct.TYPE_12__*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @sst_dsp_shim_read_unlocked(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @sst_hsw_init_module_state(%struct.sst_hsw*) #1

declare dso_local i32 @sst_hsw_fw_get_version(%struct.sst_hsw*, %struct.sst_hsw_ipc_fw_version*) #1

declare dso_local i32 @sst_hsw_mixer_get_info(%struct.sst_hsw*) #1

declare dso_local i32 @sst_fw_free_all(%struct.TYPE_12__*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @sst_dsp_free(%struct.TYPE_12__*) #1

declare dso_local i32 @sst_ipc_fini(%struct.sst_generic_ipc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

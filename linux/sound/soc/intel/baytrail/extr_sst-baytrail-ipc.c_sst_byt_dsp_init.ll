; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_dsp_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_dsp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.sst_byt* }
%struct.sst_byt = type { i32*, %struct.sst_fw*, %struct.device*, i32, i32, i32, %struct.sst_generic_ipc }
%struct.sst_fw = type { i32 }
%struct.device = type { i32 }
%struct.sst_generic_ipc = type { i32*, i8*, i8*, %struct.TYPE_6__, %struct.device* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.sst_pdata = type { %struct.sst_byt*, i32 }
%struct.sst_byt_fw_init = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"initialising Byt DSP IPC\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@byt_tx_msg = common dso_local global i32 0, align 4
@byt_shim_dbg = common dso_local global i32 0, align 4
@byt_tx_data_copy = common dso_local global i32 0, align 4
@byt_reply_msg_match = common dso_local global i32 0, align 4
@byt_is_dsp_busy = common dso_local global i32 0, align 4
@IPC_MAX_MAILBOX_BYTES = common dso_local global i8* null, align 8
@byt_dev = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"error: failed to load firmware\0A\00", align 1
@IPC_BOOT_MSECS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"ipc: error DSP boot timeout\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"FW version: %02x.%02x.%02x.%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Build type: %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Build date: %s %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_byt_dsp_init(%struct.device* %0, %struct.sst_pdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sst_pdata*, align 8
  %6 = alloca %struct.sst_byt*, align 8
  %7 = alloca %struct.sst_generic_ipc*, align 8
  %8 = alloca %struct.sst_fw*, align 8
  %9 = alloca %struct.sst_byt_fw_init, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.sst_pdata* %1, %struct.sst_pdata** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @dev_dbg(%struct.device* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.sst_byt* @devm_kzalloc(%struct.device* %13, i32 96, i32 %14)
  store %struct.sst_byt* %15, %struct.sst_byt** %6, align 8
  %16 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %17 = icmp eq %struct.sst_byt* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %190

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %24 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %23, i32 0, i32 2
  store %struct.device* %22, %struct.device** %24, align 8
  %25 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %26 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %25, i32 0, i32 6
  store %struct.sst_generic_ipc* %26, %struct.sst_generic_ipc** %7, align 8
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %7, align 8
  %29 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %28, i32 0, i32 4
  store %struct.device* %27, %struct.device** %29, align 8
  %30 = load i32, i32* @byt_tx_msg, align 4
  %31 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %7, align 8
  %32 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @byt_shim_dbg, align 4
  %35 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %7, align 8
  %36 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @byt_tx_data_copy, align 4
  %39 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %7, align 8
  %40 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @byt_reply_msg_match, align 4
  %43 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %7, align 8
  %44 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @byt_is_dsp_busy, align 4
  %47 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %7, align 8
  %48 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load i8*, i8** @IPC_MAX_MAILBOX_BYTES, align 8
  %51 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %7, align 8
  %52 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @IPC_MAX_MAILBOX_BYTES, align 8
  %54 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %7, align 8
  %55 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %7, align 8
  %57 = call i32 @sst_ipc_init(%struct.sst_generic_ipc* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %21
  br label %188

61:                                               ; preds = %21
  %62 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %63 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %62, i32 0, i32 5
  %64 = call i32 @INIT_LIST_HEAD(i32* %63)
  %65 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %66 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %65, i32 0, i32 4
  %67 = call i32 @init_waitqueue_head(i32* %66)
  %68 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  store %struct.sst_byt* %68, %struct.sst_byt** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @byt_dev, i32 0, i32 0), align 8
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load %struct.sst_pdata*, %struct.sst_pdata** %5, align 8
  %71 = call i32* @sst_dsp_new(%struct.device* %69, %struct.TYPE_9__* @byt_dev, %struct.sst_pdata* %70)
  %72 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %73 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %72, i32 0, i32 0
  store i32* %71, i32** %73, align 8
  %74 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %75 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %61
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %10, align 4
  br label %185

81:                                               ; preds = %61
  %82 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %83 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %7, align 8
  %86 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %85, i32 0, i32 0
  store i32* %84, i32** %86, align 8
  %87 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %88 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @sst_dsp_reset(i32* %89)
  %91 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %92 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.sst_pdata*, %struct.sst_pdata** %5, align 8
  %95 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %98 = call %struct.sst_fw* @sst_fw_new(i32* %93, i32 %96, %struct.sst_byt* %97)
  store %struct.sst_fw* %98, %struct.sst_fw** %8, align 8
  %99 = load %struct.sst_fw*, %struct.sst_fw** %8, align 8
  %100 = icmp eq %struct.sst_fw* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %81
  %102 = load i32, i32* @ENODEV, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %10, align 4
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = call i32 @dev_err(%struct.device* %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %180

106:                                              ; preds = %81
  %107 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %108 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @sst_dsp_boot(i32* %109)
  %111 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %112 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %115 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @IPC_BOOT_MSECS, align 4
  %118 = call i32 @msecs_to_jiffies(i32 %117)
  %119 = call i32 @wait_event_timeout(i32 %113, i32 %116, i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %106
  %123 = load i32, i32* @EIO, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %10, align 4
  %125 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %126 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %125, i32 0, i32 2
  %127 = load %struct.device*, %struct.device** %126, align 8
  %128 = call i32 @dev_err(%struct.device* %127, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %173

129:                                              ; preds = %106
  %130 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %131 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @sst_dsp_inbox_read(i32* %132, %struct.sst_byt_fw_init* %9, i32 24)
  %134 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %135 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %134, i32 0, i32 2
  %136 = load %struct.device*, %struct.device** %135, align 8
  %137 = getelementptr inbounds %struct.sst_byt_fw_init, %struct.sst_byt_fw_init* %9, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.sst_byt_fw_init, %struct.sst_byt_fw_init* %9, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.sst_byt_fw_init, %struct.sst_byt_fw_init* %9, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.sst_byt_fw_init, %struct.sst_byt_fw_init* %9, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %136, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %139, i32 %142, i32 %145, i32 %148)
  %150 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %151 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %150, i32 0, i32 2
  %152 = load %struct.device*, %struct.device** %151, align 8
  %153 = getelementptr inbounds %struct.sst_byt_fw_init, %struct.sst_byt_fw_init* %9, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %152, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %155)
  %157 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %158 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %157, i32 0, i32 2
  %159 = load %struct.device*, %struct.device** %158, align 8
  %160 = getelementptr inbounds %struct.sst_byt_fw_init, %struct.sst_byt_fw_init* %9, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.sst_byt_fw_init, %struct.sst_byt_fw_init* %9, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %159, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %162, i32 %165)
  %167 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %168 = load %struct.sst_pdata*, %struct.sst_pdata** %5, align 8
  %169 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %168, i32 0, i32 0
  store %struct.sst_byt* %167, %struct.sst_byt** %169, align 8
  %170 = load %struct.sst_fw*, %struct.sst_fw** %8, align 8
  %171 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %172 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %171, i32 0, i32 1
  store %struct.sst_fw* %170, %struct.sst_fw** %172, align 8
  store i32 0, i32* %3, align 4
  br label %190

173:                                              ; preds = %122
  %174 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %175 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = call i32 @sst_dsp_reset(i32* %176)
  %178 = load %struct.sst_fw*, %struct.sst_fw** %8, align 8
  %179 = call i32 @sst_fw_free(%struct.sst_fw* %178)
  br label %180

180:                                              ; preds = %173, %101
  %181 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %182 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @sst_dsp_free(i32* %183)
  br label %185

185:                                              ; preds = %180, %78
  %186 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %7, align 8
  %187 = call i32 @sst_ipc_fini(%struct.sst_generic_ipc* %186)
  br label %188

188:                                              ; preds = %185, %60
  %189 = load i32, i32* %10, align 4
  store i32 %189, i32* %3, align 4
  br label %190

190:                                              ; preds = %188, %129, %18
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local %struct.sst_byt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @sst_ipc_init(%struct.sst_generic_ipc*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32* @sst_dsp_new(%struct.device*, %struct.TYPE_9__*, %struct.sst_pdata*) #1

declare dso_local i32 @sst_dsp_reset(i32*) #1

declare dso_local %struct.sst_fw* @sst_fw_new(i32*, i32, %struct.sst_byt*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @sst_dsp_boot(i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @sst_dsp_inbox_read(i32*, %struct.sst_byt_fw_init*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @sst_fw_free(%struct.sst_fw*) #1

declare dso_local i32 @sst_dsp_free(i32*) #1

declare dso_local i32 @sst_ipc_fini(%struct.sst_generic_ipc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

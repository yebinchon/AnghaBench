; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_ipc.c_snd_sof_ipc_set_get_comp_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_ipc.c_snd_sof_ipc_set_get_comp_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_ipc = type { %struct.snd_sof_dev* }
%struct.snd_sof_dev = type { i32, i32, i32, %struct.sof_ipc_fw_ready }
%struct.sof_ipc_fw_ready = type { %struct.sof_ipc_fw_version }
%struct.sof_ipc_fw_version = type { i64 }
%struct.snd_sof_control = type { i32, i32, i32, i32, %struct.sof_ipc_ctrl_data* }
%struct.sof_ipc_ctrl_data = type { i32, i32, i32, i32, %struct.TYPE_6__, i64, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sof_ipc_ctrl_data_params = type { i32, i32, i32 }

@SOF_IPC_GLB_COMP_MSG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SOF_IPC_MSG_MAX_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"error: set/get ctrl ipc comp %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"large ipc size %u, control size %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"error: incompatible FW ABI version\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"error: set/get large ctrl ipc comp %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sof_ipc_set_get_comp_data(%struct.snd_sof_ipc* %0, %struct.snd_sof_control* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_sof_ipc*, align 8
  %9 = alloca %struct.snd_sof_control*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sof_ipc_ctrl_data*, align 8
  %15 = alloca %struct.snd_sof_dev*, align 8
  %16 = alloca %struct.sof_ipc_fw_ready*, align 8
  %17 = alloca %struct.sof_ipc_fw_version*, align 8
  %18 = alloca %struct.sof_ipc_ctrl_data_params, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.snd_sof_ipc* %0, %struct.snd_sof_ipc** %8, align 8
  store %struct.snd_sof_control* %1, %struct.snd_sof_control** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load %struct.snd_sof_control*, %struct.snd_sof_control** %9, align 8
  %22 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %21, i32 0, i32 4
  %23 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %22, align 8
  store %struct.sof_ipc_ctrl_data* %23, %struct.sof_ipc_ctrl_data** %14, align 8
  %24 = load %struct.snd_sof_ipc*, %struct.snd_sof_ipc** %8, align 8
  %25 = getelementptr inbounds %struct.snd_sof_ipc, %struct.snd_sof_ipc* %24, i32 0, i32 0
  %26 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %25, align 8
  store %struct.snd_sof_dev* %26, %struct.snd_sof_dev** %15, align 8
  %27 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %15, align 8
  %28 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %27, i32 0, i32 3
  store %struct.sof_ipc_fw_ready* %28, %struct.sof_ipc_fw_ready** %16, align 8
  %29 = load %struct.sof_ipc_fw_ready*, %struct.sof_ipc_fw_ready** %16, align 8
  %30 = getelementptr inbounds %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_ready* %29, i32 0, i32 0
  store %struct.sof_ipc_fw_version* %30, %struct.sof_ipc_fw_version** %17, align 8
  %31 = load %struct.snd_sof_control*, %struct.snd_sof_control** %9, align 8
  %32 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %70

35:                                               ; preds = %6
  %36 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %14, align 8
  %37 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  store i64 %40, i64* %19, align 8
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %35
  %44 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %15, align 8
  %45 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %15, align 8
  %46 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.snd_sof_control*, %struct.snd_sof_control** %9, align 8
  %49 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %14, align 8
  %52 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %19, align 8
  %55 = call i32 @snd_sof_dsp_block_write(%struct.snd_sof_dev* %44, i32 %47, i32 %50, i32 %53, i64 %54)
  br label %69

56:                                               ; preds = %35
  %57 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %15, align 8
  %58 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %15, align 8
  %59 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.snd_sof_control*, %struct.snd_sof_control** %9, align 8
  %62 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %14, align 8
  %65 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %19, align 8
  %68 = call i32 @snd_sof_dsp_block_read(%struct.snd_sof_dev* %57, i32 %60, i32 %63, i32 %66, i64 %67)
  br label %69

69:                                               ; preds = %56, %43
  store i32 0, i32* %7, align 4
  br label %240

70:                                               ; preds = %6
  %71 = load i32, i32* @SOF_IPC_GLB_COMP_MSG, align 4
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %14, align 8
  %75 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 %73, i32* %77, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %14, align 8
  %80 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %14, align 8
  %83 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.snd_sof_control*, %struct.snd_sof_control** %9, align 8
  %85 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %14, align 8
  %88 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %14, align 8
  %90 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %89, i32 0, i32 7
  store i64 0, i64* %90, align 8
  %91 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %14, align 8
  %92 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %134 [
    i32 131, label %94
    i32 130, label %94
    i32 129, label %107
    i32 128, label %107
    i32 133, label %120
    i32 132, label %120
  ]

94:                                               ; preds = %70, %70
  %95 = load %struct.snd_sof_control*, %struct.snd_sof_control** %9, align 8
  %96 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = mul i64 %98, 4
  %100 = trunc i64 %99 to i32
  %101 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %18, i32 0, i32 0
  store i32 %100, i32* %101, align 4
  %102 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %18, i32 0, i32 1
  store i32 56, i32* %102, align 4
  %103 = load %struct.snd_sof_control*, %struct.snd_sof_control** %9, align 8
  %104 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %18, i32 0, i32 2
  store i32 %105, i32* %106, align 4
  br label %137

107:                                              ; preds = %70, %70
  %108 = load %struct.snd_sof_control*, %struct.snd_sof_control** %9, align 8
  %109 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = mul i64 %111, 4
  %113 = trunc i64 %112 to i32
  %114 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %18, i32 0, i32 0
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %18, i32 0, i32 1
  store i32 56, i32* %115, align 4
  %116 = load %struct.snd_sof_control*, %struct.snd_sof_control** %9, align 8
  %117 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %18, i32 0, i32 2
  store i32 %118, i32* %119, align 4
  br label %137

120:                                              ; preds = %70, %70
  %121 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %14, align 8
  %122 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %121, i32 0, i32 6
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %18, i32 0, i32 0
  store i32 %125, i32* %126, align 4
  %127 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %18, i32 0, i32 1
  store i32 60, i32* %127, align 4
  %128 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %14, align 8
  %129 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %128, i32 0, i32 6
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %18, i32 0, i32 2
  store i32 %132, i32* %133, align 4
  br label %137

134:                                              ; preds = %70
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %7, align 4
  br label %240

137:                                              ; preds = %120, %107, %94
  %138 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %18, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %18, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %139, %141
  %143 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %14, align 8
  %144 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  store i32 %142, i32* %146, align 4
  %147 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %18, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %14, align 8
  %150 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %14, align 8
  %152 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %151, i32 0, i32 5
  store i64 0, i64* %152, align 8
  %153 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %14, align 8
  %154 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = load i64, i64* @SOF_IPC_MSG_MAX_SIZE, align 8
  %160 = icmp sle i64 %158, %159
  br i1 %160, label %161, label %197

161:                                              ; preds = %137
  %162 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %15, align 8
  %163 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %14, align 8
  %166 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %14, align 8
  %171 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %14, align 8
  %172 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %14, align 8
  %178 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %14, align 8
  %179 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = call i32 @sof_ipc_tx_message(i32 %164, i32 %169, %struct.sof_ipc_ctrl_data* %170, i64 %176, %struct.sof_ipc_ctrl_data* %177, i64 %183)
  store i32 %184, i32* %20, align 4
  %185 = load i32, i32* %20, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %161
  %188 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %15, align 8
  %189 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %14, align 8
  %192 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (i32, i8*, ...) @dev_err(i32 %190, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %187, %161
  %196 = load i32, i32* %20, align 4
  store i32 %196, i32* %7, align 4
  br label %240

197:                                              ; preds = %137
  %198 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %15, align 8
  %199 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %14, align 8
  %202 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = load %struct.snd_sof_control*, %struct.snd_sof_control** %9, align 8
  %208 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @dev_dbg(i32 %200, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %206, i32 %209)
  %211 = load %struct.sof_ipc_fw_version*, %struct.sof_ipc_fw_version** %17, align 8
  %212 = getelementptr inbounds %struct.sof_ipc_fw_version, %struct.sof_ipc_fw_version* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = call i64 @SOF_ABI_VER(i32 3, i32 3, i32 0)
  %215 = icmp slt i64 %213, %214
  br i1 %215, label %216, label %223

216:                                              ; preds = %197
  %217 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %15, align 8
  %218 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 (i32, i8*, ...) @dev_err(i32 %219, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %221 = load i32, i32* @EINVAL, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %7, align 4
  br label %240

223:                                              ; preds = %197
  %224 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %15, align 8
  %225 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %14, align 8
  %226 = load i32, i32* %13, align 4
  %227 = call i32 @sof_set_get_large_ctrl_data(%struct.snd_sof_dev* %224, %struct.sof_ipc_ctrl_data* %225, %struct.sof_ipc_ctrl_data_params* %18, i32 %226)
  store i32 %227, i32* %20, align 4
  %228 = load i32, i32* %20, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %223
  %231 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %15, align 8
  %232 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %14, align 8
  %235 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = call i32 (i32, i8*, ...) @dev_err(i32 %233, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %236)
  br label %238

238:                                              ; preds = %230, %223
  %239 = load i32, i32* %20, align 4
  store i32 %239, i32* %7, align 4
  br label %240

240:                                              ; preds = %238, %216, %195, %134, %69
  %241 = load i32, i32* %7, align 4
  ret i32 %241
}

declare dso_local i32 @snd_sof_dsp_block_write(%struct.snd_sof_dev*, i32, i32, i32, i64) #1

declare dso_local i32 @snd_sof_dsp_block_read(%struct.snd_sof_dev*, i32, i32, i32, i64) #1

declare dso_local i32 @sof_ipc_tx_message(i32, i32, %struct.sof_ipc_ctrl_data*, i64, %struct.sof_ipc_ctrl_data*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32) #1

declare dso_local i64 @SOF_ABI_VER(i32, i32, i32) #1

declare dso_local i32 @sof_set_get_large_ctrl_data(%struct.snd_sof_dev*, %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

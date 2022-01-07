; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_process_load.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_process_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_sof_widget = type { %struct.sof_widget_data*, i32, %struct.snd_soc_dapm_widget* }
%struct.sof_widget_data = type { i64, %struct.TYPE_13__*, i32, i32, %struct.TYPE_11__, %struct.TYPE_9__*, i32, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_soc_tplg_dapm_widget = type { %struct.snd_soc_tplg_private }
%struct.snd_soc_tplg_private = type { i32, i32 }
%struct.sof_ipc_comp_reply = type { i32 }
%struct.snd_sof_dev = type { i32, i32 }
%struct.sof_ipc_comp_process = type { i64, %struct.TYPE_13__*, i32, i32, %struct.TYPE_11__, %struct.TYPE_9__*, i32, %struct.TYPE_12__ }

@SOF_COMP_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"error: invalid process comp type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SOF_IPC_MSG_MAX_SIZE = common dso_local global i64 0, align 8
@SOF_IPC_GLB_TPLG_MSG = common dso_local global i32 0, align 4
@SOF_IPC_TPLG_COMP_NEW = common dso_local global i32 0, align 4
@comp_tokens = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"error: parse process.cfg tokens failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"error: create process failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"error: send control failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, %struct.snd_sof_widget*, %struct.snd_soc_tplg_dapm_widget*, %struct.sof_ipc_comp_reply*, i32)* @sof_process_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_process_load(%struct.snd_soc_component* %0, i32 %1, %struct.snd_sof_widget* %2, %struct.snd_soc_tplg_dapm_widget* %3, %struct.sof_ipc_comp_reply* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_sof_widget*, align 8
  %11 = alloca %struct.snd_soc_tplg_dapm_widget*, align 8
  %12 = alloca %struct.sof_ipc_comp_reply*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.snd_sof_dev*, align 8
  %15 = alloca %struct.snd_soc_dapm_widget*, align 8
  %16 = alloca %struct.snd_soc_tplg_private*, align 8
  %17 = alloca %struct.sof_ipc_comp_process*, align 8
  %18 = alloca %struct.sof_widget_data*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.snd_sof_widget* %2, %struct.snd_sof_widget** %10, align 8
  store %struct.snd_soc_tplg_dapm_widget* %3, %struct.snd_soc_tplg_dapm_widget** %11, align 8
  store %struct.sof_ipc_comp_reply* %4, %struct.sof_ipc_comp_reply** %12, align 8
  store i32 %5, i32* %13, align 4
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %25 = call %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %24)
  store %struct.snd_sof_dev* %25, %struct.snd_sof_dev** %14, align 8
  %26 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %10, align 8
  %27 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %26, i32 0, i32 2
  %28 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %27, align 8
  store %struct.snd_soc_dapm_widget* %28, %struct.snd_soc_dapm_widget** %15, align 8
  %29 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %11, align 8
  %30 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %29, i32 0, i32 0
  store %struct.snd_soc_tplg_private* %30, %struct.snd_soc_tplg_private** %16, align 8
  store %struct.sof_ipc_comp_process* null, %struct.sof_ipc_comp_process** %17, align 8
  store %struct.sof_widget_data* null, %struct.sof_widget_data** %18, align 8
  store i64 0, i64* %19, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @SOF_COMP_NONE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %6
  %35 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %14, align 8
  %36 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call i32 (i32, i8*, ...) @dev_err(i32 %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %303

42:                                               ; preds = %6
  %43 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %15, align 8
  %44 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %42
  %48 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %15, align 8
  %49 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.sof_widget_data* @kcalloc(i32 %50, i32 72, i32 %51)
  store %struct.sof_widget_data* %52, %struct.sof_widget_data** %18, align 8
  %53 = load %struct.sof_widget_data*, %struct.sof_widget_data** %18, align 8
  %54 = icmp ne %struct.sof_widget_data* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %303

58:                                               ; preds = %47
  %59 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %14, align 8
  %60 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %15, align 8
  %61 = load %struct.sof_widget_data*, %struct.sof_widget_data** %18, align 8
  %62 = call i32 @sof_get_control_data(%struct.snd_sof_dev* %59, %struct.snd_soc_dapm_widget* %60, %struct.sof_widget_data* %61, i64* %19)
  store i32 %62, i32* %22, align 4
  %63 = load i32, i32* %22, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %299

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %42
  %68 = load %struct.snd_soc_tplg_private*, %struct.snd_soc_tplg_private** %16, align 8
  %69 = getelementptr inbounds %struct.snd_soc_tplg_private, %struct.snd_soc_tplg_private* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  %72 = sext i32 %71 to i64
  %73 = add i64 72, %72
  %74 = load i64, i64* %19, align 8
  %75 = add i64 %73, %74
  store i64 %75, i64* %20, align 8
  %76 = load i64, i64* %20, align 8
  %77 = load i64, i64* @SOF_IPC_MSG_MAX_SIZE, align 8
  %78 = icmp ugt i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %67
  %80 = load i64, i64* %19, align 8
  %81 = load i64, i64* %20, align 8
  %82 = sub i64 %81, %80
  store i64 %82, i64* %20, align 8
  store i64 0, i64* %19, align 8
  br label %83

83:                                               ; preds = %79, %67
  %84 = load i64, i64* %20, align 8
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call %struct.sof_widget_data* @kzalloc(i64 %84, i32 %85)
  %87 = bitcast %struct.sof_widget_data* %86 to %struct.sof_ipc_comp_process*
  store %struct.sof_ipc_comp_process* %87, %struct.sof_ipc_comp_process** %17, align 8
  %88 = load %struct.sof_ipc_comp_process*, %struct.sof_ipc_comp_process** %17, align 8
  %89 = icmp ne %struct.sof_ipc_comp_process* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %83
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %22, align 4
  br label %299

93:                                               ; preds = %83
  %94 = load i64, i64* %20, align 8
  %95 = load %struct.sof_ipc_comp_process*, %struct.sof_ipc_comp_process** %17, align 8
  %96 = getelementptr inbounds %struct.sof_ipc_comp_process, %struct.sof_ipc_comp_process* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  store i64 %94, i64* %98, align 8
  %99 = load i32, i32* @SOF_IPC_GLB_TPLG_MSG, align 4
  %100 = load i32, i32* @SOF_IPC_TPLG_COMP_NEW, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.sof_ipc_comp_process*, %struct.sof_ipc_comp_process** %17, align 8
  %103 = getelementptr inbounds %struct.sof_ipc_comp_process, %struct.sof_ipc_comp_process* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  store i32 %101, i32* %105, align 8
  %106 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %10, align 8
  %107 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.sof_ipc_comp_process*, %struct.sof_ipc_comp_process** %17, align 8
  %110 = getelementptr inbounds %struct.sof_ipc_comp_process, %struct.sof_ipc_comp_process* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  store i32 %108, i32* %111, align 8
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.sof_ipc_comp_process*, %struct.sof_ipc_comp_process** %17, align 8
  %114 = getelementptr inbounds %struct.sof_ipc_comp_process, %struct.sof_ipc_comp_process* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.sof_ipc_comp_process*, %struct.sof_ipc_comp_process** %17, align 8
  %118 = getelementptr inbounds %struct.sof_ipc_comp_process, %struct.sof_ipc_comp_process* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  %120 = load %struct.sof_ipc_comp_process*, %struct.sof_ipc_comp_process** %17, align 8
  %121 = getelementptr inbounds %struct.sof_ipc_comp_process, %struct.sof_ipc_comp_process* %120, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  store i32 4, i32* %123, align 4
  %124 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %125 = load %struct.sof_ipc_comp_process*, %struct.sof_ipc_comp_process** %17, align 8
  %126 = getelementptr inbounds %struct.sof_ipc_comp_process, %struct.sof_ipc_comp_process* %125, i32 0, i32 7
  %127 = load i32, i32* @comp_tokens, align 4
  %128 = load i32, i32* @comp_tokens, align 4
  %129 = call i32 @ARRAY_SIZE(i32 %128)
  %130 = load %struct.snd_soc_tplg_private*, %struct.snd_soc_tplg_private** %16, align 8
  %131 = getelementptr inbounds %struct.snd_soc_tplg_private, %struct.snd_soc_tplg_private* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.snd_soc_tplg_private*, %struct.snd_soc_tplg_private** %16, align 8
  %134 = getelementptr inbounds %struct.snd_soc_tplg_private, %struct.snd_soc_tplg_private* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @le32_to_cpu(i32 %135)
  %137 = call i32 @sof_parse_tokens(%struct.snd_soc_component* %124, %struct.TYPE_12__* %126, i32 %127, i32 %129, i32 %132, i32 %136)
  store i32 %137, i32* %22, align 4
  %138 = load i32, i32* %22, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %93
  %141 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %14, align 8
  %142 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.snd_soc_tplg_private*, %struct.snd_soc_tplg_private** %16, align 8
  %145 = getelementptr inbounds %struct.snd_soc_tplg_private, %struct.snd_soc_tplg_private* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @le32_to_cpu(i32 %146)
  %148 = call i32 (i32, i8*, ...) @dev_err(i32 %143, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %147)
  br label %291

149:                                              ; preds = %93
  %150 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %151 = load %struct.sof_ipc_comp_process*, %struct.sof_ipc_comp_process** %17, align 8
  %152 = getelementptr inbounds %struct.sof_ipc_comp_process, %struct.sof_ipc_comp_process* %151, i32 0, i32 7
  %153 = call i32 @sof_dbg_comp_config(%struct.snd_soc_component* %150, %struct.TYPE_12__* %152)
  %154 = load i64, i64* %19, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %202

156:                                              ; preds = %149
  store i32 0, i32* %23, align 4
  br label %157

157:                                              ; preds = %198, %156
  %158 = load i32, i32* %23, align 4
  %159 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %15, align 8
  %160 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %201

163:                                              ; preds = %157
  %164 = load %struct.sof_ipc_comp_process*, %struct.sof_ipc_comp_process** %17, align 8
  %165 = getelementptr inbounds %struct.sof_ipc_comp_process, %struct.sof_ipc_comp_process* %164, i32 0, i32 6
  %166 = load i32, i32* %21, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load %struct.sof_widget_data*, %struct.sof_widget_data** %18, align 8
  %170 = load i32, i32* %23, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %169, i64 %171
  %173 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %172, i32 0, i32 5
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.sof_widget_data*, %struct.sof_widget_data** %18, align 8
  %178 = load i32, i32* %23, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %177, i64 %179
  %181 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %180, i32 0, i32 5
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @memcpy(i32* %168, i32 %176, i64 %184)
  %186 = load %struct.sof_widget_data*, %struct.sof_widget_data** %18, align 8
  %187 = load i32, i32* %23, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %186, i64 %188
  %190 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %189, i32 0, i32 5
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* %21, align 4
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %195, %193
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %21, align 4
  br label %198

198:                                              ; preds = %163
  %199 = load i32, i32* %23, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %23, align 4
  br label %157

201:                                              ; preds = %157
  br label %202

202:                                              ; preds = %201, %149
  %203 = load i64, i64* %19, align 8
  %204 = load %struct.sof_ipc_comp_process*, %struct.sof_ipc_comp_process** %17, align 8
  %205 = getelementptr inbounds %struct.sof_ipc_comp_process, %struct.sof_ipc_comp_process* %204, i32 0, i32 0
  store i64 %203, i64* %205, align 8
  %206 = load %struct.sof_ipc_comp_process*, %struct.sof_ipc_comp_process** %17, align 8
  %207 = bitcast %struct.sof_ipc_comp_process* %206 to %struct.sof_widget_data*
  %208 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %10, align 8
  %209 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %208, i32 0, i32 0
  store %struct.sof_widget_data* %207, %struct.sof_widget_data** %209, align 8
  %210 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %14, align 8
  %211 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.sof_ipc_comp_process*, %struct.sof_ipc_comp_process** %17, align 8
  %214 = getelementptr inbounds %struct.sof_ipc_comp_process, %struct.sof_ipc_comp_process* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.sof_ipc_comp_process*, %struct.sof_ipc_comp_process** %17, align 8
  %219 = bitcast %struct.sof_ipc_comp_process* %218 to %struct.sof_widget_data*
  %220 = load i64, i64* %20, align 8
  %221 = load %struct.sof_ipc_comp_reply*, %struct.sof_ipc_comp_reply** %12, align 8
  %222 = call i32 @sof_ipc_tx_message(i32 %212, i32 %217, %struct.sof_widget_data* %219, i64 %220, %struct.sof_ipc_comp_reply* %221, i32 4)
  store i32 %222, i32* %22, align 4
  %223 = load i32, i32* %22, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %202
  %226 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %14, align 8
  %227 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 (i32, i8*, ...) @dev_err(i32 %228, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %291

230:                                              ; preds = %202
  %231 = load i64, i64* %19, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %230
  br label %299

234:                                              ; preds = %230
  store i32 0, i32* %23, align 4
  br label %235

235:                                              ; preds = %287, %234
  %236 = load i32, i32* %23, align 4
  %237 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %15, align 8
  %238 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = icmp slt i32 %236, %239
  br i1 %240, label %241, label %290

241:                                              ; preds = %235
  %242 = load %struct.sof_widget_data*, %struct.sof_widget_data** %18, align 8
  %243 = load i32, i32* %23, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %242, i64 %244
  %246 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %245, i32 0, i32 1
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 1
  store i64 0, i64* %248, align 8
  %249 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %14, align 8
  %250 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.sof_widget_data*, %struct.sof_widget_data** %18, align 8
  %253 = load i32, i32* %23, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %252, i64 %254
  %256 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %255, i32 0, i32 1
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %256, align 8
  %258 = load %struct.sof_widget_data*, %struct.sof_widget_data** %18, align 8
  %259 = load i32, i32* %23, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %258, i64 %260
  %262 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.sof_widget_data*, %struct.sof_widget_data** %18, align 8
  %265 = load i32, i32* %23, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %264, i64 %266
  %268 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.sof_widget_data*, %struct.sof_widget_data** %18, align 8
  %271 = load i32, i32* %23, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %270, i64 %272
  %274 = getelementptr inbounds %struct.sof_widget_data, %struct.sof_widget_data* %273, i32 0, i32 1
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @snd_sof_ipc_set_get_comp_data(i32 %251, %struct.TYPE_13__* %257, i32 %263, i32 %269, i32 %277, i32 1)
  store i32 %278, i32* %22, align 4
  %279 = load i32, i32* %22, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %241
  %282 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %14, align 8
  %283 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = call i32 (i32, i8*, ...) @dev_err(i32 %284, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %290

286:                                              ; preds = %241
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %23, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %23, align 4
  br label %235

290:                                              ; preds = %281, %235
  br label %291

291:                                              ; preds = %290, %225, %140
  %292 = load i32, i32* %22, align 4
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %291
  %295 = load %struct.sof_ipc_comp_process*, %struct.sof_ipc_comp_process** %17, align 8
  %296 = bitcast %struct.sof_ipc_comp_process* %295 to %struct.sof_widget_data*
  %297 = call i32 @kfree(%struct.sof_widget_data* %296)
  br label %298

298:                                              ; preds = %294, %291
  br label %299

299:                                              ; preds = %298, %233, %90, %65
  %300 = load %struct.sof_widget_data*, %struct.sof_widget_data** %18, align 8
  %301 = call i32 @kfree(%struct.sof_widget_data* %300)
  %302 = load i32, i32* %22, align 4
  store i32 %302, i32* %7, align 4
  br label %303

303:                                              ; preds = %299, %55, %34
  %304 = load i32, i32* %7, align 4
  ret i32 %304
}

declare dso_local %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.sof_widget_data* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @sof_get_control_data(%struct.snd_sof_dev*, %struct.snd_soc_dapm_widget*, %struct.sof_widget_data*, i64*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.sof_widget_data* @kzalloc(i64, i32) #1

declare dso_local i32 @sof_parse_tokens(%struct.snd_soc_component*, %struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @sof_dbg_comp_config(%struct.snd_soc_component*, %struct.TYPE_12__*) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @sof_ipc_tx_message(i32, i32, %struct.sof_widget_data*, i64, %struct.sof_ipc_comp_reply*, i32) #1

declare dso_local i32 @snd_sof_ipc_set_get_comp_data(i32, %struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.sof_widget_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

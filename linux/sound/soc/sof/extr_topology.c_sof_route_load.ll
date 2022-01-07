; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_route_load.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_route_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_route = type { i8*, i64, i64, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { %struct.sof_ipc_pipe_comp_connect* }
%struct.sof_ipc_pipe_comp_connect = type { i32, %struct.sof_ipc_pipe_comp_connect*, %struct.snd_soc_dapm_route*, %struct.TYPE_2__, i32, i32, %struct.snd_sof_dev* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_sof_dev = type { i32, i32, i32 }
%struct.snd_sof_widget = type { i64, i32 }
%struct.snd_sof_route = type { i32, %struct.snd_sof_route*, %struct.snd_soc_dapm_route*, %struct.TYPE_2__, i32, i32, %struct.snd_sof_dev* }
%struct.sof_ipc_reply = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SOF_IPC_GLB_TPLG_MSG = common dso_local global i32 0, align 4
@SOF_IPC_TPLG_COMP_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"sink %s control %s source %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"error: source %s not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@snd_soc_dapm_out_drv = common dso_local global i64 0, align 8
@snd_soc_dapm_output = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"error: sink %s not found\0A\00", align 1
@snd_soc_dapm_buffer = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [100 x i8] c"warning: neither Linked source component %s nor sink component %s is of buffer type, ignoring link\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"error: failed to add route sink %s control %s source %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"error: DSP failed to add route sink %s control %s source %s result %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, %struct.snd_soc_dapm_route*)* @sof_route_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_route_load(%struct.snd_soc_component* %0, i32 %1, %struct.snd_soc_dapm_route* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dapm_route*, align 8
  %8 = alloca %struct.snd_sof_dev*, align 8
  %9 = alloca %struct.sof_ipc_pipe_comp_connect*, align 8
  %10 = alloca %struct.snd_sof_widget*, align 8
  %11 = alloca %struct.snd_sof_widget*, align 8
  %12 = alloca %struct.snd_soc_dobj*, align 8
  %13 = alloca %struct.snd_sof_route*, align 8
  %14 = alloca %struct.sof_ipc_reply, align 4
  %15 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dapm_route* %2, %struct.snd_soc_dapm_route** %7, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %17 = call %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.snd_sof_dev* %17, %struct.snd_sof_dev** %8, align 8
  %18 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %18, i32 0, i32 3
  store %struct.snd_soc_dobj* %19, %struct.snd_soc_dobj** %12, align 8
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.sof_ipc_pipe_comp_connect* @kzalloc(i32 48, i32 %20)
  %22 = bitcast %struct.sof_ipc_pipe_comp_connect* %21 to %struct.snd_sof_route*
  store %struct.snd_sof_route* %22, %struct.snd_sof_route** %13, align 8
  %23 = load %struct.snd_sof_route*, %struct.snd_sof_route** %13, align 8
  %24 = icmp ne %struct.snd_sof_route* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %259

28:                                               ; preds = %3
  %29 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %30 = load %struct.snd_sof_route*, %struct.snd_sof_route** %13, align 8
  %31 = getelementptr inbounds %struct.snd_sof_route, %struct.snd_sof_route* %30, i32 0, i32 6
  store %struct.snd_sof_dev* %29, %struct.snd_sof_dev** %31, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.sof_ipc_pipe_comp_connect* @kzalloc(i32 48, i32 %32)
  store %struct.sof_ipc_pipe_comp_connect* %33, %struct.sof_ipc_pipe_comp_connect** %9, align 8
  %34 = load %struct.sof_ipc_pipe_comp_connect*, %struct.sof_ipc_pipe_comp_connect** %9, align 8
  %35 = icmp ne %struct.sof_ipc_pipe_comp_connect* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %28
  %37 = load %struct.snd_sof_route*, %struct.snd_sof_route** %13, align 8
  %38 = bitcast %struct.snd_sof_route* %37 to %struct.sof_ipc_pipe_comp_connect*
  %39 = call i32 @kfree(%struct.sof_ipc_pipe_comp_connect* %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %259

42:                                               ; preds = %28
  %43 = load %struct.sof_ipc_pipe_comp_connect*, %struct.sof_ipc_pipe_comp_connect** %9, align 8
  %44 = getelementptr inbounds %struct.sof_ipc_pipe_comp_connect, %struct.sof_ipc_pipe_comp_connect* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 48, i32* %45, align 8
  %46 = load i32, i32* @SOF_IPC_GLB_TPLG_MSG, align 4
  %47 = load i32, i32* @SOF_IPC_TPLG_COMP_CONNECT, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.sof_ipc_pipe_comp_connect*, %struct.sof_ipc_pipe_comp_connect** %9, align 8
  %50 = getelementptr inbounds %struct.sof_ipc_pipe_comp_connect, %struct.sof_ipc_pipe_comp_connect* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %53 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %56 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %59 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %42
  %63 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %64 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  br label %67

66:                                               ; preds = %42
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi i8* [ %65, %62 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %66 ]
  %69 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %70 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i32, i8*, i64, i8*, ...) @dev_dbg(i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %57, i8* %68, i64 %71)
  %73 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %74 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %75 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = call %struct.snd_sof_widget* @snd_sof_find_swidget(%struct.snd_sof_dev* %73, i8* %77)
  store %struct.snd_sof_widget* %78, %struct.snd_sof_widget** %10, align 8
  %79 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %10, align 8
  %80 = icmp ne %struct.snd_sof_widget* %79, null
  br i1 %80, label %91, label %81

81:                                               ; preds = %67
  %82 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %83 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %86 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %15, align 4
  br label %252

91:                                               ; preds = %67
  %92 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %10, align 8
  %93 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @snd_soc_dapm_out_drv, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %91
  %98 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %10, align 8
  %99 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @snd_soc_dapm_output, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97, %91
  br label %252

104:                                              ; preds = %97
  %105 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %10, align 8
  %106 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.sof_ipc_pipe_comp_connect*, %struct.sof_ipc_pipe_comp_connect** %9, align 8
  %109 = getelementptr inbounds %struct.sof_ipc_pipe_comp_connect, %struct.sof_ipc_pipe_comp_connect* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  %110 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %111 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %112 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i8*
  %115 = call %struct.snd_sof_widget* @snd_sof_find_swidget(%struct.snd_sof_dev* %110, i8* %114)
  store %struct.snd_sof_widget* %115, %struct.snd_sof_widget** %11, align 8
  %116 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %11, align 8
  %117 = icmp ne %struct.snd_sof_widget* %116, null
  br i1 %117, label %128, label %118

118:                                              ; preds = %104
  %119 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %120 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %123 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %124)
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %15, align 4
  br label %252

128:                                              ; preds = %104
  %129 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %11, align 8
  %130 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @snd_soc_dapm_out_drv, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %140, label %134

134:                                              ; preds = %128
  %135 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %11, align 8
  %136 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @snd_soc_dapm_output, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %134, %128
  br label %252

141:                                              ; preds = %134
  %142 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %11, align 8
  %143 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.sof_ipc_pipe_comp_connect*, %struct.sof_ipc_pipe_comp_connect** %9, align 8
  %146 = getelementptr inbounds %struct.sof_ipc_pipe_comp_connect, %struct.sof_ipc_pipe_comp_connect* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 8
  %147 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %10, align 8
  %148 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @snd_soc_dapm_buffer, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %170

152:                                              ; preds = %141
  %153 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %11, align 8
  %154 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @snd_soc_dapm_buffer, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %152
  %159 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %160 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %163 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %166 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = inttoptr i64 %167 to i8*
  %169 = call i32 (i32, i8*, i64, i8*, ...) @dev_dbg(i32 %161, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.4, i64 0, i64 0), i64 %164, i8* %168)
  store i32 0, i32* %15, align 4
  br label %252

170:                                              ; preds = %152, %141
  %171 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %172 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.sof_ipc_pipe_comp_connect*, %struct.sof_ipc_pipe_comp_connect** %9, align 8
  %175 = getelementptr inbounds %struct.sof_ipc_pipe_comp_connect, %struct.sof_ipc_pipe_comp_connect* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.sof_ipc_pipe_comp_connect*, %struct.sof_ipc_pipe_comp_connect** %9, align 8
  %179 = call i32 @sof_ipc_tx_message(i32 %173, i32 %177, %struct.sof_ipc_pipe_comp_connect* %178, i32 48, %struct.sof_ipc_reply* %14, i32 4)
  store i32 %179, i32* %15, align 4
  %180 = load i32, i32* %15, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %204

182:                                              ; preds = %170
  %183 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %184 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %187 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %190 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %197

193:                                              ; preds = %182
  %194 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %195 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  br label %198

197:                                              ; preds = %182
  br label %198

198:                                              ; preds = %197, %193
  %199 = phi i8* [ %196, %193 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %197 ]
  %200 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %201 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %185, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i64 %188, i8* %199, i64 %202)
  br label %252

204:                                              ; preds = %170
  %205 = getelementptr inbounds %struct.sof_ipc_reply, %struct.sof_ipc_reply* %14, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %234

208:                                              ; preds = %204
  %209 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %210 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %213 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %216 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %223

219:                                              ; preds = %208
  %220 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %221 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  br label %224

223:                                              ; preds = %208
  br label %224

224:                                              ; preds = %223, %219
  %225 = phi i8* [ %222, %219 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %223 ]
  %226 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %227 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds %struct.sof_ipc_reply, %struct.sof_ipc_reply* %14, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %211, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), i64 %214, i8* %225, i64 %228, i32 %230)
  %232 = getelementptr inbounds %struct.sof_ipc_reply, %struct.sof_ipc_reply* %14, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* %15, align 4
  br label %252

234:                                              ; preds = %204
  %235 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %236 = load %struct.snd_sof_route*, %struct.snd_sof_route** %13, align 8
  %237 = getelementptr inbounds %struct.snd_sof_route, %struct.snd_sof_route* %236, i32 0, i32 2
  store %struct.snd_soc_dapm_route* %235, %struct.snd_soc_dapm_route** %237, align 8
  %238 = load %struct.snd_sof_route*, %struct.snd_sof_route** %13, align 8
  %239 = bitcast %struct.snd_sof_route* %238 to %struct.sof_ipc_pipe_comp_connect*
  %240 = load %struct.snd_soc_dobj*, %struct.snd_soc_dobj** %12, align 8
  %241 = getelementptr inbounds %struct.snd_soc_dobj, %struct.snd_soc_dobj* %240, i32 0, i32 0
  store %struct.sof_ipc_pipe_comp_connect* %239, %struct.sof_ipc_pipe_comp_connect** %241, align 8
  %242 = load %struct.sof_ipc_pipe_comp_connect*, %struct.sof_ipc_pipe_comp_connect** %9, align 8
  %243 = bitcast %struct.sof_ipc_pipe_comp_connect* %242 to %struct.snd_sof_route*
  %244 = load %struct.snd_sof_route*, %struct.snd_sof_route** %13, align 8
  %245 = getelementptr inbounds %struct.snd_sof_route, %struct.snd_sof_route* %244, i32 0, i32 1
  store %struct.snd_sof_route* %243, %struct.snd_sof_route** %245, align 8
  %246 = load %struct.snd_sof_route*, %struct.snd_sof_route** %13, align 8
  %247 = getelementptr inbounds %struct.snd_sof_route, %struct.snd_sof_route* %246, i32 0, i32 0
  %248 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %249 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %248, i32 0, i32 0
  %250 = call i32 @list_add(i32* %247, i32* %249)
  %251 = load i32, i32* %15, align 4
  store i32 %251, i32* %4, align 4
  br label %259

252:                                              ; preds = %224, %198, %158, %140, %118, %103, %81
  %253 = load %struct.sof_ipc_pipe_comp_connect*, %struct.sof_ipc_pipe_comp_connect** %9, align 8
  %254 = call i32 @kfree(%struct.sof_ipc_pipe_comp_connect* %253)
  %255 = load %struct.snd_sof_route*, %struct.snd_sof_route** %13, align 8
  %256 = bitcast %struct.snd_sof_route* %255 to %struct.sof_ipc_pipe_comp_connect*
  %257 = call i32 @kfree(%struct.sof_ipc_pipe_comp_connect* %256)
  %258 = load i32, i32* %15, align 4
  store i32 %258, i32* %4, align 4
  br label %259

259:                                              ; preds = %252, %234, %36, %25
  %260 = load i32, i32* %4, align 4
  ret i32 %260
}

declare dso_local %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.sof_ipc_pipe_comp_connect* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.sof_ipc_pipe_comp_connect*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i8*, ...) #1

declare dso_local %struct.snd_sof_widget* @snd_sof_find_swidget(%struct.snd_sof_dev*, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i64, ...) #1

declare dso_local i32 @sof_ipc_tx_message(i32, i32, %struct.sof_ipc_pipe_comp_connect*, i32, %struct.sof_ipc_reply*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

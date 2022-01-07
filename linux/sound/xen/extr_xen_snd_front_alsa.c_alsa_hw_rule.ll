; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_alsa.c_alsa_hw_rule.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_alsa.c_alsa_hw_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { %struct.xen_snd_front_pcm_stream_info* }
%struct.xen_snd_front_pcm_stream_info = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.device }
%struct.device = type { i32 }
%struct.snd_mask = type { i8** }
%struct.snd_interval = type { i32, i32, i32, i64, i64 }
%struct.xensnd_query_hw_param = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to query ALSA HW parameters\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @alsa_hw_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alsa_hw_rule(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_pcm_hw_rule*, align 8
  %6 = alloca %struct.xen_snd_front_pcm_stream_info*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.snd_mask*, align 8
  %9 = alloca %struct.snd_interval*, align 8
  %10 = alloca %struct.snd_interval*, align 8
  %11 = alloca %struct.snd_interval*, align 8
  %12 = alloca %struct.snd_interval*, align 8
  %13 = alloca %struct.xensnd_query_hw_param, align 4
  %14 = alloca %struct.xensnd_query_hw_param, align 4
  %15 = alloca %struct.snd_interval, align 8
  %16 = alloca %struct.snd_mask, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %4, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %5, align 8
  %20 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %5, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %20, i32 0, i32 0
  %22 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %21, align 8
  store %struct.xen_snd_front_pcm_stream_info* %22, %struct.xen_snd_front_pcm_stream_info** %6, align 8
  %23 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %6, align 8
  %24 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store %struct.device* %28, %struct.device** %7, align 8
  %29 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %30 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %31 = call %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params* %29, i32 %30)
  store %struct.snd_mask* %31, %struct.snd_mask** %8, align 8
  %32 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %33 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %34 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %32, i32 %33)
  store %struct.snd_interval* %34, %struct.snd_interval** %9, align 8
  %35 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %36 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %37 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %35, i32 %36)
  store %struct.snd_interval* %37, %struct.snd_interval** %10, align 8
  %38 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %39 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %40 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %38, i32 %39)
  store %struct.snd_interval* %40, %struct.snd_interval** %11, align 8
  %41 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %42 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %43 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %41, i32 %42)
  store %struct.snd_interval* %43, %struct.snd_interval** %12, align 8
  %44 = load %struct.snd_mask*, %struct.snd_mask** %8, align 8
  %45 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.snd_mask*, %struct.snd_mask** %8, align 8
  %51 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = ptrtoint i8* %54 to i32
  %56 = shl i32 %55, 32
  %57 = or i32 %49, %56
  %58 = call i32 @to_sndif_formats_mask(i32 %57)
  %59 = getelementptr inbounds %struct.xensnd_query_hw_param, %struct.xensnd_query_hw_param* %13, i32 0, i32 4
  store i32 %58, i32* %59, align 4
  %60 = load %struct.snd_interval*, %struct.snd_interval** %9, align 8
  %61 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.xensnd_query_hw_param, %struct.xensnd_query_hw_param* %13, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.snd_interval*, %struct.snd_interval** %9, align 8
  %66 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.xensnd_query_hw_param, %struct.xensnd_query_hw_param* %13, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.snd_interval*, %struct.snd_interval** %10, align 8
  %71 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.xensnd_query_hw_param, %struct.xensnd_query_hw_param* %13, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.snd_interval*, %struct.snd_interval** %10, align 8
  %76 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.xensnd_query_hw_param, %struct.xensnd_query_hw_param* %13, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.snd_interval*, %struct.snd_interval** %12, align 8
  %81 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.xensnd_query_hw_param, %struct.xensnd_query_hw_param* %13, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.snd_interval*, %struct.snd_interval** %12, align 8
  %86 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.xensnd_query_hw_param, %struct.xensnd_query_hw_param* %13, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.snd_interval*, %struct.snd_interval** %11, align 8
  %91 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.xensnd_query_hw_param, %struct.xensnd_query_hw_param* %13, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.snd_interval*, %struct.snd_interval** %11, align 8
  %96 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.xensnd_query_hw_param, %struct.xensnd_query_hw_param* %13, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %6, align 8
  %101 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %100, i32 0, i32 0
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = call i32 @xen_snd_front_stream_query_hw_param(i32* %103, %struct.xensnd_query_hw_param* %13, %struct.xensnd_query_hw_param* %14)
  store i32 %104, i32* %19, align 4
  %105 = load i32, i32* %19, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %2
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* @ETIMEDOUT, align 4
  %115 = sub nsw i32 0, %114
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %112, %107
  %118 = load %struct.device*, %struct.device** %7, align 8
  %119 = call i32 @dev_err(%struct.device* %118, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %112
  %121 = load i32, i32* %19, align 4
  store i32 %121, i32* %3, align 4
  br label %226

122:                                              ; preds = %2
  store i32 0, i32* %18, align 4
  %123 = getelementptr inbounds %struct.xensnd_query_hw_param, %struct.xensnd_query_hw_param* %14, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @to_alsa_formats_mask(i32 %124)
  store i32 %125, i32* %17, align 4
  %126 = call i32 @snd_mask_none(%struct.snd_mask* %16)
  %127 = load i32, i32* %17, align 4
  %128 = sext i32 %127 to i64
  %129 = inttoptr i64 %128 to i8*
  %130 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %16, i32 0, i32 0
  %131 = load i8**, i8*** %130, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 0
  store i8* %129, i8** %132, align 8
  %133 = load i32, i32* %17, align 4
  %134 = ashr i32 %133, 32
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to i8*
  %137 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %16, i32 0, i32 0
  %138 = load i8**, i8*** %137, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 1
  store i8* %136, i8** %139, align 8
  %140 = load %struct.snd_mask*, %struct.snd_mask** %8, align 8
  %141 = call i32 @snd_mask_refine(%struct.snd_mask* %140, %struct.snd_mask* %16)
  store i32 %141, i32* %19, align 4
  %142 = load i32, i32* %19, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %122
  %145 = load i32, i32* %19, align 4
  store i32 %145, i32* %3, align 4
  br label %226

146:                                              ; preds = %122
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* %18, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %18, align 4
  %150 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %15, i32 0, i32 4
  store i64 0, i64* %150, align 8
  %151 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %15, i32 0, i32 3
  store i64 0, i64* %151, align 8
  %152 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %15, i32 0, i32 0
  store i32 1, i32* %152, align 8
  %153 = getelementptr inbounds %struct.xensnd_query_hw_param, %struct.xensnd_query_hw_param* %14, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %15, i32 0, i32 2
  store i32 %155, i32* %156, align 8
  %157 = getelementptr inbounds %struct.xensnd_query_hw_param, %struct.xensnd_query_hw_param* %14, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %15, i32 0, i32 1
  store i32 %159, i32* %160, align 4
  %161 = load %struct.snd_interval*, %struct.snd_interval** %9, align 8
  %162 = call i32 @snd_interval_refine(%struct.snd_interval* %161, %struct.snd_interval* %15)
  store i32 %162, i32* %19, align 4
  %163 = load i32, i32* %19, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %146
  %166 = load i32, i32* %19, align 4
  store i32 %166, i32* %3, align 4
  br label %226

167:                                              ; preds = %146
  %168 = load i32, i32* %19, align 4
  %169 = load i32, i32* %18, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %18, align 4
  %171 = getelementptr inbounds %struct.xensnd_query_hw_param, %struct.xensnd_query_hw_param* %14, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %15, i32 0, i32 2
  store i32 %173, i32* %174, align 8
  %175 = getelementptr inbounds %struct.xensnd_query_hw_param, %struct.xensnd_query_hw_param* %14, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %15, i32 0, i32 1
  store i32 %177, i32* %178, align 4
  %179 = load %struct.snd_interval*, %struct.snd_interval** %10, align 8
  %180 = call i32 @snd_interval_refine(%struct.snd_interval* %179, %struct.snd_interval* %15)
  store i32 %180, i32* %19, align 4
  %181 = load i32, i32* %19, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %167
  %184 = load i32, i32* %19, align 4
  store i32 %184, i32* %3, align 4
  br label %226

185:                                              ; preds = %167
  %186 = load i32, i32* %19, align 4
  %187 = load i32, i32* %18, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %18, align 4
  %189 = getelementptr inbounds %struct.xensnd_query_hw_param, %struct.xensnd_query_hw_param* %14, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %15, i32 0, i32 2
  store i32 %191, i32* %192, align 8
  %193 = getelementptr inbounds %struct.xensnd_query_hw_param, %struct.xensnd_query_hw_param* %14, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %15, i32 0, i32 1
  store i32 %195, i32* %196, align 4
  %197 = load %struct.snd_interval*, %struct.snd_interval** %12, align 8
  %198 = call i32 @snd_interval_refine(%struct.snd_interval* %197, %struct.snd_interval* %15)
  store i32 %198, i32* %19, align 4
  %199 = load i32, i32* %19, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %185
  %202 = load i32, i32* %19, align 4
  store i32 %202, i32* %3, align 4
  br label %226

203:                                              ; preds = %185
  %204 = load i32, i32* %19, align 4
  %205 = load i32, i32* %18, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %18, align 4
  %207 = getelementptr inbounds %struct.xensnd_query_hw_param, %struct.xensnd_query_hw_param* %14, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %15, i32 0, i32 2
  store i32 %209, i32* %210, align 8
  %211 = getelementptr inbounds %struct.xensnd_query_hw_param, %struct.xensnd_query_hw_param* %14, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %15, i32 0, i32 1
  store i32 %213, i32* %214, align 4
  %215 = load %struct.snd_interval*, %struct.snd_interval** %11, align 8
  %216 = call i32 @snd_interval_refine(%struct.snd_interval* %215, %struct.snd_interval* %15)
  store i32 %216, i32* %19, align 4
  %217 = load i32, i32* %19, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %203
  %220 = load i32, i32* %19, align 4
  store i32 %220, i32* %3, align 4
  br label %226

221:                                              ; preds = %203
  %222 = load i32, i32* %19, align 4
  %223 = load i32, i32* %18, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %18, align 4
  %225 = load i32, i32* %18, align 4
  store i32 %225, i32* %3, align 4
  br label %226

226:                                              ; preds = %221, %219, %201, %183, %165, %144, %120
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @to_sndif_formats_mask(i32) #1

declare dso_local i32 @xen_snd_front_stream_query_hw_param(i32*, %struct.xensnd_query_hw_param*, %struct.xensnd_query_hw_param*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @to_alsa_formats_mask(i32) #1

declare dso_local i32 @snd_mask_none(%struct.snd_mask*) #1

declare dso_local i32 @snd_mask_refine(%struct.snd_mask*, %struct.snd_mask*) #1

declare dso_local i32 @snd_interval_refine(%struct.snd_interval*, %struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

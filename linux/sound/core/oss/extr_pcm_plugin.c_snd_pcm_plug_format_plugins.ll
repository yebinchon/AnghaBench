; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plug_format_plugins.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plug_format_plugins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_plugin_format = type { i64, i32, i8* }
%struct.snd_pcm_plugin = type { i32 }

@SNDRV_PCM_ACCESS_RW_INTERLEAVED = common dso_local global i64 0, align 8
@SNDRV_PCM_ACCESS_RW_NONINTERLEAVED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"srcformat: format=%i, rate=%i, channels=%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"dstformat: format=%i, rate=%i, channels=%i\0A\00", align 1
@SNDRV_PCM_FORMAT_MU_LAW = common dso_local global i64 0, align 8
@SNDRV_PCM_FORMAT_S16 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"channels reduction: src=%i, dst=%i returns %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"rate down resampling: src=%i, dst=%i returns %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"format change: src=%i, dst=%i returns %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"channels extension: src=%i, dst=%i returns %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"interleave change (copy: returns %i)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_plug_format_plugins(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_pcm_hw_params*, align 8
  %8 = alloca %struct.snd_pcm_plugin_format, align 8
  %9 = alloca %struct.snd_pcm_plugin_format, align 8
  %10 = alloca %struct.snd_pcm_plugin_format, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.snd_pcm_plugin*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_pcm_hw_params* %2, %struct.snd_pcm_hw_params** %7, align 8
  store %struct.snd_pcm_plugin* null, %struct.snd_pcm_plugin** %13, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %18 = call i32 @snd_pcm_plug_stream(%struct.snd_pcm_substream* %17)
  store i32 %18, i32* %15, align 4
  %19 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %20 = call i32 @params_channels(%struct.snd_pcm_hw_params* %19)
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %24 = call i64 @params_access(%struct.snd_pcm_hw_params* %23)
  %25 = load i64, i64* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %22, %3
  %28 = phi i1 [ true, %3 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %15, align 4
  switch i32 %30, label %91 [
    i32 128, label %31
    i32 129, label %61
  ]

31:                                               ; preds = %27
  %32 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %33 = call i8* @params_format(%struct.snd_pcm_hw_params* %32)
  %34 = ptrtoint i8* %33 to i64
  %35 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %37 = call i8* @params_rate(%struct.snd_pcm_hw_params* %36)
  %38 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 2
  store i8* %37, i8** %38, align 8
  %39 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %40 = call i32 @params_channels(%struct.snd_pcm_hw_params* %39)
  %41 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 1
  store i32 %40, i32* %41, align 8
  %42 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %43 = call i8* @params_format(%struct.snd_pcm_hw_params* %42)
  %44 = ptrtoint i8* %43 to i64
  %45 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 0
  store i64 %44, i64* %45, align 8
  %46 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %47 = call i8* @params_rate(%struct.snd_pcm_hw_params* %46)
  %48 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 2
  store i8* %47, i8** %48, align 8
  %49 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %50 = call i32 @params_channels(%struct.snd_pcm_hw_params* %49)
  %51 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 1
  store i32 %50, i32* %51, align 8
  %52 = load i64, i64* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 8
  store i64 %52, i64* %11, align 8
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %31
  %56 = load i64, i64* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 8
  br label %59

57:                                               ; preds = %31
  %58 = load i64, i64* @SNDRV_PCM_ACCESS_RW_NONINTERLEAVED, align 8
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i64 [ %56, %55 ], [ %58, %57 ]
  store i64 %60, i64* %12, align 8
  br label %95

61:                                               ; preds = %27
  %62 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %63 = call i8* @params_format(%struct.snd_pcm_hw_params* %62)
  %64 = ptrtoint i8* %63 to i64
  %65 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 0
  store i64 %64, i64* %65, align 8
  %66 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %67 = call i8* @params_rate(%struct.snd_pcm_hw_params* %66)
  %68 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 2
  store i8* %67, i8** %68, align 8
  %69 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %70 = call i32 @params_channels(%struct.snd_pcm_hw_params* %69)
  %71 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 1
  store i32 %70, i32* %71, align 8
  %72 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %73 = call i8* @params_format(%struct.snd_pcm_hw_params* %72)
  %74 = ptrtoint i8* %73 to i64
  %75 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 0
  store i64 %74, i64* %75, align 8
  %76 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %77 = call i8* @params_rate(%struct.snd_pcm_hw_params* %76)
  %78 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 2
  store i8* %77, i8** %78, align 8
  %79 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %80 = call i32 @params_channels(%struct.snd_pcm_hw_params* %79)
  %81 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 1
  store i32 %80, i32* %81, align 8
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %61
  %85 = load i64, i64* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 8
  br label %88

86:                                               ; preds = %61
  %87 = load i64, i64* @SNDRV_PCM_ACCESS_RW_NONINTERLEAVED, align 8
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i64 [ %85, %84 ], [ %87, %86 ]
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 8
  store i64 %90, i64* %12, align 8
  br label %95

91:                                               ; preds = %27
  %92 = call i32 (...) @snd_BUG()
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %377

95:                                               ; preds = %88, %59
  %96 = bitcast %struct.snd_pcm_plugin_format* %8 to i8*
  %97 = bitcast %struct.snd_pcm_plugin_format* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 %97, i64 24, i1 false)
  %98 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i8*, i32, ...) @pdprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %100, i8* %102, i32 %104)
  %106 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i8*, i32, ...) @pdprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %108, i8* %110, i32 %112)
  %114 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @rate_match(i8* %115, i8* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %155, label %120

120:                                              ; preds = %95
  %121 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @snd_pcm_format_linear(i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %155, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @SNDRV_PCM_FORMAT_MU_LAW, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %377

133:                                              ; preds = %125
  %134 = load i64, i64* @SNDRV_PCM_FORMAT_S16, align 8
  %135 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %8, i32 0, i32 0
  store i64 %134, i64* %135, align 8
  %136 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %137 = call i32 @snd_pcm_plugin_build_mulaw(%struct.snd_pcm_substream* %136, %struct.snd_pcm_plugin_format* %10, %struct.snd_pcm_plugin_format* %8, %struct.snd_pcm_plugin** %13)
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = load i32, i32* %14, align 4
  store i32 %141, i32* %4, align 4
  br label %377

142:                                              ; preds = %133
  %143 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %144 = call i32 @snd_pcm_plugin_append(%struct.snd_pcm_plugin* %143)
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %14, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %149 = call i32 @snd_pcm_plugin_free(%struct.snd_pcm_plugin* %148)
  %150 = load i32, i32* %14, align 4
  store i32 %150, i32* %4, align 4
  br label %377

151:                                              ; preds = %142
  %152 = bitcast %struct.snd_pcm_plugin_format* %10 to i8*
  %153 = bitcast %struct.snd_pcm_plugin_format* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %152, i8* align 8 %153, i64 24, i1 false)
  %154 = load i64, i64* %12, align 8
  store i64 %154, i64* %11, align 8
  br label %155

155:                                              ; preds = %151, %120, %95
  %156 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = icmp sgt i32 %157, %159
  br i1 %160, label %161, label %190

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %8, i32 0, i32 1
  store i32 %163, i32* %164, align 8
  %165 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %166 = call i32 @snd_pcm_plugin_build_route(%struct.snd_pcm_substream* %165, %struct.snd_pcm_plugin_format* %10, %struct.snd_pcm_plugin_format* %8, %struct.snd_pcm_plugin** %13)
  store i32 %166, i32* %14, align 4
  %167 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %8, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %14, align 4
  %172 = call i32 (i8*, i32, ...) @pdprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %168, i32 %170, i32 %171)
  %173 = load i32, i32* %14, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %161
  %176 = load i32, i32* %14, align 4
  store i32 %176, i32* %4, align 4
  br label %377

177:                                              ; preds = %161
  %178 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %179 = call i32 @snd_pcm_plugin_append(%struct.snd_pcm_plugin* %178)
  store i32 %179, i32* %14, align 4
  %180 = load i32, i32* %14, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %184 = call i32 @snd_pcm_plugin_free(%struct.snd_pcm_plugin* %183)
  %185 = load i32, i32* %14, align 4
  store i32 %185, i32* %4, align 4
  br label %377

186:                                              ; preds = %177
  %187 = bitcast %struct.snd_pcm_plugin_format* %10 to i8*
  %188 = bitcast %struct.snd_pcm_plugin_format* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %187, i8* align 8 %188, i64 24, i1 false)
  %189 = load i64, i64* %12, align 8
  store i64 %189, i64* %11, align 8
  br label %190

190:                                              ; preds = %186, %155
  %191 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 2
  %192 = load i8*, i8** %191, align 8
  %193 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 2
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @rate_match(i8* %192, i8* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %254, label %197

197:                                              ; preds = %190
  %198 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @SNDRV_PCM_FORMAT_S16, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %224

202:                                              ; preds = %197
  %203 = load i64, i64* @SNDRV_PCM_FORMAT_S16, align 8
  %204 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %8, i32 0, i32 0
  store i64 %203, i64* %204, align 8
  %205 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %206 = call i32 @snd_pcm_plugin_build_linear(%struct.snd_pcm_substream* %205, %struct.snd_pcm_plugin_format* %10, %struct.snd_pcm_plugin_format* %8, %struct.snd_pcm_plugin** %13)
  store i32 %206, i32* %14, align 4
  %207 = load i32, i32* %14, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %202
  %210 = load i32, i32* %14, align 4
  store i32 %210, i32* %4, align 4
  br label %377

211:                                              ; preds = %202
  %212 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %213 = call i32 @snd_pcm_plugin_append(%struct.snd_pcm_plugin* %212)
  store i32 %213, i32* %14, align 4
  %214 = load i32, i32* %14, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %211
  %217 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %218 = call i32 @snd_pcm_plugin_free(%struct.snd_pcm_plugin* %217)
  %219 = load i32, i32* %14, align 4
  store i32 %219, i32* %4, align 4
  br label %377

220:                                              ; preds = %211
  %221 = bitcast %struct.snd_pcm_plugin_format* %10 to i8*
  %222 = bitcast %struct.snd_pcm_plugin_format* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %221, i8* align 8 %222, i64 24, i1 false)
  %223 = load i64, i64* %12, align 8
  store i64 %223, i64* %11, align 8
  br label %224

224:                                              ; preds = %220, %197
  %225 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 2
  %226 = load i8*, i8** %225, align 8
  %227 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %8, i32 0, i32 2
  store i8* %226, i8** %227, align 8
  %228 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %229 = call i32 @snd_pcm_plugin_build_rate(%struct.snd_pcm_substream* %228, %struct.snd_pcm_plugin_format* %10, %struct.snd_pcm_plugin_format* %8, %struct.snd_pcm_plugin** %13)
  store i32 %229, i32* %14, align 4
  %230 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 2
  %231 = load i8*, i8** %230, align 8
  %232 = ptrtoint i8* %231 to i32
  %233 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %8, i32 0, i32 2
  %234 = load i8*, i8** %233, align 8
  %235 = load i32, i32* %14, align 4
  %236 = call i32 (i8*, i32, ...) @pdprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %232, i8* %234, i32 %235)
  %237 = load i32, i32* %14, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %224
  %240 = load i32, i32* %14, align 4
  store i32 %240, i32* %4, align 4
  br label %377

241:                                              ; preds = %224
  %242 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %243 = call i32 @snd_pcm_plugin_append(%struct.snd_pcm_plugin* %242)
  store i32 %243, i32* %14, align 4
  %244 = load i32, i32* %14, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %241
  %247 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %248 = call i32 @snd_pcm_plugin_free(%struct.snd_pcm_plugin* %247)
  %249 = load i32, i32* %14, align 4
  store i32 %249, i32* %4, align 4
  br label %377

250:                                              ; preds = %241
  %251 = bitcast %struct.snd_pcm_plugin_format* %10 to i8*
  %252 = bitcast %struct.snd_pcm_plugin_format* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %251, i8* align 8 %252, i64 24, i1 false)
  %253 = load i64, i64* %12, align 8
  store i64 %253, i64* %11, align 8
  br label %254

254:                                              ; preds = %250, %190
  %255 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %256, %258
  br i1 %259, label %260, label %318

260:                                              ; preds = %254
  %261 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %8, i32 0, i32 0
  store i64 %262, i64* %263, align 8
  %264 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @SNDRV_PCM_FORMAT_MU_LAW, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %273, label %268

268:                                              ; preds = %260
  %269 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %8, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @SNDRV_PCM_FORMAT_MU_LAW, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %276

273:                                              ; preds = %268, %260
  %274 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %275 = call i32 @snd_pcm_plugin_build_mulaw(%struct.snd_pcm_substream* %274, %struct.snd_pcm_plugin_format* %10, %struct.snd_pcm_plugin_format* %8, %struct.snd_pcm_plugin** %13)
  store i32 %275, i32* %14, align 4
  br label %293

276:                                              ; preds = %268
  %277 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = call i64 @snd_pcm_format_linear(i64 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %289

281:                                              ; preds = %276
  %282 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %8, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = call i64 @snd_pcm_format_linear(i64 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %281
  %287 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %288 = call i32 @snd_pcm_plugin_build_linear(%struct.snd_pcm_substream* %287, %struct.snd_pcm_plugin_format* %10, %struct.snd_pcm_plugin_format* %8, %struct.snd_pcm_plugin** %13)
  store i32 %288, i32* %14, align 4
  br label %292

289:                                              ; preds = %281, %276
  %290 = load i32, i32* @EINVAL, align 4
  %291 = sub nsw i32 0, %290
  store i32 %291, i32* %4, align 4
  br label %377

292:                                              ; preds = %286
  br label %293

293:                                              ; preds = %292, %273
  %294 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = trunc i64 %295 to i32
  %297 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %8, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load i32, i32* %14, align 4
  %300 = call i32 (i8*, i32, ...) @pdprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %296, i64 %298, i32 %299)
  %301 = load i32, i32* %14, align 4
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %293
  %304 = load i32, i32* %14, align 4
  store i32 %304, i32* %4, align 4
  br label %377

305:                                              ; preds = %293
  %306 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %307 = call i32 @snd_pcm_plugin_append(%struct.snd_pcm_plugin* %306)
  store i32 %307, i32* %14, align 4
  %308 = load i32, i32* %14, align 4
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %305
  %311 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %312 = call i32 @snd_pcm_plugin_free(%struct.snd_pcm_plugin* %311)
  %313 = load i32, i32* %14, align 4
  store i32 %313, i32* %4, align 4
  br label %377

314:                                              ; preds = %305
  %315 = bitcast %struct.snd_pcm_plugin_format* %10 to i8*
  %316 = bitcast %struct.snd_pcm_plugin_format* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %315, i8* align 8 %316, i64 24, i1 false)
  %317 = load i64, i64* %12, align 8
  store i64 %317, i64* %11, align 8
  br label %318

318:                                              ; preds = %314, %254
  %319 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = icmp slt i32 %320, %322
  br i1 %323, label %324, label %353

324:                                              ; preds = %318
  %325 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %8, i32 0, i32 1
  store i32 %326, i32* %327, align 8
  %328 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %329 = call i32 @snd_pcm_plugin_build_route(%struct.snd_pcm_substream* %328, %struct.snd_pcm_plugin_format* %10, %struct.snd_pcm_plugin_format* %8, %struct.snd_pcm_plugin** %13)
  store i32 %329, i32* %14, align 4
  %330 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 1
  %331 = load i32, i32* %330, align 8
  %332 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %8, i32 0, i32 1
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* %14, align 4
  %335 = call i32 (i8*, i32, ...) @pdprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %331, i32 %333, i32 %334)
  %336 = load i32, i32* %14, align 4
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %324
  %339 = load i32, i32* %14, align 4
  store i32 %339, i32* %4, align 4
  br label %377

340:                                              ; preds = %324
  %341 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %342 = call i32 @snd_pcm_plugin_append(%struct.snd_pcm_plugin* %341)
  store i32 %342, i32* %14, align 4
  %343 = load i32, i32* %14, align 4
  %344 = icmp slt i32 %343, 0
  br i1 %344, label %345, label %349

345:                                              ; preds = %340
  %346 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %347 = call i32 @snd_pcm_plugin_free(%struct.snd_pcm_plugin* %346)
  %348 = load i32, i32* %14, align 4
  store i32 %348, i32* %4, align 4
  br label %377

349:                                              ; preds = %340
  %350 = bitcast %struct.snd_pcm_plugin_format* %10 to i8*
  %351 = bitcast %struct.snd_pcm_plugin_format* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %350, i8* align 8 %351, i64 24, i1 false)
  %352 = load i64, i64* %12, align 8
  store i64 %352, i64* %11, align 8
  br label %353

353:                                              ; preds = %349, %318
  %354 = load i64, i64* %11, align 8
  %355 = load i64, i64* %12, align 8
  %356 = icmp ne i64 %354, %355
  br i1 %356, label %357, label %376

357:                                              ; preds = %353
  %358 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %359 = call i32 @snd_pcm_plugin_build_copy(%struct.snd_pcm_substream* %358, %struct.snd_pcm_plugin_format* %10, %struct.snd_pcm_plugin_format* %8, %struct.snd_pcm_plugin** %13)
  store i32 %359, i32* %14, align 4
  %360 = load i32, i32* %14, align 4
  %361 = call i32 (i8*, i32, ...) @pdprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %360)
  %362 = load i32, i32* %14, align 4
  %363 = icmp slt i32 %362, 0
  br i1 %363, label %364, label %366

364:                                              ; preds = %357
  %365 = load i32, i32* %14, align 4
  store i32 %365, i32* %4, align 4
  br label %377

366:                                              ; preds = %357
  %367 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %368 = call i32 @snd_pcm_plugin_append(%struct.snd_pcm_plugin* %367)
  store i32 %368, i32* %14, align 4
  %369 = load i32, i32* %14, align 4
  %370 = icmp slt i32 %369, 0
  br i1 %370, label %371, label %375

371:                                              ; preds = %366
  %372 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %373 = call i32 @snd_pcm_plugin_free(%struct.snd_pcm_plugin* %372)
  %374 = load i32, i32* %14, align 4
  store i32 %374, i32* %4, align 4
  br label %377

375:                                              ; preds = %366
  br label %376

376:                                              ; preds = %375, %353
  store i32 0, i32* %4, align 4
  br label %377

377:                                              ; preds = %376, %371, %364, %345, %338, %310, %303, %289, %246, %239, %216, %209, %182, %175, %147, %140, %130, %91
  %378 = load i32, i32* %4, align 4
  ret i32 %378
}

declare dso_local i32 @snd_pcm_plug_stream(%struct.snd_pcm_substream*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @params_access(%struct.snd_pcm_hw_params*) #1

declare dso_local i8* @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i8* @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_BUG(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pdprintf(i8*, i32, ...) #1

declare dso_local i32 @rate_match(i8*, i8*) #1

declare dso_local i64 @snd_pcm_format_linear(i64) #1

declare dso_local i32 @snd_pcm_plugin_build_mulaw(%struct.snd_pcm_substream*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin**) #1

declare dso_local i32 @snd_pcm_plugin_append(%struct.snd_pcm_plugin*) #1

declare dso_local i32 @snd_pcm_plugin_free(%struct.snd_pcm_plugin*) #1

declare dso_local i32 @snd_pcm_plugin_build_route(%struct.snd_pcm_substream*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin**) #1

declare dso_local i32 @snd_pcm_plugin_build_linear(%struct.snd_pcm_substream*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin**) #1

declare dso_local i32 @snd_pcm_plugin_build_rate(%struct.snd_pcm_substream*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin**) #1

declare dso_local i32 @snd_pcm_plugin_build_copy(%struct.snd_pcm_substream*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

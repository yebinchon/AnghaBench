; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-compress.c_sprd_platform_compr_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-compress.c_sprd_platform_compr_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { i32, %struct.snd_soc_pcm_runtime*, %struct.snd_compr_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_compr_runtime = type { %struct.sprd_compr_stream* }
%struct.sprd_compr_stream = type { i32, i32, %struct.TYPE_2__*, %struct.sprd_compr_dma*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)*, i32 (i32)*, i32 (i32)*, i32 (i32)* }
%struct.sprd_compr_dma = type { i32, i32, i32 }
%struct.snd_soc_component = type { %struct.device* }
%struct.device = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@SND_COMPRESS_PLAYBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unsupported compress direction\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to submit request: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*, i32)* @sprd_platform_compr_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_platform_compr_trigger(%struct.snd_compr_stream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_compr_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_compr_runtime*, align 8
  %7 = alloca %struct.sprd_compr_stream*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.snd_soc_component*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sprd_compr_dma*, align 8
  %16 = alloca %struct.sprd_compr_dma*, align 8
  %17 = alloca %struct.sprd_compr_dma*, align 8
  %18 = alloca %struct.sprd_compr_dma*, align 8
  %19 = alloca %struct.sprd_compr_dma*, align 8
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %21 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %20, i32 0, i32 2
  %22 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %21, align 8
  store %struct.snd_compr_runtime* %22, %struct.snd_compr_runtime** %6, align 8
  %23 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %6, align 8
  %24 = getelementptr inbounds %struct.snd_compr_runtime, %struct.snd_compr_runtime* %23, i32 0, i32 0
  %25 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %24, align 8
  store %struct.sprd_compr_stream* %25, %struct.sprd_compr_stream** %7, align 8
  %26 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %27 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %26, i32 0, i32 1
  %28 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %27, align 8
  store %struct.snd_soc_pcm_runtime* %28, %struct.snd_soc_pcm_runtime** %8, align 8
  %29 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %30 = load i32, i32* @DRV_NAME, align 4
  %31 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %29, i32 %30)
  store %struct.snd_soc_component* %31, %struct.snd_soc_component** %9, align 8
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %33 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %32, i32 0, i32 0
  %34 = load %struct.device*, %struct.device** %33, align 8
  store %struct.device* %34, %struct.device** %10, align 8
  %35 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %7, align 8
  %36 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %38 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %39 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %14, align 4
  %41 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %42 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SND_COMPRESS_PLAYBACK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %2
  %47 = load %struct.device*, %struct.device** %10, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %254

51:                                               ; preds = %2
  %52 = load i32, i32* %5, align 4
  switch i32 %52, label %249 [
    i32 132, label %53
    i32 131, label %127
    i32 130, label %171
    i32 135, label %171
    i32 133, label %205
    i32 134, label %205
    i32 128, label %239
    i32 129, label %239
  ]

53:                                               ; preds = %51
  %54 = load i32, i32* %11, align 4
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %90, %53
  %57 = load i32, i32* %13, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %93

59:                                               ; preds = %56
  %60 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %7, align 8
  %61 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %60, i32 0, i32 3
  %62 = load %struct.sprd_compr_dma*, %struct.sprd_compr_dma** %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.sprd_compr_dma, %struct.sprd_compr_dma* %62, i64 %64
  store %struct.sprd_compr_dma* %65, %struct.sprd_compr_dma** %15, align 8
  %66 = load %struct.sprd_compr_dma*, %struct.sprd_compr_dma** %15, align 8
  %67 = getelementptr inbounds %struct.sprd_compr_dma, %struct.sprd_compr_dma* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %59
  br label %90

71:                                               ; preds = %59
  %72 = load %struct.sprd_compr_dma*, %struct.sprd_compr_dma** %15, align 8
  %73 = getelementptr inbounds %struct.sprd_compr_dma, %struct.sprd_compr_dma* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dmaengine_submit(i32 %74)
  %76 = load %struct.sprd_compr_dma*, %struct.sprd_compr_dma** %15, align 8
  %77 = getelementptr inbounds %struct.sprd_compr_dma, %struct.sprd_compr_dma* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.sprd_compr_dma*, %struct.sprd_compr_dma** %15, align 8
  %79 = getelementptr inbounds %struct.sprd_compr_dma, %struct.sprd_compr_dma* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dma_submit_error(i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %71
  %85 = load %struct.device*, %struct.device** %10, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %3, align 4
  br label %254

89:                                               ; preds = %71
  br label %90

90:                                               ; preds = %89, %70
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %13, align 4
  br label %56

93:                                               ; preds = %56
  %94 = load i32, i32* %11, align 4
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %116, %93
  %97 = load i32, i32* %13, align 4
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %96
  %100 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %7, align 8
  %101 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %100, i32 0, i32 3
  %102 = load %struct.sprd_compr_dma*, %struct.sprd_compr_dma** %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.sprd_compr_dma, %struct.sprd_compr_dma* %102, i64 %104
  store %struct.sprd_compr_dma* %105, %struct.sprd_compr_dma** %16, align 8
  %106 = load %struct.sprd_compr_dma*, %struct.sprd_compr_dma** %16, align 8
  %107 = getelementptr inbounds %struct.sprd_compr_dma, %struct.sprd_compr_dma* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %99
  %111 = load %struct.sprd_compr_dma*, %struct.sprd_compr_dma** %16, align 8
  %112 = getelementptr inbounds %struct.sprd_compr_dma, %struct.sprd_compr_dma* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @dma_async_issue_pending(i32 %113)
  br label %115

115:                                              ; preds = %110, %99
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %13, align 4
  br label %96

119:                                              ; preds = %96
  %120 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %7, align 8
  %121 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %120, i32 0, i32 2
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32 (i32)*, i32 (i32)** %123, align 8
  %125 = load i32, i32* %14, align 4
  %126 = call i32 %124(i32 %125)
  store i32 %126, i32* %12, align 4
  br label %252

127:                                              ; preds = %51
  %128 = load i32, i32* %11, align 4
  %129 = sub nsw i32 %128, 1
  store i32 %129, i32* %13, align 4
  br label %130

130:                                              ; preds = %150, %127
  %131 = load i32, i32* %13, align 4
  %132 = icmp sge i32 %131, 0
  br i1 %132, label %133, label %153

133:                                              ; preds = %130
  %134 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %7, align 8
  %135 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %134, i32 0, i32 3
  %136 = load %struct.sprd_compr_dma*, %struct.sprd_compr_dma** %135, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.sprd_compr_dma, %struct.sprd_compr_dma* %136, i64 %138
  store %struct.sprd_compr_dma* %139, %struct.sprd_compr_dma** %17, align 8
  %140 = load %struct.sprd_compr_dma*, %struct.sprd_compr_dma** %17, align 8
  %141 = getelementptr inbounds %struct.sprd_compr_dma, %struct.sprd_compr_dma* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %133
  %145 = load %struct.sprd_compr_dma*, %struct.sprd_compr_dma** %17, align 8
  %146 = getelementptr inbounds %struct.sprd_compr_dma, %struct.sprd_compr_dma* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @dmaengine_terminate_async(i32 %147)
  br label %149

149:                                              ; preds = %144, %133
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %13, align 4
  br label %130

153:                                              ; preds = %130
  %154 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %7, align 8
  %155 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %154, i32 0, i32 7
  store i32 0, i32* %155, align 4
  %156 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %7, align 8
  %157 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %156, i32 0, i32 6
  store i32 0, i32* %157, align 8
  %158 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %7, align 8
  %159 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %158, i32 0, i32 1
  store i32 0, i32* %159, align 4
  %160 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %7, align 8
  %161 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %160, i32 0, i32 5
  store i32 0, i32* %161, align 4
  %162 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %7, align 8
  %163 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %162, i32 0, i32 4
  store i32 0, i32* %163, align 8
  %164 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %7, align 8
  %165 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %164, i32 0, i32 2
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i32 (i32)*, i32 (i32)** %167, align 8
  %169 = load i32, i32* %14, align 4
  %170 = call i32 %168(i32 %169)
  store i32 %170, i32* %12, align 4
  br label %252

171:                                              ; preds = %51, %51
  %172 = load i32, i32* %11, align 4
  %173 = sub nsw i32 %172, 1
  store i32 %173, i32* %13, align 4
  br label %174

174:                                              ; preds = %194, %171
  %175 = load i32, i32* %13, align 4
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %177, label %197

177:                                              ; preds = %174
  %178 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %7, align 8
  %179 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %178, i32 0, i32 3
  %180 = load %struct.sprd_compr_dma*, %struct.sprd_compr_dma** %179, align 8
  %181 = load i32, i32* %13, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.sprd_compr_dma, %struct.sprd_compr_dma* %180, i64 %182
  store %struct.sprd_compr_dma* %183, %struct.sprd_compr_dma** %18, align 8
  %184 = load %struct.sprd_compr_dma*, %struct.sprd_compr_dma** %18, align 8
  %185 = getelementptr inbounds %struct.sprd_compr_dma, %struct.sprd_compr_dma* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %177
  %189 = load %struct.sprd_compr_dma*, %struct.sprd_compr_dma** %18, align 8
  %190 = getelementptr inbounds %struct.sprd_compr_dma, %struct.sprd_compr_dma* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @dmaengine_pause(i32 %191)
  br label %193

193:                                              ; preds = %188, %177
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %13, align 4
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %13, align 4
  br label %174

197:                                              ; preds = %174
  %198 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %7, align 8
  %199 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %198, i32 0, i32 2
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 2
  %202 = load i32 (i32)*, i32 (i32)** %201, align 8
  %203 = load i32, i32* %14, align 4
  %204 = call i32 %202(i32 %203)
  store i32 %204, i32* %12, align 4
  br label %252

205:                                              ; preds = %51, %51
  %206 = load i32, i32* %11, align 4
  %207 = sub nsw i32 %206, 1
  store i32 %207, i32* %13, align 4
  br label %208

208:                                              ; preds = %228, %205
  %209 = load i32, i32* %13, align 4
  %210 = icmp sge i32 %209, 0
  br i1 %210, label %211, label %231

211:                                              ; preds = %208
  %212 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %7, align 8
  %213 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %212, i32 0, i32 3
  %214 = load %struct.sprd_compr_dma*, %struct.sprd_compr_dma** %213, align 8
  %215 = load i32, i32* %13, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.sprd_compr_dma, %struct.sprd_compr_dma* %214, i64 %216
  store %struct.sprd_compr_dma* %217, %struct.sprd_compr_dma** %19, align 8
  %218 = load %struct.sprd_compr_dma*, %struct.sprd_compr_dma** %19, align 8
  %219 = getelementptr inbounds %struct.sprd_compr_dma, %struct.sprd_compr_dma* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %211
  %223 = load %struct.sprd_compr_dma*, %struct.sprd_compr_dma** %19, align 8
  %224 = getelementptr inbounds %struct.sprd_compr_dma, %struct.sprd_compr_dma* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @dmaengine_resume(i32 %225)
  br label %227

227:                                              ; preds = %222, %211
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %13, align 4
  %230 = add nsw i32 %229, -1
  store i32 %230, i32* %13, align 4
  br label %208

231:                                              ; preds = %208
  %232 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %7, align 8
  %233 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %232, i32 0, i32 2
  %234 = load %struct.TYPE_2__*, %struct.TYPE_2__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 3
  %236 = load i32 (i32)*, i32 (i32)** %235, align 8
  %237 = load i32, i32* %14, align 4
  %238 = call i32 %236(i32 %237)
  store i32 %238, i32* %12, align 4
  br label %252

239:                                              ; preds = %51, %51
  %240 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %7, align 8
  %241 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %240, i32 0, i32 2
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 4
  %244 = load i32 (i32)*, i32 (i32)** %243, align 8
  %245 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %7, align 8
  %246 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 %244(i32 %247)
  store i32 %248, i32* %12, align 4
  br label %252

249:                                              ; preds = %51
  %250 = load i32, i32* @EINVAL, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %12, align 4
  br label %252

252:                                              ; preds = %249, %239, %231, %197, %153, %119
  %253 = load i32, i32* %12, align 4
  store i32 %253, i32* %3, align 4
  br label %254

254:                                              ; preds = %252, %84, %46
  %255 = load i32, i32* %3, align 4
  ret i32 %255
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dmaengine_submit(i32) #1

declare dso_local i32 @dma_submit_error(i32) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @dmaengine_terminate_async(i32) #1

declare dso_local i32 @dmaengine_pause(i32) #1

declare dso_local i32 @dmaengine_resume(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

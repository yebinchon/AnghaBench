; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_pcm.c_oxygen_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_pcm.c_oxygen_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_10__, i8* }
%struct.oxygen = type { i32, i32, %struct.TYPE_9__**, i32, i32, i32, %struct.snd_pcm_substream**, %struct.TYPE_7__, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 (i32, %struct.TYPE_10__*)* }

@CAPTURE_2_FROM_AC97_1 = common dso_local global i32 0, align 4
@oxygen_ac97_hardware = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@oxygen_hardware = common dso_local global %struct.TYPE_10__** null, align 8
@CAPTURE_1_FROM_SPDIF = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_32000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_64000 = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S32_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@PCM_SPDIF = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@CONTROL_SPDIF_PCM = common dso_local global i64 0, align 8
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @oxygen_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxygen_open(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.oxygen*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.oxygen* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.oxygen* %10, %struct.oxygen** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 130
  br i1 %20, label %21, label %38

21:                                               ; preds = %2
  %22 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %23 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %22, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %28 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %27, i32 0, i32 7
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CAPTURE_2_FROM_AC97_1, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 0
  %37 = bitcast %struct.TYPE_10__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 4 bitcast (%struct.TYPE_10__* @oxygen_ac97_hardware to i8*), i64 20, i1 false)
  br label %48

38:                                               ; preds = %26, %21, %2
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @oxygen_hardware, align 8
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %41, i64 %43
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = bitcast %struct.TYPE_10__* %40 to i8*
  %47 = bitcast %struct.TYPE_10__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 4 %47, i64 20, i1 false)
  br label %48

48:                                               ; preds = %38, %34
  %49 = load i32, i32* %5, align 4
  switch i32 %49, label %84 [
    i32 129, label %50
    i32 131, label %72
    i32 130, label %72
    i32 128, label %76
  ]

50:                                               ; preds = %48
  %51 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %52 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CAPTURE_1_FROM_SPDIF, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %50
  %59 = load i32, i32* @SNDRV_PCM_RATE_32000, align 4
  %60 = load i32, i32* @SNDRV_PCM_RATE_64000, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %62
  store i32 %67, i32* %65, align 8
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  store i32 44100, i32* %70, align 4
  br label %71

71:                                               ; preds = %58, %50
  br label %72

72:                                               ; preds = %48, %48, %71
  %73 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 4
  store i32 0, i32* %75, align 8
  br label %84

76:                                               ; preds = %48
  %77 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %78 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %82 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 8
  br label %84

84:                                               ; preds = %48, %76, %72
  %85 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %86 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %85, i32 0, i32 7
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i32 (i32, %struct.TYPE_10__*)*, i32 (i32, %struct.TYPE_10__*)** %87, align 8
  %89 = icmp ne i32 (i32, %struct.TYPE_10__*)* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %84
  %91 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %92 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = load i32 (i32, %struct.TYPE_10__*)*, i32 (i32, %struct.TYPE_10__*)** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %97 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %96, i32 0, i32 0
  %98 = call i32 %94(i32 %95, %struct.TYPE_10__* %97)
  br label %99

99:                                               ; preds = %90, %84
  %100 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %101 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %102 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %100, i32 0, i32 %101, i32 32)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %3, align 4
  br label %206

107:                                              ; preds = %99
  %108 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %109 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %110 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %108, i32 0, i32 %109, i32 32)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %3, align 4
  br label %206

115:                                              ; preds = %107
  %116 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %117 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @SNDRV_PCM_FMTBIT_S32_LE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %115
  %124 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %125 = call i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime* %124, i32 0, i32 32, i32 24)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %3, align 4
  br label %206

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %130, %115
  %132 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %133 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp sgt i32 %135, 2
  br i1 %136, label %137, label %146

137:                                              ; preds = %131
  %138 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %139 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %140 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %138, i32 0, i32 %139, i32 2)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %3, align 4
  br label %206

145:                                              ; preds = %137
  br label %146

146:                                              ; preds = %145, %131
  %147 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %148 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %147)
  %149 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %150 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %151 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %150, i32 0, i32 6
  %152 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %152, i64 %154
  store %struct.snd_pcm_substream* %149, %struct.snd_pcm_substream** %155, align 8
  %156 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %157 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %156, i32 0, i32 1
  %158 = call i32 @mutex_lock(i32* %157)
  %159 = load i32, i32* %5, align 4
  %160 = shl i32 1, %159
  %161 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %162 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* @PCM_SPDIF, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %202

168:                                              ; preds = %146
  %169 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %170 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %173 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %172, i32 0, i32 5
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %175 = xor i32 %174, -1
  %176 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %177 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %176, i32 0, i32 2
  %178 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %177, align 8
  %179 = load i64, i64* @CONTROL_SPDIF_PCM, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %178, i64 %179
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i64 0
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = and i32 %186, %175
  store i32 %187, i32* %185, align 4
  %188 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %189 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %192 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %193 = or i32 %191, %192
  %194 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %195 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %194, i32 0, i32 2
  %196 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %195, align 8
  %197 = load i64, i64* @CONTROL_SPDIF_PCM, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %196, i64 %197
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = call i32 @snd_ctl_notify(i32 %190, i32 %193, i32* %200)
  br label %202

202:                                              ; preds = %168, %146
  %203 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %204 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %203, i32 0, i32 1
  %205 = call i32 @mutex_unlock(i32* %204)
  store i32 0, i32* %3, align 4
  br label %206

206:                                              ; preds = %202, %143, %128, %113, %105
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local %struct.oxygen* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

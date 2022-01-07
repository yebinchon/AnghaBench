; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-pcm.c_soc_dpcm_fe_runtime_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-pcm.c_soc_dpcm_fe_runtime_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.TYPE_3__*, i32, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.snd_soc_dapm_widget_list = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"ASoC: DPCM %s runtime update for FE %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"ASoC: %s no valid %s path\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"playback\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*, i32)* @soc_dpcm_fe_runtime_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_dpcm_fe_runtime_update(%struct.snd_soc_pcm_runtime* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dapm_widget_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %185

16:                                               ; preds = %2
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %185

24:                                               ; preds = %16
  %25 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %26 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %32 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %33 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %31, i32 %36)
  %38 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %39 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %42 = call i32 @snd_soc_dai_stream_valid(%struct.TYPE_4__* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %24
  %45 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %46 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %49 = call i32 @snd_soc_dai_stream_valid(%struct.TYPE_4__* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44, %24
  br label %111

52:                                               ; preds = %44
  %53 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %54 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %61 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59, %52
  br label %111

67:                                               ; preds = %59
  %68 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %69 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %70 = call i32 @dpcm_path_get(%struct.snd_soc_pcm_runtime* %68, i32 %69, %struct.snd_soc_dapm_widget_list** %6)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %75 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %78 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dev_warn(i32 %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %185

84:                                               ; preds = %67
  %85 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %86 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @dpcm_process_paths(%struct.snd_soc_pcm_runtime* %85, i32 %86, %struct.snd_soc_dapm_widget_list** %6, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %84
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %96 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %97 = call i32 @dpcm_run_new_update(%struct.snd_soc_pcm_runtime* %95, i32 %96)
  br label %102

98:                                               ; preds = %91
  %99 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %100 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %101 = call i32 @dpcm_run_old_update(%struct.snd_soc_pcm_runtime* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %94
  %103 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %104 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %105 = call i32 @dpcm_clear_pending_state(%struct.snd_soc_pcm_runtime* %103, i32 %104)
  %106 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %107 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %108 = call i32 @dpcm_be_disconnect(%struct.snd_soc_pcm_runtime* %106, i32 %107)
  br label %109

109:                                              ; preds = %102, %84
  %110 = call i32 @dpcm_path_put(%struct.snd_soc_dapm_widget_list** %6)
  br label %111

111:                                              ; preds = %109, %66, %51
  %112 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %113 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %112, i32 0, i32 3
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %116 = call i32 @snd_soc_dai_stream_valid(%struct.TYPE_4__* %114, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %111
  %119 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %120 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %119, i32 0, i32 2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %123 = call i32 @snd_soc_dai_stream_valid(%struct.TYPE_4__* %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %118, %111
  store i32 0, i32* %3, align 4
  br label %185

126:                                              ; preds = %118
  %127 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %128 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %127, i32 0, i32 3
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %126
  %134 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %135 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %134, i32 0, i32 2
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %133, %126
  store i32 0, i32* %3, align 4
  br label %185

141:                                              ; preds = %133
  %142 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %143 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %144 = call i32 @dpcm_path_get(%struct.snd_soc_pcm_runtime* %142, i32 %143, %struct.snd_soc_dapm_widget_list** %6)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %141
  %148 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %149 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %152 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %151, i32 0, i32 0
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @dev_warn(i32 %150, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %155, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %157 = load i32, i32* %8, align 4
  store i32 %157, i32* %3, align 4
  br label %185

158:                                              ; preds = %141
  %159 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %160 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @dpcm_process_paths(%struct.snd_soc_pcm_runtime* %159, i32 %160, %struct.snd_soc_dapm_widget_list** %6, i32 %161)
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %183

165:                                              ; preds = %158
  %166 = load i32, i32* %5, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %170 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %171 = call i32 @dpcm_run_new_update(%struct.snd_soc_pcm_runtime* %169, i32 %170)
  br label %176

172:                                              ; preds = %165
  %173 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %174 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %175 = call i32 @dpcm_run_old_update(%struct.snd_soc_pcm_runtime* %173, i32 %174)
  br label %176

176:                                              ; preds = %172, %168
  %177 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %178 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %179 = call i32 @dpcm_clear_pending_state(%struct.snd_soc_pcm_runtime* %177, i32 %178)
  %180 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %181 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %182 = call i32 @dpcm_be_disconnect(%struct.snd_soc_pcm_runtime* %180, i32 %181)
  br label %183

183:                                              ; preds = %176, %158
  %184 = call i32 @dpcm_path_put(%struct.snd_soc_dapm_widget_list** %6)
  store i32 0, i32* %3, align 4
  br label %185

185:                                              ; preds = %183, %147, %140, %125, %73, %23, %15
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32) #1

declare dso_local i32 @snd_soc_dai_stream_valid(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dpcm_path_get(%struct.snd_soc_pcm_runtime*, i32, %struct.snd_soc_dapm_widget_list**) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i8*) #1

declare dso_local i32 @dpcm_process_paths(%struct.snd_soc_pcm_runtime*, i32, %struct.snd_soc_dapm_widget_list**, i32) #1

declare dso_local i32 @dpcm_run_new_update(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @dpcm_run_old_update(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @dpcm_clear_pending_state(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @dpcm_be_disconnect(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @dpcm_path_put(%struct.snd_soc_dapm_widget_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

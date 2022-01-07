; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-pcm.c_dpcm_fe_dai_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-pcm.c_dpcm_fe_dai_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime*, %struct.snd_soc_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_soc_pcm_runtime = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SND_SOC_DPCM_UPDATE_FE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ASoC: failed to start some BEs %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ASoC: open FE %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"ASoC: failed to start FE %d\0A\00", align 1
@SND_SOC_DPCM_STATE_OPEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"ASoC: failed to apply dpcm symmetry %d\0A\00", align 1
@SND_SOC_DPCM_UPDATE_NO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @dpcm_fe_dai_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpcm_fe_dai_startup(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 2
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  store %struct.snd_soc_pcm_runtime* %10, %struct.snd_soc_pcm_runtime** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 1
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %5, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SND_SOC_DPCM_UPDATE_FE, align 4
  %20 = call i32 @dpcm_set_fe_update_state(%struct.snd_soc_pcm_runtime* %17, i32 %18, i32 %19)
  %21 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dpcm_be_dai_startup(%struct.snd_soc_pcm_runtime* %21, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %30 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %89

34:                                               ; preds = %1
  %35 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %36 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %39 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_dbg(i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %45 = call i32 @soc_pcm_open(%struct.snd_pcm_substream* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %34
  %49 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %50 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %83

54:                                               ; preds = %34
  %55 = load i32, i32* @SND_SOC_DPCM_STATE_OPEN, align 4
  %56 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %57 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %55, i32* %62, align 4
  %63 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %64 = call i32 @dpcm_set_fe_runtime(%struct.snd_pcm_substream* %63)
  %65 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %66 = call i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime* %65)
  %67 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @dpcm_apply_symmetry(%struct.snd_pcm_substream* %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %54
  %73 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %74 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %83

78:                                               ; preds = %54
  %79 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @SND_SOC_DPCM_UPDATE_NO, align 4
  %82 = call i32 @dpcm_set_fe_update_state(%struct.snd_soc_pcm_runtime* %79, i32 %80, i32 %81)
  store i32 0, i32* %2, align 4
  br label %95

83:                                               ; preds = %72, %48
  %84 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %85 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %86 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dpcm_be_dai_startup_unwind(%struct.snd_soc_pcm_runtime* %84, i32 %87)
  br label %89

89:                                               ; preds = %83, %28
  %90 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @SND_SOC_DPCM_UPDATE_NO, align 4
  %93 = call i32 @dpcm_set_fe_update_state(%struct.snd_soc_pcm_runtime* %90, i32 %91, i32 %92)
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %89, %78
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @dpcm_set_fe_update_state(%struct.snd_soc_pcm_runtime*, i32, i32) #1

declare dso_local i32 @dpcm_be_dai_startup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @soc_pcm_open(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dpcm_set_fe_runtime(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @dpcm_apply_symmetry(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @dpcm_be_dai_startup_unwind(%struct.snd_soc_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

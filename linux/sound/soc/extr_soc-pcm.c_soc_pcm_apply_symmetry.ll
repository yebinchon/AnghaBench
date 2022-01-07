; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-pcm.c_soc_pcm_apply_symmetry.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-pcm.c_soc_pcm_apply_symmetry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.snd_soc_dai = type { i32, i64, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"ASoC: Symmetry forces %dHz rate\0A\00", align 1
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"ASoC: Unable to apply rate constraint: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"ASoC: Symmetry forces %d channel(s)\0A\00", align 1
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"ASoC: Unable to apply channel symmetry constraint: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"ASoC: Symmetry forces %d sample bits\0A\00", align 1
@SNDRV_PCM_HW_PARAM_SAMPLE_BITS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [59 x i8] c"ASoC: Unable to apply sample bits symmetry constraint: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @soc_pcm_apply_symmetry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_pcm_apply_symmetry(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 1
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  store %struct.snd_soc_pcm_runtime* %10, %struct.snd_soc_pcm_runtime** %6, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %55

15:                                               ; preds = %2
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %24 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %22, %15
  %30 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %31 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %41 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %42 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @snd_pcm_hw_constraint_single(i32 %39, i32 %40, i64 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %29
  %48 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %49 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %146

54:                                               ; preds = %29
  br label %55

55:                                               ; preds = %54, %22, %2
  %56 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %57 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %100

60:                                               ; preds = %55
  %61 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %62 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %60
  %68 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %69 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %100

74:                                               ; preds = %67, %60
  %75 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %76 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %79 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @dev_dbg(i32 %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %80)
  %82 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %83 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %86 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %87 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @snd_pcm_hw_constraint_single(i32 %84, i32 %85, i64 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %74
  %93 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %94 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  br label %146

99:                                               ; preds = %74
  br label %100

100:                                              ; preds = %99, %67, %55
  %101 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %102 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %145

105:                                              ; preds = %100
  %106 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %107 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %106, i32 0, i32 2
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %105
  %113 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %114 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %145

119:                                              ; preds = %112, %105
  %120 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %121 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %124 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @dev_dbg(i32 %122, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %125)
  %127 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %128 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @SNDRV_PCM_HW_PARAM_SAMPLE_BITS, align 4
  %131 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %132 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @snd_pcm_hw_constraint_single(i32 %129, i32 %130, i64 %133)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %119
  %138 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %139 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @dev_err(i32 %140, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %3, align 4
  br label %146

144:                                              ; preds = %119
  br label %145

145:                                              ; preds = %144, %112, %100
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %145, %137, %92, %47
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @snd_pcm_hw_constraint_single(i32, i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

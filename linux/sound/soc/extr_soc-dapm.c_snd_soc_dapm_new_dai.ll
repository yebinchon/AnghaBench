; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_new_dai.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_new_dai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i8*, i32, i32, i32*, %struct.snd_pcm_substream*, i32, i32, i32 }
%struct.snd_soc_card = type { i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SND_SOC_NOPM = common dso_local global i32 0, align 4
@snd_soc_dapm_dai_link = common dso_local global i32 0, align 4
@snd_soc_dai_link_event = common dso_local global i32 0, align 4
@SND_SOC_DAPM_PRE_PMU = common dso_local global i32 0, align 4
@SND_SOC_DAPM_POST_PMU = common dso_local global i32 0, align 4
@SND_SOC_DAPM_PRE_PMD = common dso_local global i32 0, align 4
@SND_SOC_DAPM_POST_PMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ASoC: adding %s widget\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_soc_dapm_widget* (%struct.snd_soc_card*, %struct.snd_pcm_substream*, i8*)* @snd_soc_dapm_new_dai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_soc_dapm_widget* @snd_soc_dapm_new_dai(%struct.snd_soc_card* %0, %struct.snd_pcm_substream* %1, i8* %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.snd_soc_dapm_widget, align 8
  %10 = alloca %struct.snd_soc_dapm_widget*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %5, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %16, align 8
  store %struct.snd_soc_pcm_runtime* %17, %struct.snd_soc_pcm_runtime** %8, align 8
  store i64 0, i64* %12, align 8
  %18 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %19 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %23 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i8* @devm_kasprintf(i32 %20, i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %26, i8* %27)
  store i8* %28, i8** %13, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.snd_soc_dapm_widget* @ERR_PTR(i32 %33)
  store %struct.snd_soc_dapm_widget* %34, %struct.snd_soc_dapm_widget** %4, align 8
  br label %145

35:                                               ; preds = %3
  %36 = call i32 @memset(%struct.snd_soc_dapm_widget* %9, i32 0, i32 48)
  %37 = load i32, i32* @SND_SOC_NOPM, align 4
  %38 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 7
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* @snd_soc_dapm_dai_link, align 4
  %40 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 6
  store i32 %39, i32* %40, align 4
  %41 = load i8*, i8** %13, align 8
  %42 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 0
  store i8* %41, i8** %42, align 8
  %43 = load i32, i32* @snd_soc_dai_link_event, align 4
  %44 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 5
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* @SND_SOC_DAPM_PRE_PMU, align 4
  %46 = load i32, i32* @SND_SOC_DAPM_POST_PMU, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @SND_SOC_DAPM_PRE_PMD, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @SND_SOC_DAPM_POST_PMD, align 4
  %51 = or i32 %49, %50
  %52 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 1
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 3
  store i32* null, i32** %53, align 8
  %54 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %55 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %100

60:                                               ; preds = %35
  %61 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %62 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %65 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i8** @devm_kcalloc(i32 %63, i32 %68, i32 8, i32 %69)
  store i8** %70, i8*** %11, align 8
  %71 = load i8**, i8*** %11, align 8
  %72 = icmp ne i8** %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %60
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %14, align 4
  br label %137

76:                                               ; preds = %60
  %77 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 2
  store i32 1, i32* %77, align 4
  %78 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %81 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %86 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i8**, i8*** %11, align 8
  %91 = call i32* @snd_soc_dapm_alloc_kcontrol(%struct.snd_soc_card* %78, i8* %79, i32 %84, i32 %89, i8** %90, i64* %12)
  %92 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 3
  store i32* %91, i32** %92, align 8
  %93 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %76
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %14, align 4
  br label %137

99:                                               ; preds = %76
  br label %101

100:                                              ; preds = %35
  store i8** null, i8*** %11, align 8
  br label %101

101:                                              ; preds = %100, %99
  %102 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %103 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 @dev_dbg(i32 %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %105)
  %107 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %108 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %107, i32 0, i32 1
  %109 = call %struct.snd_soc_dapm_widget* @snd_soc_dapm_new_control_unlocked(i32* %108, %struct.snd_soc_dapm_widget* %9)
  store %struct.snd_soc_dapm_widget* %109, %struct.snd_soc_dapm_widget** %10, align 8
  %110 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %10, align 8
  %111 = call i64 @IS_ERR(%struct.snd_soc_dapm_widget* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %101
  %114 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %10, align 8
  %115 = call i32 @PTR_ERR(%struct.snd_soc_dapm_widget* %114)
  store i32 %115, i32* %14, align 4
  br label %121

116:                                              ; preds = %101
  %117 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %118 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %10, align 8
  %119 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %118, i32 0, i32 4
  store %struct.snd_pcm_substream* %117, %struct.snd_pcm_substream** %119, align 8
  %120 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %10, align 8
  store %struct.snd_soc_dapm_widget* %120, %struct.snd_soc_dapm_widget** %4, align 8
  br label %145

121:                                              ; preds = %113
  %122 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %123 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = bitcast i32* %126 to i8*
  %128 = call i32 @devm_kfree(i32 %124, i8* %127)
  %129 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %130 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %131 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i8**, i8*** %11, align 8
  %136 = call i32 @snd_soc_dapm_free_kcontrol(%struct.snd_soc_card* %129, i64* %12, i32 %134, i8** %135)
  br label %137

137:                                              ; preds = %121, %96, %73
  %138 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %139 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i8*, i8** %13, align 8
  %142 = call i32 @devm_kfree(i32 %140, i8* %141)
  %143 = load i32, i32* %14, align 4
  %144 = call %struct.snd_soc_dapm_widget* @ERR_PTR(i32 %143)
  store %struct.snd_soc_dapm_widget* %144, %struct.snd_soc_dapm_widget** %4, align 8
  br label %145

145:                                              ; preds = %137, %116, %31
  %146 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  ret %struct.snd_soc_dapm_widget* %146
}

declare dso_local i8* @devm_kasprintf(i32, i32, i8*, i32, i8*) #1

declare dso_local %struct.snd_soc_dapm_widget* @ERR_PTR(i32) #1

declare dso_local i32 @memset(%struct.snd_soc_dapm_widget*, i32, i32) #1

declare dso_local i8** @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32* @snd_soc_dapm_alloc_kcontrol(%struct.snd_soc_card*, i8*, i32, i32, i8**, i64*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local %struct.snd_soc_dapm_widget* @snd_soc_dapm_new_control_unlocked(i32*, %struct.snd_soc_dapm_widget*) #1

declare dso_local i64 @IS_ERR(%struct.snd_soc_dapm_widget*) #1

declare dso_local i32 @PTR_ERR(%struct.snd_soc_dapm_widget*) #1

declare dso_local i32 @devm_kfree(i32, i8*) #1

declare dso_local i32 @snd_soc_dapm_free_kcontrol(%struct.snd_soc_card*, i64*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

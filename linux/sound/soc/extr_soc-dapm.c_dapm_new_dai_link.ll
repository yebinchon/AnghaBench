; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_new_dai_link.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_new_dai_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, %struct.snd_kcontrol**, %struct.TYPE_6__*, i32, %struct.snd_soc_pcm_runtime*, %struct.snd_soc_dapm_context* }
%struct.snd_kcontrol = type { %struct.snd_soc_dapm_widget* }
%struct.TYPE_6__ = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.snd_soc_dapm_context = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.snd_card* }
%struct.snd_card = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"ASoC: failed to add widget %s dapm kcontrol %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*)* @dapm_new_dai_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dapm_new_dai_link(%struct.snd_soc_dapm_widget* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_dapm_widget*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca %struct.snd_soc_dapm_context*, align 8
  %8 = alloca %struct.snd_card*, align 8
  %9 = alloca %struct.snd_soc_pcm_runtime*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %3, align 8
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 5
  %12 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %11, align 8
  store %struct.snd_soc_dapm_context* %12, %struct.snd_soc_dapm_context** %7, align 8
  %13 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.snd_card*, %struct.snd_card** %16, align 8
  store %struct.snd_card* %17, %struct.snd_card** %8, align 8
  %18 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %18, i32 0, i32 4
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %19, align 8
  store %struct.snd_soc_pcm_runtime* %20, %struct.snd_soc_pcm_runtime** %9, align 8
  %21 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  %22 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

28:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %81, %28
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %84

35:                                               ; preds = %29
  %36 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %37 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %43 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %44 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.snd_kcontrol* @snd_soc_cnew(%struct.TYPE_6__* %41, %struct.snd_soc_dapm_widget* %42, i32 %45, i32* null)
  store %struct.snd_kcontrol* %46, %struct.snd_kcontrol** %6, align 8
  %47 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %48 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %49 = call i32 @snd_ctl_add(%struct.snd_card* %47, %struct.snd_kcontrol* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %35
  %53 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %54 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %57 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %60 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %66, i32 %67)
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %85

70:                                               ; preds = %35
  %71 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %72 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %73 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %72, i32 0, i32 0
  store %struct.snd_soc_dapm_widget* %71, %struct.snd_soc_dapm_widget** %73, align 8
  %74 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %75 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %76 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %75, i32 0, i32 1
  %77 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.snd_kcontrol*, %struct.snd_kcontrol** %77, i64 %79
  store %struct.snd_kcontrol* %74, %struct.snd_kcontrol** %80, align 8
  br label %81

81:                                               ; preds = %70
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %29

84:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %52, %27
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.snd_kcontrol* @snd_soc_cnew(%struct.TYPE_6__*, %struct.snd_soc_dapm_widget*, i32, i32*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

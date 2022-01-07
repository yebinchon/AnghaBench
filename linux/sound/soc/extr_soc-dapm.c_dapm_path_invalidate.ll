; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_path_invalidate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_path_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_path = type { %struct.TYPE_3__*, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_3__ = type { i64* }
%struct.TYPE_4__ = type { i64* }

@SND_SOC_DAPM_DIR_IN = common dso_local global i64 0, align 8
@SND_SOC_DAPM_DIR_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_dapm_path*)* @dapm_path_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dapm_path_invalidate(%struct.snd_soc_dapm_path* %0) #0 {
  %2 = alloca %struct.snd_soc_dapm_path*, align 8
  store %struct.snd_soc_dapm_path* %0, %struct.snd_soc_dapm_path** %2, align 8
  %3 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %2, align 8
  %4 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %2, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  br label %43

13:                                               ; preds = %7
  %14 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %2, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @SND_SOC_DAPM_DIR_IN, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %2, align 8
  %25 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call i32 @dapm_widget_invalidate_input_paths(%struct.TYPE_4__* %26)
  br label %28

28:                                               ; preds = %23, %13
  %29 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %2, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @SND_SOC_DAPM_DIR_OUT, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %2, align 8
  %40 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = call i32 @dapm_widget_invalidate_output_paths(%struct.TYPE_3__* %41)
  br label %43

43:                                               ; preds = %12, %38, %28
  ret void
}

declare dso_local i32 @dapm_widget_invalidate_input_paths(%struct.TYPE_4__*) #1

declare dso_local i32 @dapm_widget_invalidate_output_paths(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

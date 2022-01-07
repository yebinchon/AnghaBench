; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_widget_load.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_widget_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_tplg = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i64, i32, %struct.snd_soc_dapm_widget*, %struct.snd_soc_tplg_dapm_widget*)* }
%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_soc_tplg_dapm_widget = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_tplg*, %struct.snd_soc_dapm_widget*, %struct.snd_soc_tplg_dapm_widget*)* @soc_tplg_widget_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_tplg_widget_load(%struct.soc_tplg* %0, %struct.snd_soc_dapm_widget* %1, %struct.snd_soc_tplg_dapm_widget* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.soc_tplg*, align 8
  %6 = alloca %struct.snd_soc_dapm_widget*, align 8
  %7 = alloca %struct.snd_soc_tplg_dapm_widget*, align 8
  store %struct.soc_tplg* %0, %struct.soc_tplg** %5, align 8
  store %struct.snd_soc_dapm_widget* %1, %struct.snd_soc_dapm_widget** %6, align 8
  store %struct.snd_soc_tplg_dapm_widget* %2, %struct.snd_soc_tplg_dapm_widget** %7, align 8
  %8 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %9 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %3
  %13 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %14 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %12
  %18 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %19 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i64, i32, %struct.snd_soc_dapm_widget*, %struct.snd_soc_tplg_dapm_widget*)*, i32 (i64, i32, %struct.snd_soc_dapm_widget*, %struct.snd_soc_tplg_dapm_widget*)** %21, align 8
  %23 = icmp ne i32 (i64, i32, %struct.snd_soc_dapm_widget*, %struct.snd_soc_tplg_dapm_widget*)* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %17
  %25 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %26 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (i64, i32, %struct.snd_soc_dapm_widget*, %struct.snd_soc_tplg_dapm_widget*)*, i32 (i64, i32, %struct.snd_soc_dapm_widget*, %struct.snd_soc_tplg_dapm_widget*)** %28, align 8
  %30 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %31 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %34 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %37 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %7, align 8
  %38 = call i32 %29(i64 %32, i32 %35, %struct.snd_soc_dapm_widget* %36, %struct.snd_soc_tplg_dapm_widget* %37)
  store i32 %38, i32* %4, align 4
  br label %40

39:                                               ; preds = %17, %12, %3
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %24
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

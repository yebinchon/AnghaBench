; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_power_one_widget.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_power_one_widget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_dapm_widget*, %struct.list_head*, %struct.list_head*)* @dapm_power_one_widget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dapm_power_one_widget(%struct.snd_soc_dapm_widget* %0, %struct.list_head* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %8 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %19 [
    i32 128, label %11
    i32 129, label %15
  ]

11:                                               ; preds = %3
  %12 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %13 = load %struct.list_head*, %struct.list_head** %6, align 8
  %14 = call i32 @dapm_seq_insert(%struct.snd_soc_dapm_widget* %12, %struct.list_head* %13, i32 0)
  br label %27

15:                                               ; preds = %3
  %16 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %17 = load %struct.list_head*, %struct.list_head** %5, align 8
  %18 = call i32 @dapm_seq_insert(%struct.snd_soc_dapm_widget* %16, %struct.list_head* %17, i32 1)
  br label %27

19:                                               ; preds = %3
  %20 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %21 = call i32 @dapm_widget_power_check(%struct.snd_soc_dapm_widget* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.list_head*, %struct.list_head** %5, align 8
  %25 = load %struct.list_head*, %struct.list_head** %6, align 8
  %26 = call i32 @dapm_widget_set_power(%struct.snd_soc_dapm_widget* %22, i32 %23, %struct.list_head* %24, %struct.list_head* %25)
  br label %27

27:                                               ; preds = %19, %15, %11
  ret void
}

declare dso_local i32 @dapm_seq_insert(%struct.snd_soc_dapm_widget*, %struct.list_head*, i32) #1

declare dso_local i32 @dapm_widget_power_check(%struct.snd_soc_dapm_widget*) #1

declare dso_local i32 @dapm_widget_set_power(%struct.snd_soc_dapm_widget*, i32, %struct.list_head*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8962.c_out_pga_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8962.c_out_pga_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@WM8962_HPOUTR_VOLUME = common dso_local global i32 0, align 4
@WM8962_HPOUTL_VOLUME = common dso_local global i32 0, align 4
@WM8962_SPKOUTR_VOLUME = common dso_local global i32 0, align 4
@WM8962_SPKOUTL_VOLUME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid shift %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid event %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @out_pga_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @out_pga_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  %14 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %25 [
    i32 130, label %17
    i32 131, label %19
    i32 128, label %21
    i32 129, label %23
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* @WM8962_HPOUTR_VOLUME, align 4
  store i32 %18, i32* %9, align 4
  br label %32

19:                                               ; preds = %3
  %20 = load i32, i32* @WM8962_HPOUTL_VOLUME, align 4
  store i32 %20, i32* %9, align 4
  br label %32

21:                                               ; preds = %3
  %22 = load i32, i32* @WM8962_SPKOUTR_VOLUME, align 4
  store i32 %22, i32* %9, align 4
  br label %32

23:                                               ; preds = %3
  %24 = load i32, i32* @WM8962_SPKOUTL_VOLUME, align 4
  store i32 %24, i32* %9, align 4
  br label %32

25:                                               ; preds = %3
  %26 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %27 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %46

32:                                               ; preds = %23, %21, %19, %17
  %33 = load i32, i32* %7, align 4
  switch i32 %33, label %41 [
    i32 132, label %34
  ]

34:                                               ; preds = %32
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %37, i32 %38)
  %40 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %35, i32 %36, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %46

41:                                               ; preds = %32
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %34, %25
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

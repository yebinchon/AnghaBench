; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1701.c_adau1701_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1701.c_adau1701_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.adau1701 = type { i32, i32 }

@ADAU1701_OSCIPOW_OPD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ADAU1701_OSCIPOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @adau1701_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1701_set_sysclk(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.adau1701*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %15 = call %struct.adau1701* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.adau1701* %15, %struct.adau1701** %13, align 8
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %20 [
    i32 128, label %17
    i32 129, label %18
  ]

17:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %23

18:                                               ; preds = %5
  %19 = load i32, i32* @ADAU1701_OSCIPOW_OPD, align 4
  store i32 %19, i32* %12, align 4
  br label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %34

23:                                               ; preds = %18, %17
  %24 = load %struct.adau1701*, %struct.adau1701** %13, align 8
  %25 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ADAU1701_OSCIPOW, align 4
  %28 = load i32, i32* @ADAU1701_OSCIPOW_OPD, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.adau1701*, %struct.adau1701** %13, align 8
  %33 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %23, %20
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local %struct.adau1701* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

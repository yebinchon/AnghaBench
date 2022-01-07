; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_handle_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_handle_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.da7219_priv = type { i64, i32, %struct.da7219_pdata* }
%struct.da7219_pdata = type { i32, i32, i32 }

@DA7219_MICBIAS1_LEVEL_SHIFT = common dso_local global i32 0, align 4
@DA7219_MICBIAS_CTRL = common dso_local global i32 0, align 4
@DA7219_MIC_PGA_BASE_DELAY = common dso_local global i64 0, align 8
@DA7219_MIC_PGA_OFFSET_DELAY = common dso_local global i32 0, align 4
@DA7219_MIC_1_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @da7219_handle_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da7219_handle_pdata(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.da7219_priv*, align 8
  %4 = alloca %struct.da7219_pdata*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = call %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.da7219_priv* %7, %struct.da7219_priv** %3, align 8
  %8 = load %struct.da7219_priv*, %struct.da7219_priv** %3, align 8
  %9 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %8, i32 0, i32 2
  %10 = load %struct.da7219_pdata*, %struct.da7219_pdata** %9, align 8
  store %struct.da7219_pdata* %10, %struct.da7219_pdata** %4, align 8
  %11 = load %struct.da7219_pdata*, %struct.da7219_pdata** %4, align 8
  %12 = icmp ne %struct.da7219_pdata* %11, null
  br i1 %12, label %13, label %56

13:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %14 = load %struct.da7219_pdata*, %struct.da7219_pdata** %4, align 8
  %15 = getelementptr inbounds %struct.da7219_pdata, %struct.da7219_pdata* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.da7219_priv*, %struct.da7219_priv** %3, align 8
  %18 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.da7219_pdata*, %struct.da7219_pdata** %4, align 8
  %20 = getelementptr inbounds %struct.da7219_pdata, %struct.da7219_pdata* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %30 [
    i32 136, label %22
    i32 135, label %22
    i32 134, label %22
    i32 133, label %22
    i32 132, label %22
    i32 131, label %22
  ]

22:                                               ; preds = %13, %13, %13, %13, %13, %13
  %23 = load %struct.da7219_pdata*, %struct.da7219_pdata** %4, align 8
  %24 = getelementptr inbounds %struct.da7219_pdata, %struct.da7219_pdata* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DA7219_MICBIAS1_LEVEL_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %13, %22
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %32 = load i32, i32* @DA7219_MICBIAS_CTRL, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %31, i32 %32, i32 %33)
  %35 = load i64, i64* @DA7219_MIC_PGA_BASE_DELAY, align 8
  %36 = load %struct.da7219_pdata*, %struct.da7219_pdata** %4, align 8
  %37 = getelementptr inbounds %struct.da7219_pdata, %struct.da7219_pdata* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DA7219_MIC_PGA_OFFSET_DELAY, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %35, %41
  %43 = load %struct.da7219_priv*, %struct.da7219_priv** %3, align 8
  %44 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.da7219_pdata*, %struct.da7219_pdata** %4, align 8
  %46 = getelementptr inbounds %struct.da7219_pdata, %struct.da7219_pdata* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %55 [
    i32 130, label %48
    i32 128, label %48
    i32 129, label %48
  ]

48:                                               ; preds = %30, %30, %30
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %50 = load i32, i32* @DA7219_MIC_1_SELECT, align 4
  %51 = load %struct.da7219_pdata*, %struct.da7219_pdata** %4, align 8
  %52 = getelementptr inbounds %struct.da7219_pdata, %struct.da7219_pdata* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %49, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %30, %48
  br label %56

56:                                               ; preds = %55, %1
  ret void
}

declare dso_local %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

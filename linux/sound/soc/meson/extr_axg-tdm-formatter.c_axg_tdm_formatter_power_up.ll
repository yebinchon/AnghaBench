; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdm-formatter.c_axg_tdm_formatter_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdm-formatter.c_axg_tdm_formatter_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axg_tdm_formatter = type { i32, %struct.axg_tdm_stream*, i32, i32, %struct.TYPE_6__* }
%struct.axg_tdm_stream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.axg_tdm_stream* (%struct.snd_soc_dapm_widget*)* }
%struct.snd_soc_dapm_widget = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axg_tdm_formatter*, %struct.snd_soc_dapm_widget*)* @axg_tdm_formatter_power_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_tdm_formatter_power_up(%struct.axg_tdm_formatter* %0, %struct.snd_soc_dapm_widget* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.axg_tdm_formatter*, align 8
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.axg_tdm_stream*, align 8
  %7 = alloca i32, align 4
  store %struct.axg_tdm_formatter* %0, %struct.axg_tdm_formatter** %4, align 8
  store %struct.snd_soc_dapm_widget* %1, %struct.snd_soc_dapm_widget** %5, align 8
  %8 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %4, align 8
  %9 = getelementptr inbounds %struct.axg_tdm_formatter, %struct.axg_tdm_formatter* %8, i32 0, i32 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.axg_tdm_stream* (%struct.snd_soc_dapm_widget*)*, %struct.axg_tdm_stream* (%struct.snd_soc_dapm_widget*)** %13, align 8
  %15 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %16 = call %struct.axg_tdm_stream* %14(%struct.snd_soc_dapm_widget* %15)
  store %struct.axg_tdm_stream* %16, %struct.axg_tdm_stream** %6, align 8
  %17 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %6, align 8
  %18 = icmp ne %struct.axg_tdm_stream* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %77

26:                                               ; preds = %2
  %27 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %4, align 8
  %28 = getelementptr inbounds %struct.axg_tdm_formatter, %struct.axg_tdm_formatter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @clk_prepare_enable(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %77

35:                                               ; preds = %26
  %36 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %4, align 8
  %37 = getelementptr inbounds %struct.axg_tdm_formatter, %struct.axg_tdm_formatter* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %6, align 8
  %40 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clk_set_parent(i32 %38, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %71

48:                                               ; preds = %35
  %49 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %4, align 8
  %50 = getelementptr inbounds %struct.axg_tdm_formatter, %struct.axg_tdm_formatter* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %6, align 8
  %53 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @clk_set_parent(i32 %51, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %71

61:                                               ; preds = %48
  %62 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %6, align 8
  %63 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %4, align 8
  %64 = getelementptr inbounds %struct.axg_tdm_formatter, %struct.axg_tdm_formatter* %63, i32 0, i32 1
  store %struct.axg_tdm_stream* %62, %struct.axg_tdm_stream** %64, align 8
  %65 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %4, align 8
  %66 = call i32 @axg_tdm_formatter_attach(%struct.axg_tdm_formatter* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %71

70:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %77

71:                                               ; preds = %69, %60, %47
  %72 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %4, align 8
  %73 = getelementptr inbounds %struct.axg_tdm_formatter, %struct.axg_tdm_formatter* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @clk_disable_unprepare(i32 %74)
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %71, %70, %33, %23
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_set_parent(i32, i32) #1

declare dso_local i32 @axg_tdm_formatter_attach(%struct.axg_tdm_formatter*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

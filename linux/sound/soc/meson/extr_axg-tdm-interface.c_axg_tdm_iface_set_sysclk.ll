; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdm-interface.c_axg_tdm_iface_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdm-interface.c_axg_tdm_iface_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.axg_tdm_iface = type { i32, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"master clock not provided\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @axg_tdm_iface_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_tdm_iface_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.axg_tdm_iface*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %12 = call %struct.axg_tdm_iface* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %11)
  store %struct.axg_tdm_iface* %12, %struct.axg_tdm_iface** %9, align 8
  %13 = load i32, i32* @ENOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @SND_SOC_CLOCK_OUT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %18
  %22 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %9, align 8
  %23 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %28 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_warn(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %44

31:                                               ; preds = %21
  %32 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %9, align 8
  %33 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @clk_set_rate(i32 %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %9, align 8
  %42 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %31
  br label %44

44:                                               ; preds = %43, %26
  br label %45

45:                                               ; preds = %44, %18, %4
  %46 = load i32, i32* %10, align 4
  ret i32 %46
}

declare dso_local %struct.axg_tdm_iface* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

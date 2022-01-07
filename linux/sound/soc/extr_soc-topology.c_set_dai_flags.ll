; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_set_dai_flags.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_set_dai_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai_driver = type { i32, i32, i32 }

@SND_SOC_TPLG_DAI_FLGBIT_SYMMETRIC_RATES = common dso_local global i32 0, align 4
@SND_SOC_TPLG_DAI_FLGBIT_SYMMETRIC_CHANNELS = common dso_local global i32 0, align 4
@SND_SOC_TPLG_DAI_FLGBIT_SYMMETRIC_SAMPLEBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_dai_driver*, i32, i32)* @set_dai_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dai_flags(%struct.snd_soc_dai_driver* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dai_driver*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_soc_dai_driver* %0, %struct.snd_soc_dai_driver** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @SND_SOC_TPLG_DAI_FLGBIT_SYMMETRIC_RATES, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @SND_SOC_TPLG_DAI_FLGBIT_SYMMETRIC_RATES, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  %18 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %4, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %11, %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SND_SOC_TPLG_DAI_FLGBIT_SYMMETRIC_CHANNELS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SND_SOC_TPLG_DAI_FLGBIT_SYMMETRIC_CHANNELS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  %32 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %4, align 8
  %33 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %25, %20
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SND_SOC_TPLG_DAI_FLGBIT_SYMMETRIC_SAMPLEBITS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SND_SOC_TPLG_DAI_FLGBIT_SYMMETRIC_SAMPLEBITS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  %46 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %4, align 8
  %47 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %39, %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

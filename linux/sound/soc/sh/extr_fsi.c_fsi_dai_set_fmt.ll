; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_dai_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_dai_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.fsi_priv = type { i32, i32, i32, i64 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@fsi_clk_set_rate_cpg = common dso_local global i32 0, align 4
@fsi_clk_set_rate_external = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @fsi_dai_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_dai_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsi_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = call %struct.fsi_priv* @fsi_get_priv_frm_dai(%struct.snd_soc_dai* %8)
  store %struct.fsi_priv* %9, %struct.fsi_priv** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %12 = and i32 %10, %11
  switch i32 %12, label %17 [
    i32 133, label %13
    i32 132, label %14
  ]

13:                                               ; preds = %2
  br label %20

14:                                               ; preds = %2
  %15 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %16 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  br label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %84

20:                                               ; preds = %14, %13
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %40 [
    i32 129, label %24
    i32 130, label %29
    i32 131, label %34
    i32 128, label %39
  ]

24:                                               ; preds = %20
  %25 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %26 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %28 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %27, i32 0, i32 2
  store i32 1, i32* %28, align 8
  br label %45

29:                                               ; preds = %20
  %30 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %31 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %33 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %32, i32 0, i32 2
  store i32 0, i32* %33, align 8
  br label %45

34:                                               ; preds = %20
  %35 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %36 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %38 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %37, i32 0, i32 2
  store i32 1, i32* %38, align 8
  br label %45

39:                                               ; preds = %20
  br label %40

40:                                               ; preds = %20, %39
  %41 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %42 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %44 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %43, i32 0, i32 2
  store i32 0, i32* %44, align 8
  br label %45

45:                                               ; preds = %40, %34, %29, %24
  %46 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %47 = call i64 @fsi_is_clk_master(%struct.fsi_priv* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %45
  %50 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %51 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %56 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %59 = load i32, i32* @fsi_clk_set_rate_cpg, align 4
  %60 = call i32 @fsi_clk_init(i32 %57, %struct.fsi_priv* %58, i32 0, i32 1, i32 1, i32 %59)
  br label %68

61:                                               ; preds = %49
  %62 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %63 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %66 = load i32, i32* @fsi_clk_set_rate_external, align 4
  %67 = call i32 @fsi_clk_init(i32 %64, %struct.fsi_priv* %65, i32 1, i32 1, i32 0, i32 %66)
  br label %68

68:                                               ; preds = %61, %54
  br label %69

69:                                               ; preds = %68, %45
  %70 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %71 = call i64 @fsi_is_spdif(%struct.fsi_priv* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %75 = call i32 @fsi_set_fmt_spdif(%struct.fsi_priv* %74)
  store i32 %75, i32* %7, align 4
  br label %82

76:                                               ; preds = %69
  %77 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %80 = and i32 %78, %79
  %81 = call i32 @fsi_set_fmt_dai(%struct.fsi_priv* %77, i32 %80)
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %76, %73
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %17
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.fsi_priv* @fsi_get_priv_frm_dai(%struct.snd_soc_dai*) #1

declare dso_local i64 @fsi_is_clk_master(%struct.fsi_priv*) #1

declare dso_local i32 @fsi_clk_init(i32, %struct.fsi_priv*, i32, i32, i32, i32) #1

declare dso_local i64 @fsi_is_spdif(%struct.fsi_priv*) #1

declare dso_local i32 @fsi_set_fmt_spdif(%struct.fsi_priv*) #1

declare dso_local i32 @fsi_set_fmt_dai(%struct.fsi_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

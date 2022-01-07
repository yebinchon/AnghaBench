; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1701.c_adau1701_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1701.c_adau1701_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.adau1701 = type { i32, i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@ADAU1701_SEROCTL_MASTER = common dso_local global i32 0, align 4
@ADAU1701_SEROCTL_OBF16 = common dso_local global i32 0, align 4
@ADAU1701_SEROCTL_OLF1024 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@ADAU1701_SERICTL_INV_BCLK = common dso_local global i32 0, align 4
@ADAU1701_SEROCTL_INV_BCLK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@ADAU1701_SERICTL_LEFTJ = common dso_local global i32 0, align 4
@ADAU1701_SEROCTL_MSB_DEALY0 = common dso_local global i32 0, align 4
@ADAU1701_SERICTL_RIGHTJ_24 = common dso_local global i32 0, align 4
@ADAU1701_SEROCTL_MSB_DEALY8 = common dso_local global i32 0, align 4
@ADAU1701_SEROCTL_INV_LRCLK = common dso_local global i32 0, align 4
@ADAU1701_SERICTL_INV_LRCLK = common dso_local global i32 0, align 4
@ADAU1701_SERICTL = common dso_local global i32 0, align 4
@ADAU1701_SEROCTL = common dso_local global i32 0, align 4
@ADAU1701_SEROCTL_WORD_LEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @adau1701_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1701_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.adau1701*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %15 = call %struct.adau1701* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.adau1701* %15, %struct.adau1701** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %28 [
    i32 136, label %19
    i32 135, label %27
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* @ADAU1701_SEROCTL_MASTER, align 4
  %21 = load i32, i32* @ADAU1701_SEROCTL_OBF16, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @ADAU1701_SEROCTL_OLF1024, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %9, align 4
  br label %31

27:                                               ; preds = %2
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %114

31:                                               ; preds = %27, %19
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %34 = and i32 %32, %33
  switch i32 %34, label %51 [
    i32 129, label %35
    i32 130, label %36
    i32 132, label %37
    i32 133, label %44
  ]

35:                                               ; preds = %31
  store i32 0, i32* %10, align 4
  br label %54

36:                                               ; preds = %31
  store i32 1, i32* %10, align 4
  br label %54

37:                                               ; preds = %31
  store i32 0, i32* %10, align 4
  %38 = load i32, i32* @ADAU1701_SERICTL_INV_BCLK, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @ADAU1701_SEROCTL_INV_BCLK, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %54

44:                                               ; preds = %31
  store i32 1, i32* %10, align 4
  %45 = load i32, i32* @ADAU1701_SERICTL_INV_BCLK, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @ADAU1701_SEROCTL_INV_BCLK, align 4
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %54

51:                                               ; preds = %31
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %114

54:                                               ; preds = %44, %37, %36, %35
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %57 = and i32 %55, %56
  switch i32 %57, label %81 [
    i32 134, label %58
    i32 131, label %59
    i32 128, label %70
  ]

58:                                               ; preds = %54
  br label %84

59:                                               ; preds = %54
  %60 = load i32, i32* @ADAU1701_SERICTL_LEFTJ, align 4
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* @ADAU1701_SEROCTL_MSB_DEALY0, align 4
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %10, align 4
  br label %84

70:                                               ; preds = %54
  %71 = load i32, i32* @ADAU1701_SERICTL_RIGHTJ_24, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* @ADAU1701_SEROCTL_MSB_DEALY8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %10, align 4
  br label %84

81:                                               ; preds = %54
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %114

84:                                               ; preds = %70, %59, %58
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32, i32* @ADAU1701_SEROCTL_INV_LRCLK, align 4
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* @ADAU1701_SERICTL_INV_LRCLK, align 4
  %92 = load i32, i32* %8, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %87, %84
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %97 = and i32 %95, %96
  %98 = load %struct.adau1701*, %struct.adau1701** %7, align 8
  %99 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.adau1701*, %struct.adau1701** %7, align 8
  %101 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ADAU1701_SERICTL, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @regmap_write(i32 %102, i32 %103, i32 %104)
  %106 = load %struct.adau1701*, %struct.adau1701** %7, align 8
  %107 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @ADAU1701_SEROCTL, align 4
  %110 = load i32, i32* @ADAU1701_SEROCTL_WORD_LEN_MASK, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @regmap_update_bits(i32 %108, i32 %109, i32 %111, i32 %112)
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %94, %81, %51, %28
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.adau1701* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.adau = type { i32, i32, i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_PORT0_MASTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_PORT1_DELAY1 = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_PORT1_DELAY0 = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_PORT0_PULSE_MODE = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_PORT0_BCLK_POL = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_PORT0_LRCLK_POL = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_PORT0 = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_PORT1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @adau17x1_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau17x1_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adau*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.adau* @snd_soc_component_get_drvdata(i32 %12)
  store %struct.adau* %13, %struct.adau** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %16 = and i32 %14, %15
  switch i32 %16, label %24 [
    i32 138, label %17
    i32 137, label %21
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* @ADAU17X1_SERIAL_PORT0_MASTER, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.adau*, %struct.adau** %6, align 8
  %20 = getelementptr inbounds %struct.adau, %struct.adau* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %27

21:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %22 = load %struct.adau*, %struct.adau** %6, align 8
  %23 = getelementptr inbounds %struct.adau, %struct.adau* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %98

27:                                               ; preds = %21, %17
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %30 = and i32 %28, %29
  switch i32 %30, label %45 [
    i32 134, label %31
    i32 131, label %33
    i32 128, label %33
    i32 136, label %35
    i32 135, label %40
  ]

31:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  %32 = load i32, i32* @ADAU17X1_SERIAL_PORT1_DELAY1, align 4
  store i32 %32, i32* %8, align 4
  br label %48

33:                                               ; preds = %27, %27
  store i32 1, i32* %9, align 4
  %34 = load i32, i32* @ADAU17X1_SERIAL_PORT1_DELAY0, align 4
  store i32 %34, i32* %8, align 4
  br label %48

35:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  %36 = load i32, i32* @ADAU17X1_SERIAL_PORT0_PULSE_MODE, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @ADAU17X1_SERIAL_PORT1_DELAY1, align 4
  store i32 %39, i32* %8, align 4
  br label %48

40:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  %41 = load i32, i32* @ADAU17X1_SERIAL_PORT0_PULSE_MODE, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* @ADAU17X1_SERIAL_PORT1_DELAY0, align 4
  store i32 %44, i32* %8, align 4
  br label %48

45:                                               ; preds = %27
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %98

48:                                               ; preds = %40, %35, %33, %31
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %51 = and i32 %49, %50
  switch i32 %51, label %70 [
    i32 129, label %52
    i32 132, label %53
    i32 130, label %57
    i32 133, label %62
  ]

52:                                               ; preds = %48
  br label %73

53:                                               ; preds = %48
  %54 = load i32, i32* @ADAU17X1_SERIAL_PORT0_BCLK_POL, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %73

57:                                               ; preds = %48
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %9, align 4
  br label %73

62:                                               ; preds = %48
  %63 = load i32, i32* @ADAU17X1_SERIAL_PORT0_BCLK_POL, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %9, align 4
  br label %73

70:                                               ; preds = %48
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %98

73:                                               ; preds = %62, %57, %53, %52
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* @ADAU17X1_SERIAL_PORT0_LRCLK_POL, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %76, %73
  %81 = load %struct.adau*, %struct.adau** %6, align 8
  %82 = getelementptr inbounds %struct.adau, %struct.adau* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ADAU17X1_SERIAL_PORT0, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @regmap_write(i32 %83, i32 %84, i32 %85)
  %87 = load %struct.adau*, %struct.adau** %6, align 8
  %88 = getelementptr inbounds %struct.adau, %struct.adau* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ADAU17X1_SERIAL_PORT1, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @regmap_write(i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %95 = and i32 %93, %94
  %96 = load %struct.adau*, %struct.adau** %6, align 8
  %97 = getelementptr inbounds %struct.adau, %struct.adau* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %80, %70, %45, %24
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.adau* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

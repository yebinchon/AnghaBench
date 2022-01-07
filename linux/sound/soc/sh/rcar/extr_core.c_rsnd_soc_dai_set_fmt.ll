; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_soc_dai_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_soc_dai_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.rsnd_dai = type { i32, i32, i32, i32, i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @rsnd_soc_dai_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_soc_dai_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsnd_dai*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %8 = call %struct.rsnd_dai* @rsnd_dai_to_rdai(%struct.snd_soc_dai* %7)
  store %struct.rsnd_dai* %8, %struct.rsnd_dai** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %18 [
    i32 138, label %12
    i32 137, label %15
  ]

12:                                               ; preds = %2
  %13 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %14 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %17 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  br label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %97

21:                                               ; preds = %15, %12
  %22 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %23 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %26 = and i32 %24, %25
  switch i32 %26, label %55 [
    i32 134, label %27
    i32 131, label %34
    i32 135, label %34
    i32 128, label %41
    i32 136, label %48
  ]

27:                                               ; preds = %21
  %28 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %29 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %28, i32 0, i32 2
  store i32 0, i32* %29, align 4
  %30 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %31 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %30, i32 0, i32 3
  store i32 0, i32* %31, align 4
  %32 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %33 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %32, i32 0, i32 4
  store i32 0, i32* %33, align 4
  br label %55

34:                                               ; preds = %21, %21
  %35 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %36 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %35, i32 0, i32 2
  store i32 1, i32* %36, align 4
  %37 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %38 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %37, i32 0, i32 3
  store i32 0, i32* %38, align 4
  %39 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %40 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %39, i32 0, i32 4
  store i32 1, i32* %40, align 4
  br label %55

41:                                               ; preds = %21
  %42 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %43 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %42, i32 0, i32 2
  store i32 1, i32* %43, align 4
  %44 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %45 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %44, i32 0, i32 3
  store i32 1, i32* %45, align 4
  %46 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %47 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %46, i32 0, i32 4
  store i32 1, i32* %47, align 4
  br label %55

48:                                               ; preds = %21
  %49 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %50 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %49, i32 0, i32 2
  store i32 0, i32* %50, align 4
  %51 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %52 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %51, i32 0, i32 3
  store i32 0, i32* %52, align 4
  %53 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %54 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %53, i32 0, i32 4
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %21, %48, %41, %34, %27
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %58 = and i32 %56, %57
  switch i32 %58, label %95 [
    i32 130, label %59
    i32 132, label %68
    i32 133, label %77
    i32 129, label %94
  ]

59:                                               ; preds = %55
  %60 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %61 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %67 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  br label %96

68:                                               ; preds = %55
  %69 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %70 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %76 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %96

77:                                               ; preds = %55
  %78 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %79 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %85 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %87 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %93 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 4
  br label %96

94:                                               ; preds = %55
  br label %95

95:                                               ; preds = %55, %94
  br label %96

96:                                               ; preds = %95, %77, %68, %59
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %18
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.rsnd_dai* @rsnd_dai_to_rdai(%struct.snd_soc_dai*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

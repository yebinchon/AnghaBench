; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.TYPE_2__*, %struct.snd_soc_component* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_component = type { i32 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unsupported DAI format %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@WM5100_AIF1TX_LRCLK_MSTR = common dso_local global i32 0, align 4
@WM5100_AIF1_BCLK_MSTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported master mode %d\0A\00", align 1
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@WM5100_AIF1_BCLK_INV = common dso_local global i32 0, align 4
@WM5100_AIF1TX_LRCLK_INV = common dso_local global i32 0, align 4
@WM5100_AIF1_FMT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm5100_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5100_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %21 = and i32 %19, %20
  switch i32 %21, label %24 [
    i32 133, label %22
    i32 132, label %23
  ]

22:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %34

23:                                               ; preds = %2
  store i32 2, i32* %9, align 4
  br label %34

24:                                               ; preds = %2
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %26 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %30 = and i32 %28, %29
  %31 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %118

34:                                               ; preds = %23, %22
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %37 = and i32 %35, %36
  switch i32 %37, label %54 [
    i32 134, label %38
    i32 135, label %39
    i32 136, label %43
    i32 137, label %47
  ]

38:                                               ; preds = %34
  br label %64

39:                                               ; preds = %34
  %40 = load i32, i32* @WM5100_AIF1TX_LRCLK_MSTR, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %64

43:                                               ; preds = %34
  %44 = load i32, i32* @WM5100_AIF1_BCLK_MSTR, align 4
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %64

47:                                               ; preds = %34
  %48 = load i32, i32* @WM5100_AIF1TX_LRCLK_MSTR, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* @WM5100_AIF1_BCLK_MSTR, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %64

54:                                               ; preds = %34
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %56 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %60 = and i32 %58, %59
  %61 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %118

64:                                               ; preds = %47, %43, %39, %38
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %67 = and i32 %65, %66
  switch i32 %67, label %84 [
    i32 128, label %68
    i32 131, label %69
    i32 130, label %76
    i32 129, label %80
  ]

68:                                               ; preds = %64
  br label %87

69:                                               ; preds = %64
  %70 = load i32, i32* @WM5100_AIF1_BCLK_INV, align 4
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* @WM5100_AIF1TX_LRCLK_INV, align 4
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %87

76:                                               ; preds = %64
  %77 = load i32, i32* @WM5100_AIF1_BCLK_INV, align 4
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %87

80:                                               ; preds = %64
  %81 = load i32, i32* @WM5100_AIF1TX_LRCLK_INV, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %87

84:                                               ; preds = %64
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %118

87:                                               ; preds = %80, %76, %69, %68
  %88 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  %91 = load i32, i32* @WM5100_AIF1_BCLK_MSTR, align 4
  %92 = load i32, i32* @WM5100_AIF1_BCLK_INV, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %88, i32 %90, i32 %93, i32 %94)
  %96 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 2
  %99 = load i32, i32* @WM5100_AIF1TX_LRCLK_MSTR, align 4
  %100 = load i32, i32* @WM5100_AIF1TX_LRCLK_INV, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %96, i32 %98, i32 %101, i32 %102)
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 3
  %107 = load i32, i32* @WM5100_AIF1TX_LRCLK_MSTR, align 4
  %108 = load i32, i32* @WM5100_AIF1TX_LRCLK_INV, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %104, i32 %106, i32 %109, i32 %110)
  %112 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 5
  %115 = load i32, i32* @WM5100_AIF1_FMT_MASK, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %112, i32 %114, i32 %115, i32 %116)
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %87, %84, %54, %24
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

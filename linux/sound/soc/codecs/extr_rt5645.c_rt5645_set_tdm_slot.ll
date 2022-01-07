; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5645_priv = type { i32 }

@CODEC_TYPE_RT5645 = common dso_local global i32 0, align 4
@RT5645_BASS_BACK = common dso_local global i32 0, align 4
@RT5645_G_BB_BST_MASK = common dso_local global i32 0, align 4
@RT5645_G_BB_BST_25DB = common dso_local global i32 0, align 4
@RT5645_TDM_CTRL_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @rt5645_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5645_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_soc_component*, align 8
  %12 = alloca %struct.rt5645_priv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %20, i32 0, i32 0
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %21, align 8
  store %struct.snd_soc_component* %22, %struct.snd_soc_component** %11, align 8
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %24 = call %struct.rt5645_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %23)
  store %struct.rt5645_priv* %24, %struct.rt5645_priv** %12, align 8
  store i32 0, i32* %19, align 4
  %25 = load %struct.rt5645_priv*, %struct.rt5645_priv** %12, align 8
  %26 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %29 [
    i32 128, label %28
  ]

28:                                               ; preds = %5
  store i32 15, i32* %17, align 4
  store i32 10, i32* %13, align 4
  store i32 8, i32* %14, align 4
  store i32 6, i32* %15, align 4
  store i32 4, i32* %16, align 4
  store i32 36848, i32* %18, align 4
  br label %30

29:                                               ; preds = %5
  store i32 14, i32* %17, align 4
  store i32 12, i32* %14, align 4
  store i32 12, i32* %13, align 4
  store i32 10, i32* %16, align 4
  store i32 10, i32* %15, align 4
  store i32 31744, i32* %18, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %17, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* %19, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %19, align 4
  %41 = load %struct.rt5645_priv*, %struct.rt5645_priv** %12, align 8
  %42 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CODEC_TYPE_RT5645, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %48 = load i32, i32* @RT5645_BASS_BACK, align 4
  %49 = load i32, i32* @RT5645_G_BB_BST_MASK, align 4
  %50 = load i32, i32* @RT5645_G_BB_BST_25DB, align 4
  %51 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %47, i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %36
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i32, i32* %9, align 4
  switch i32 %54, label %80 [
    i32 4, label %55
    i32 6, label %63
    i32 8, label %71
    i32 2, label %79
  ]

55:                                               ; preds = %53
  %56 = load i32, i32* %13, align 4
  %57 = shl i32 1, %56
  %58 = load i32, i32* %14, align 4
  %59 = shl i32 1, %58
  %60 = or i32 %57, %59
  %61 = load i32, i32* %19, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %19, align 4
  br label %81

63:                                               ; preds = %53
  %64 = load i32, i32* %13, align 4
  %65 = shl i32 2, %64
  %66 = load i32, i32* %14, align 4
  %67 = shl i32 2, %66
  %68 = or i32 %65, %67
  %69 = load i32, i32* %19, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %19, align 4
  br label %81

71:                                               ; preds = %53
  %72 = load i32, i32* %13, align 4
  %73 = shl i32 3, %72
  %74 = load i32, i32* %14, align 4
  %75 = shl i32 3, %74
  %76 = or i32 %73, %75
  %77 = load i32, i32* %19, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %19, align 4
  br label %81

79:                                               ; preds = %53
  br label %80

80:                                               ; preds = %53, %79
  br label %81

81:                                               ; preds = %80, %71, %63, %55
  %82 = load i32, i32* %10, align 4
  switch i32 %82, label %108 [
    i32 20, label %83
    i32 24, label %91
    i32 32, label %99
    i32 16, label %107
  ]

83:                                               ; preds = %81
  %84 = load i32, i32* %15, align 4
  %85 = shl i32 1, %84
  %86 = load i32, i32* %16, align 4
  %87 = shl i32 1, %86
  %88 = or i32 %85, %87
  %89 = load i32, i32* %19, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %19, align 4
  br label %109

91:                                               ; preds = %81
  %92 = load i32, i32* %15, align 4
  %93 = shl i32 2, %92
  %94 = load i32, i32* %16, align 4
  %95 = shl i32 2, %94
  %96 = or i32 %93, %95
  %97 = load i32, i32* %19, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %19, align 4
  br label %109

99:                                               ; preds = %81
  %100 = load i32, i32* %15, align 4
  %101 = shl i32 3, %100
  %102 = load i32, i32* %16, align 4
  %103 = shl i32 3, %102
  %104 = or i32 %101, %103
  %105 = load i32, i32* %19, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %19, align 4
  br label %109

107:                                              ; preds = %81
  br label %108

108:                                              ; preds = %81, %107
  br label %109

109:                                              ; preds = %108, %99, %91, %83
  %110 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %111 = load i32, i32* @RT5645_TDM_CTRL_1, align 4
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* %19, align 4
  %114 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %110, i32 %111, i32 %112, i32 %113)
  ret i32 0
}

declare dso_local %struct.rt5645_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

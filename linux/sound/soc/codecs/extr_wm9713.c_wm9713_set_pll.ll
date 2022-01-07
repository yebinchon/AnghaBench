; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9713.c_wm9713_set_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9713.c_wm9713_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm9713_priv = type { i32 }
%struct._pll_div = type { i32, i32, i32, i32, i32 }

@AC97_HANDSET_RATE = common dso_local global i32 0, align 4
@AC97_EXTENDED_MID = common dso_local global i32 0, align 4
@AC97_LINE1_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32)* @wm9713_set_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9713_set_pll(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wm9713_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct._pll_div, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %15 = call %struct.wm9713_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.wm9713_priv* %15, %struct.wm9713_priv** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %20 = load i32, i32* @AC97_HANDSET_RATE, align 4
  %21 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %19, i32 %20, i32 128, i32 128)
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %23 = load i32, i32* @AC97_EXTENDED_MID, align 4
  %24 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %22, i32 %23, i32 512, i32 512)
  %25 = load %struct.wm9713_priv*, %struct.wm9713_priv** %10, align 8
  %26 = getelementptr inbounds %struct.wm9713_priv, %struct.wm9713_priv* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  store i32 0, i32* %5, align 4
  br label %146

27:                                               ; preds = %4
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @pll_factors(%struct.snd_soc_component* %28, %struct._pll_div* %13, i32 %29)
  %31 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 12
  %38 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 11
  %41 = or i32 %37, %40
  %42 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 9
  %45 = or i32 %41, %44
  %46 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  %49 = or i32 %45, %48
  store i32 %49, i32* %11, align 4
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %51 = load i32, i32* @AC97_LINE1_LEVEL, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %50, i32 %51, i32 %52)
  br label %134

54:                                               ; preds = %27
  %55 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 12
  %58 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 11
  %61 = or i32 %57, %60
  %62 = or i32 %61, 1024
  %63 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 9
  %66 = or i32 %62, %65
  %67 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 8
  %70 = or i32 %66, %69
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = or i32 %71, 80
  %73 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 20
  %76 = or i32 %72, %75
  store i32 %76, i32* %11, align 4
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %78 = load i32, i32* @AC97_LINE1_LEVEL, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %77, i32 %78, i32 %79)
  %81 = load i32, i32* %12, align 4
  %82 = or i32 %81, 64
  %83 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 16
  %86 = and i32 %85, 15
  %87 = or i32 %82, %86
  store i32 %87, i32* %11, align 4
  %88 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %89 = load i32, i32* @AC97_LINE1_LEVEL, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %88, i32 %89, i32 %90)
  %92 = load i32, i32* %12, align 4
  %93 = or i32 %92, 48
  %94 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 12
  %97 = and i32 %96, 15
  %98 = or i32 %93, %97
  store i32 %98, i32* %11, align 4
  %99 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %100 = load i32, i32* @AC97_LINE1_LEVEL, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %99, i32 %100, i32 %101)
  %103 = load i32, i32* %12, align 4
  %104 = or i32 %103, 32
  %105 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = ashr i32 %106, 8
  %108 = and i32 %107, 15
  %109 = or i32 %104, %108
  store i32 %109, i32* %11, align 4
  %110 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %111 = load i32, i32* @AC97_LINE1_LEVEL, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %110, i32 %111, i32 %112)
  %114 = load i32, i32* %12, align 4
  %115 = or i32 %114, 16
  %116 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = ashr i32 %117, 4
  %119 = and i32 %118, 15
  %120 = or i32 %115, %119
  store i32 %120, i32* %11, align 4
  %121 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %122 = load i32, i32* @AC97_LINE1_LEVEL, align 4
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %121, i32 %122, i32 %123)
  %125 = load i32, i32* %12, align 4
  %126 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 15
  %129 = or i32 %125, %128
  store i32 %129, i32* %11, align 4
  %130 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %131 = load i32, i32* @AC97_LINE1_LEVEL, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %54, %34
  %135 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %136 = load i32, i32* @AC97_EXTENDED_MID, align 4
  %137 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %135, i32 %136, i32 512, i32 0)
  %138 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %139 = load i32, i32* @AC97_HANDSET_RATE, align 4
  %140 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %138, i32 %139, i32 128, i32 0)
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.wm9713_priv*, %struct.wm9713_priv** %10, align 8
  %143 = getelementptr inbounds %struct.wm9713_priv, %struct.wm9713_priv* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  %144 = call i32 @msecs_to_jiffies(i32 10)
  %145 = call i32 @schedule_timeout_interruptible(i32 %144)
  store i32 0, i32* %5, align 4
  br label %146

146:                                              ; preds = %134, %18
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local %struct.wm9713_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @pll_factors(%struct.snd_soc_component*, %struct._pll_div*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

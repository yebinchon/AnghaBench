; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8810.c_nau8810_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8810.c_nau8810_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.nau8810 = type { %struct.regmap* }
%struct.regmap = type { i32 }

@NAU8810_REG_POWER1 = common dso_local global i32 0, align 4
@NAU8810_REFIMP_MASK = common dso_local global i32 0, align 4
@NAU8810_REFIMP_80K = common dso_local global i32 0, align 4
@NAU8810_IOBUF_EN = common dso_local global i32 0, align 4
@NAU8810_ABIAS_EN = common dso_local global i32 0, align 4
@NAU8810_REFIMP_3K = common dso_local global i32 0, align 4
@NAU8810_REFIMP_300K = common dso_local global i32 0, align 4
@NAU8810_REG_POWER2 = common dso_local global i32 0, align 4
@NAU8810_REG_POWER3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @nau8810_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8810_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nau8810*, align 8
  %6 = alloca %struct.regmap*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.nau8810* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.nau8810* %8, %struct.nau8810** %5, align 8
  %9 = load %struct.nau8810*, %struct.nau8810** %5, align 8
  %10 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %9, i32 0, i32 0
  %11 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %11, %struct.regmap** %6, align 8
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %57 [
    i32 130, label %13
    i32 129, label %13
    i32 128, label %19
    i32 131, label %47
  ]

13:                                               ; preds = %2, %2
  %14 = load %struct.regmap*, %struct.regmap** %6, align 8
  %15 = load i32, i32* @NAU8810_REG_POWER1, align 4
  %16 = load i32, i32* @NAU8810_REFIMP_MASK, align 4
  %17 = load i32, i32* @NAU8810_REFIMP_80K, align 4
  %18 = call i32 @regmap_update_bits(%struct.regmap* %14, i32 %15, i32 %16, i32 %17)
  br label %57

19:                                               ; preds = %2
  %20 = load %struct.regmap*, %struct.regmap** %6, align 8
  %21 = load i32, i32* @NAU8810_REG_POWER1, align 4
  %22 = load i32, i32* @NAU8810_IOBUF_EN, align 4
  %23 = load i32, i32* @NAU8810_ABIAS_EN, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @NAU8810_IOBUF_EN, align 4
  %26 = load i32, i32* @NAU8810_ABIAS_EN, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @regmap_update_bits(%struct.regmap* %20, i32 %21, i32 %24, i32 %27)
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %30 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %29)
  %31 = icmp eq i32 %30, 131
  br i1 %31, label %32, label %41

32:                                               ; preds = %19
  %33 = load %struct.regmap*, %struct.regmap** %6, align 8
  %34 = call i32 @regcache_sync(%struct.regmap* %33)
  %35 = load %struct.regmap*, %struct.regmap** %6, align 8
  %36 = load i32, i32* @NAU8810_REG_POWER1, align 4
  %37 = load i32, i32* @NAU8810_REFIMP_MASK, align 4
  %38 = load i32, i32* @NAU8810_REFIMP_3K, align 4
  %39 = call i32 @regmap_update_bits(%struct.regmap* %35, i32 %36, i32 %37, i32 %38)
  %40 = call i32 @mdelay(i32 100)
  br label %41

41:                                               ; preds = %32, %19
  %42 = load %struct.regmap*, %struct.regmap** %6, align 8
  %43 = load i32, i32* @NAU8810_REG_POWER1, align 4
  %44 = load i32, i32* @NAU8810_REFIMP_MASK, align 4
  %45 = load i32, i32* @NAU8810_REFIMP_300K, align 4
  %46 = call i32 @regmap_update_bits(%struct.regmap* %42, i32 %43, i32 %44, i32 %45)
  br label %57

47:                                               ; preds = %2
  %48 = load %struct.regmap*, %struct.regmap** %6, align 8
  %49 = load i32, i32* @NAU8810_REG_POWER1, align 4
  %50 = call i32 @regmap_write(%struct.regmap* %48, i32 %49, i32 0)
  %51 = load %struct.regmap*, %struct.regmap** %6, align 8
  %52 = load i32, i32* @NAU8810_REG_POWER2, align 4
  %53 = call i32 @regmap_write(%struct.regmap* %51, i32 %52, i32 0)
  %54 = load %struct.regmap*, %struct.regmap** %6, align 8
  %55 = load i32, i32* @NAU8810_REG_POWER3, align 4
  %56 = call i32 @regmap_write(%struct.regmap* %54, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %2, %47, %41, %13
  ret i32 0
}

declare dso_local %struct.nau8810* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regcache_sync(%struct.regmap*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

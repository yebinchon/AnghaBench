; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_stac9766.c_stac9766_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_stac9766.c_stac9766_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_ac97 = type { i32 }
%struct.regmap = type opaque

@STAC9766_VENDOR_ID = common dso_local global i32 0, align 4
@STAC9766_VENDOR_ID_MASK = common dso_local global i32 0, align 4
@stac9766_regmap_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @stac9766_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stac9766_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = load i32, i32* @STAC9766_VENDOR_ID, align 4
  %9 = load i32, i32* @STAC9766_VENDOR_ID_MASK, align 4
  %10 = call %struct.snd_ac97* @snd_soc_new_ac97_component(%struct.snd_soc_component* %7, i32 %8, i32 %9)
  store %struct.snd_ac97* %10, %struct.snd_ac97** %4, align 8
  %11 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %12 = call i64 @IS_ERR(%struct.snd_ac97* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %16 = call i32 @PTR_ERR(%struct.snd_ac97* %15)
  store i32 %16, i32* %2, align 4
  br label %41

17:                                               ; preds = %1
  %18 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %19 = call %struct.snd_ac97* @regmap_init_ac97(%struct.snd_ac97* %18, i32* @stac9766_regmap_config)
  %20 = bitcast %struct.snd_ac97* %19 to %struct.regmap*
  store %struct.regmap* %20, %struct.regmap** %5, align 8
  %21 = load %struct.regmap*, %struct.regmap** %5, align 8
  %22 = bitcast %struct.regmap* %21 to %struct.snd_ac97*
  %23 = call i64 @IS_ERR(%struct.snd_ac97* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.regmap*, %struct.regmap** %5, align 8
  %27 = bitcast %struct.regmap* %26 to %struct.snd_ac97*
  %28 = call i32 @PTR_ERR(%struct.snd_ac97* %27)
  store i32 %28, i32* %6, align 4
  br label %37

29:                                               ; preds = %17
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %31 = load %struct.regmap*, %struct.regmap** %5, align 8
  %32 = bitcast %struct.regmap* %31 to %struct.snd_ac97*
  %33 = call i32 @snd_soc_component_init_regmap(%struct.snd_soc_component* %30, %struct.snd_ac97* %32)
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %35 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %36 = call i32 @snd_soc_component_set_drvdata(%struct.snd_soc_component* %34, %struct.snd_ac97* %35)
  store i32 0, i32* %2, align 4
  br label %41

37:                                               ; preds = %25
  %38 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %39 = call i32 @snd_soc_free_ac97_component(%struct.snd_ac97* %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %29, %14
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.snd_ac97* @snd_soc_new_ac97_component(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.snd_ac97*) #1

declare dso_local i32 @PTR_ERR(%struct.snd_ac97*) #1

declare dso_local %struct.snd_ac97* @regmap_init_ac97(%struct.snd_ac97*, i32*) #1

declare dso_local i32 @snd_soc_component_init_regmap(%struct.snd_soc_component*, %struct.snd_ac97*) #1

declare dso_local i32 @snd_soc_component_set_drvdata(%struct.snd_soc_component*, %struct.snd_ac97*) #1

declare dso_local i32 @snd_soc_free_ac97_component(%struct.snd_ac97*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

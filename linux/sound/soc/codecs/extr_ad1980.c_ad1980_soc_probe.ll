; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad1980.c_ad1980_soc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad1980.c_ad1980_soc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_ac97 = type { i32 }
%struct.regmap = type opaque

@.str = private unnamed_addr constant [39 x i8] c"Failed to register AC97 component: %d\0A\00", align 1
@ad1980_regmap_config = common dso_local global i32 0, align 4
@AC97_VENDOR_ID2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Found AD1981 - only 2/2 IN/OUT Channels supported\0A\00", align 1
@AC97_MASTER = common dso_local global i32 0, align 4
@AC97_PCM = common dso_local global i32 0, align 4
@AC97_REC_GAIN = common dso_local global i32 0, align 4
@AC97_CENTER_LFE_MASTER = common dso_local global i32 0, align 4
@AC97_SURROUND_MASTER = common dso_local global i32 0, align 4
@AC97_EXTENDED_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @ad1980_soc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1980_soc_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.snd_ac97* @snd_soc_new_ac97_component(%struct.snd_soc_component* %9, i32 0, i32 0)
  store %struct.snd_ac97* %10, %struct.snd_ac97** %4, align 8
  %11 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %12 = call i64 @IS_ERR(%struct.snd_ac97* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %16 = call i32 @PTR_ERR(%struct.snd_ac97* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %18 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %90

23:                                               ; preds = %1
  %24 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %25 = call %struct.snd_ac97* @regmap_init_ac97(%struct.snd_ac97* %24, i32* @ad1980_regmap_config)
  %26 = bitcast %struct.snd_ac97* %25 to %struct.regmap*
  store %struct.regmap* %26, %struct.regmap** %5, align 8
  %27 = load %struct.regmap*, %struct.regmap** %5, align 8
  %28 = bitcast %struct.regmap* %27 to %struct.snd_ac97*
  %29 = call i64 @IS_ERR(%struct.snd_ac97* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.regmap*, %struct.regmap** %5, align 8
  %33 = bitcast %struct.regmap* %32 to %struct.snd_ac97*
  %34 = call i32 @PTR_ERR(%struct.snd_ac97* %33)
  store i32 %34, i32* %6, align 4
  br label %86

35:                                               ; preds = %23
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %37 = load %struct.regmap*, %struct.regmap** %5, align 8
  %38 = bitcast %struct.regmap* %37 to %struct.snd_ac97*
  %39 = call i32 @snd_soc_component_init_regmap(%struct.snd_soc_component* %36, %struct.snd_ac97* %38)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %41 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %42 = call i32 @snd_soc_component_set_drvdata(%struct.snd_soc_component* %40, %struct.snd_ac97* %41)
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %44 = call i32 @ad1980_reset(%struct.snd_soc_component* %43, i32 0)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %83

48:                                               ; preds = %35
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %50 = load i32, i32* @AC97_VENDOR_ID2, align 4
  %51 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %49, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 21364
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %56 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_warn(i32 %57, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %54, %48
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %61 = load i32, i32* @AC97_MASTER, align 4
  %62 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %60, i32 %61, i32 0)
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %64 = load i32, i32* @AC97_PCM, align 4
  %65 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %63, i32 %64, i32 0)
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %67 = load i32, i32* @AC97_REC_GAIN, align 4
  %68 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %66, i32 %67, i32 0)
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %70 = load i32, i32* @AC97_CENTER_LFE_MASTER, align 4
  %71 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %69, i32 %70, i32 0)
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %73 = load i32, i32* @AC97_SURROUND_MASTER, align 4
  %74 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %72, i32 %73, i32 0)
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %76 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %77 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %75, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %79 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, -14337
  %82 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %78, i32 %79, i32 %81)
  store i32 0, i32* %2, align 4
  br label %90

83:                                               ; preds = %47
  %84 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %85 = call i32 @snd_soc_component_exit_regmap(%struct.snd_soc_component* %84)
  br label %86

86:                                               ; preds = %83, %31
  %87 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %88 = call i32 @snd_soc_free_ac97_component(%struct.snd_ac97* %87)
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %86, %59, %14
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.snd_ac97* @snd_soc_new_ac97_component(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.snd_ac97*) #1

declare dso_local i32 @PTR_ERR(%struct.snd_ac97*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local %struct.snd_ac97* @regmap_init_ac97(%struct.snd_ac97*, i32*) #1

declare dso_local i32 @snd_soc_component_init_regmap(%struct.snd_soc_component*, %struct.snd_ac97*) #1

declare dso_local i32 @snd_soc_component_set_drvdata(%struct.snd_soc_component*, %struct.snd_ac97*) #1

declare dso_local i32 @ad1980_reset(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_exit_regmap(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_free_ac97_component(%struct.snd_ac97*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

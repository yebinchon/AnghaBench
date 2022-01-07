; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1701.c_adau1701_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1701.c_adau1701_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.adau1701 = type { i32, i32, i32, i32, i32* }

@ADAU1707_CLKDIV_UNSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to load firmware\0A\00", align 1
@ADAU1701_DACSET = common dso_local global i32 0, align 4
@ADAU1701_DACSET_DACINIT = common dso_local global i32 0, align 4
@ADAU1701_DSPCTRL = common dso_local global i32 0, align 4
@ADAU1701_DSPCTRL_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32)* @adau1701_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1701_reset(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.adau1701*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %11 = call %struct.adau1701* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.adau1701* %11, %struct.adau1701** %8, align 8
  %12 = load %struct.adau1701*, %struct.adau1701** %8, align 8
  %13 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @sigmadsp_reset(i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @ADAU1707_CLKDIV_UNSET, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %90

19:                                               ; preds = %3
  %20 = load %struct.adau1701*, %struct.adau1701** %8, align 8
  %21 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @gpio_is_valid(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %90

27:                                               ; preds = %19
  %28 = load %struct.adau1701*, %struct.adau1701** %8, align 8
  %29 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @gpio_is_valid(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %90

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %89 [
    i32 64, label %37
    i32 256, label %50
    i32 384, label %63
    i32 0, label %76
    i32 512, label %76
  ]

37:                                               ; preds = %35
  %38 = load %struct.adau1701*, %struct.adau1701** %8, align 8
  %39 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @gpio_set_value_cansleep(i32 %42, i32 0)
  %44 = load %struct.adau1701*, %struct.adau1701** %8, align 8
  %45 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @gpio_set_value_cansleep(i32 %48, i32 0)
  br label %89

50:                                               ; preds = %35
  %51 = load %struct.adau1701*, %struct.adau1701** %8, align 8
  %52 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @gpio_set_value_cansleep(i32 %55, i32 0)
  %57 = load %struct.adau1701*, %struct.adau1701** %8, align 8
  %58 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @gpio_set_value_cansleep(i32 %61, i32 1)
  br label %89

63:                                               ; preds = %35
  %64 = load %struct.adau1701*, %struct.adau1701** %8, align 8
  %65 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @gpio_set_value_cansleep(i32 %68, i32 1)
  %70 = load %struct.adau1701*, %struct.adau1701** %8, align 8
  %71 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @gpio_set_value_cansleep(i32 %74, i32 0)
  br label %89

76:                                               ; preds = %35, %35
  %77 = load %struct.adau1701*, %struct.adau1701** %8, align 8
  %78 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @gpio_set_value_cansleep(i32 %81, i32 1)
  %83 = load %struct.adau1701*, %struct.adau1701** %8, align 8
  %84 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @gpio_set_value_cansleep(i32 %87, i32 1)
  br label %89

89:                                               ; preds = %35, %76, %63, %50, %37
  br label %90

90:                                               ; preds = %89, %27, %19, %3
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.adau1701*, %struct.adau1701** %8, align 8
  %93 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.adau1701*, %struct.adau1701** %8, align 8
  %95 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @gpio_is_valid(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %90
  %100 = load %struct.adau1701*, %struct.adau1701** %8, align 8
  %101 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @gpio_set_value_cansleep(i32 %102, i32 0)
  %104 = call i32 @udelay(i32 1)
  %105 = load %struct.adau1701*, %struct.adau1701** %8, align 8
  %106 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @gpio_set_value_cansleep(i32 %107, i32 1)
  %109 = call i32 @mdelay(i32 85)
  br label %110

110:                                              ; preds = %99, %90
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @ADAU1707_CLKDIV_UNSET, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %129

114:                                              ; preds = %110
  %115 = load %struct.adau1701*, %struct.adau1701** %8, align 8
  %116 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @sigmadsp_setup(i32 %117, i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %114
  %123 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %124 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @dev_warn(i32 %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %4, align 4
  br label %150

128:                                              ; preds = %114
  br label %129

129:                                              ; preds = %128, %110
  %130 = load %struct.adau1701*, %struct.adau1701** %8, align 8
  %131 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @ADAU1701_DACSET, align 4
  %134 = load i32, i32* @ADAU1701_DACSET_DACINIT, align 4
  %135 = call i32 @regmap_write(i32 %132, i32 %133, i32 %134)
  %136 = load %struct.adau1701*, %struct.adau1701** %8, align 8
  %137 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @ADAU1701_DSPCTRL, align 4
  %140 = load i32, i32* @ADAU1701_DSPCTRL_CR, align 4
  %141 = call i32 @regmap_write(i32 %138, i32 %139, i32 %140)
  %142 = load %struct.adau1701*, %struct.adau1701** %8, align 8
  %143 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @regcache_mark_dirty(i32 %144)
  %146 = load %struct.adau1701*, %struct.adau1701** %8, align 8
  %147 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @regcache_sync(i32 %148)
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %129, %122
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local %struct.adau1701* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @sigmadsp_reset(i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @sigmadsp_setup(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

declare dso_local i32 @regcache_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

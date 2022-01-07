; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4641.c_ak4641_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4641.c_ak4641_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ak4641_platform_data* }
%struct.ak4641_platform_data = type { i32, i32 }
%struct.ak4641_priv = type { i32 }

@AK4641_DAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to sync cache: %d\0A\00", align 1
@AK4641_PM1 = common dso_local global i32 0, align 4
@AK4641_PM2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @ak4641_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4641_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ak4641_priv*, align 8
  %7 = alloca %struct.ak4641_platform_data*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %10 = call %struct.ak4641_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.ak4641_priv* %10, %struct.ak4641_priv** %6, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %14, align 8
  store %struct.ak4641_platform_data* %15, %struct.ak4641_platform_data** %7, align 8
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %117 [
    i32 130, label %17
    i32 129, label %21
    i32 128, label %25
    i32 131, label %81
  ]

17:                                               ; preds = %2
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %19 = load i32, i32* @AK4641_DAC, align 4
  %20 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %18, i32 %19, i32 32, i32 0)
  br label %117

21:                                               ; preds = %2
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %23 = load i32, i32* @AK4641_DAC, align 4
  %24 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %22, i32 %23, i32 32, i32 32)
  br label %117

25:                                               ; preds = %2
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %27 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %26)
  %28 = icmp eq i32 %27, 131
  br i1 %28, label %29, label %74

29:                                               ; preds = %25
  %30 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %7, align 8
  %31 = icmp ne %struct.ak4641_platform_data* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %7, align 8
  %34 = getelementptr inbounds %struct.ak4641_platform_data, %struct.ak4641_platform_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @gpio_is_valid(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %7, align 8
  %40 = getelementptr inbounds %struct.ak4641_platform_data, %struct.ak4641_platform_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @gpio_set_value(i32 %41, i32 1)
  br label %43

43:                                               ; preds = %38, %32, %29
  %44 = call i32 @mdelay(i32 1)
  %45 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %7, align 8
  %46 = icmp ne %struct.ak4641_platform_data* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %7, align 8
  %49 = getelementptr inbounds %struct.ak4641_platform_data, %struct.ak4641_platform_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @gpio_is_valid(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %7, align 8
  %55 = getelementptr inbounds %struct.ak4641_platform_data, %struct.ak4641_platform_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @gpio_set_value(i32 %56, i32 1)
  br label %58

58:                                               ; preds = %53, %47, %43
  %59 = call i32 @mdelay(i32 1)
  %60 = load %struct.ak4641_priv*, %struct.ak4641_priv** %6, align 8
  %61 = getelementptr inbounds %struct.ak4641_priv, %struct.ak4641_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @regcache_sync(i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %58
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %68 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @dev_err(%struct.TYPE_2__* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %118

73:                                               ; preds = %58
  br label %74

74:                                               ; preds = %73, %25
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %76 = load i32, i32* @AK4641_PM1, align 4
  %77 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %75, i32 %76, i32 128, i32 128)
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %79 = load i32, i32* @AK4641_PM2, align 4
  %80 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %78, i32 %79, i32 128, i32 0)
  br label %117

81:                                               ; preds = %2
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %83 = load i32, i32* @AK4641_PM1, align 4
  %84 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %82, i32 %83, i32 128, i32 0)
  %85 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %7, align 8
  %86 = icmp ne %struct.ak4641_platform_data* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %81
  %88 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %7, align 8
  %89 = getelementptr inbounds %struct.ak4641_platform_data, %struct.ak4641_platform_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @gpio_is_valid(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %7, align 8
  %95 = getelementptr inbounds %struct.ak4641_platform_data, %struct.ak4641_platform_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @gpio_set_value(i32 %96, i32 0)
  br label %98

98:                                               ; preds = %93, %87, %81
  %99 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %7, align 8
  %100 = icmp ne %struct.ak4641_platform_data* %99, null
  br i1 %100, label %101, label %112

101:                                              ; preds = %98
  %102 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %7, align 8
  %103 = getelementptr inbounds %struct.ak4641_platform_data, %struct.ak4641_platform_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @gpio_is_valid(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %7, align 8
  %109 = getelementptr inbounds %struct.ak4641_platform_data, %struct.ak4641_platform_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @gpio_set_value(i32 %110, i32 0)
  br label %112

112:                                              ; preds = %107, %101, %98
  %113 = load %struct.ak4641_priv*, %struct.ak4641_priv** %6, align 8
  %114 = getelementptr inbounds %struct.ak4641_priv, %struct.ak4641_priv* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @regcache_mark_dirty(i32 %115)
  br label %117

117:                                              ; preds = %2, %112, %74, %21, %17
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %66
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.ak4641_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

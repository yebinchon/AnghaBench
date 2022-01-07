; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas6424.c_tas6424_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas6424.c_tas6424_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.tas6424_data = type { i64, i32, i32 }

@TAS6424_DC_DIAG_CTRL1 = common dso_local global i32 0, align 4
@TAS6424_LDGBYPASS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to enable supplies: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to sync regcache: %d\0A\00", align 1
@TAS6424_ALL_STATE_PLAY = common dso_local global i32 0, align 4
@TAS6424_ALL_STATE_MUTE = common dso_local global i32 0, align 4
@TAS6424_CH_STATE_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @tas6424_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas6424_power_on(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.tas6424_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.tas6424_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.tas6424_data* %10, %struct.tas6424_data** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.tas6424_data*, %struct.tas6424_data** %4, align 8
  %12 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @TAS6424_DC_DIAG_CTRL1, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %8)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @TAS6424_LDGBYPASS_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.tas6424_data*, %struct.tas6424_data** %4, align 8
  %23 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ARRAY_SIZE(i32 %24)
  %26 = load %struct.tas6424_data*, %struct.tas6424_data** %4, align 8
  %27 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @regulator_bulk_enable(i32 %25, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %21
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %34 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %80

39:                                               ; preds = %21
  %40 = load %struct.tas6424_data*, %struct.tas6424_data** %4, align 8
  %41 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @regcache_cache_only(i32 %42, i32 0)
  %44 = load %struct.tas6424_data*, %struct.tas6424_data** %4, align 8
  %45 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @regcache_sync(i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %39
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %52 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %80

57:                                               ; preds = %39
  %58 = load %struct.tas6424_data*, %struct.tas6424_data** %4, align 8
  %59 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.tas6424_data*, %struct.tas6424_data** %4, align 8
  %64 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @gpiod_set_value_cansleep(i64 %65, i32 0)
  %67 = load i32, i32* @TAS6424_ALL_STATE_PLAY, align 4
  store i32 %67, i32* %6, align 4
  br label %70

68:                                               ; preds = %57
  %69 = load i32, i32* @TAS6424_ALL_STATE_MUTE, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %62
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %72 = load i32, i32* @TAS6424_CH_STATE_CTRL, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %71, i32 %72, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %70
  %78 = call i32 @msleep(i32 230)
  br label %79

79:                                               ; preds = %77, %70
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %50, %32
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.tas6424_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_uda1380.c_uda1380_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_uda1380.c_uda1380_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.uda1380_platform_data* }
%struct.uda1380_platform_data = type { i32 }

@UDA1380_PM = common dso_local global i32 0, align 4
@R02_PON_BIAS = common dso_local global i32 0, align 4
@UDA1380_MVOL = common dso_local global i32 0, align 4
@UDA1380_CACHEREGNUM = common dso_local global i32 0, align 4
@uda1380_cache_dirty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @uda1380_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uda1380_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.uda1380_platform_data*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = load i32, i32* @UDA1380_PM, align 4
  %10 = call i32 @uda1380_read_reg_cache(%struct.snd_soc_component* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.uda1380_platform_data*, %struct.uda1380_platform_data** %14, align 8
  store %struct.uda1380_platform_data* %15, %struct.uda1380_platform_data** %7, align 8
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %74 [
    i32 130, label %17
    i32 129, label %17
    i32 128, label %24
    i32 131, label %49
  ]

17:                                               ; preds = %2, %2
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %19 = load i32, i32* @UDA1380_PM, align 4
  %20 = load i32, i32* @R02_PON_BIAS, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @uda1380_write(%struct.snd_soc_component* %18, i32 %19, i32 %22)
  br label %74

24:                                               ; preds = %2
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %25)
  %27 = icmp eq i32 %26, 131
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load %struct.uda1380_platform_data*, %struct.uda1380_platform_data** %7, align 8
  %30 = getelementptr inbounds %struct.uda1380_platform_data, %struct.uda1380_platform_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gpio_is_valid(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.uda1380_platform_data*, %struct.uda1380_platform_data** %7, align 8
  %36 = getelementptr inbounds %struct.uda1380_platform_data, %struct.uda1380_platform_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @gpio_set_value(i32 %37, i32 1)
  %39 = call i32 @mdelay(i32 1)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %41 = call i32 @uda1380_reset(%struct.snd_soc_component* %40)
  br label %42

42:                                               ; preds = %34, %28
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %44 = call i32 @uda1380_sync_cache(%struct.snd_soc_component* %43)
  br label %45

45:                                               ; preds = %42, %24
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %47 = load i32, i32* @UDA1380_PM, align 4
  %48 = call i32 @uda1380_write(%struct.snd_soc_component* %46, i32 %47, i32 0)
  br label %74

49:                                               ; preds = %2
  %50 = load %struct.uda1380_platform_data*, %struct.uda1380_platform_data** %7, align 8
  %51 = getelementptr inbounds %struct.uda1380_platform_data, %struct.uda1380_platform_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @gpio_is_valid(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  br label %74

56:                                               ; preds = %49
  %57 = load %struct.uda1380_platform_data*, %struct.uda1380_platform_data** %7, align 8
  %58 = getelementptr inbounds %struct.uda1380_platform_data, %struct.uda1380_platform_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @gpio_set_value(i32 %59, i32 0)
  %61 = load i32, i32* @UDA1380_MVOL, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %70, %56
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @UDA1380_CACHEREGNUM, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %67, 16
  %69 = call i32 @set_bit(i32 %68, i32* @uda1380_cache_dirty)
  br label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %62

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %2, %55, %45, %17
  ret i32 0
}

declare dso_local i32 @uda1380_read_reg_cache(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @uda1380_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @uda1380_reset(%struct.snd_soc_component*) #1

declare dso_local i32 @uda1380_sync_cache(%struct.snd_soc_component*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

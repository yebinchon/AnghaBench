; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_power_disable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_power_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adau1977 = type { i32, i64, i64, i32, i32 }

@ADAU1977_REG_POWER = common dso_local global i32 0, align 4
@ADAU1977_POWER_PWUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adau1977*)* @adau1977_power_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1977_power_disable(%struct.adau1977* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adau1977*, align 8
  %4 = alloca i32, align 4
  store %struct.adau1977* %0, %struct.adau1977** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %6 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

10:                                               ; preds = %1
  %11 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %12 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ADAU1977_REG_POWER, align 4
  %15 = load i32, i32* @ADAU1977_POWER_PWUP, align 4
  %16 = call i32 @regmap_update_bits(i32 %13, i32 %14, i32 %15, i32 0)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %50

21:                                               ; preds = %10
  %22 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %23 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @regcache_mark_dirty(i32 %24)
  %26 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %27 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gpiod_set_value_cansleep(i32 %28, i32 0)
  %30 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %31 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @regcache_cache_only(i32 %32, i32 1)
  %34 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %35 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @regulator_disable(i64 %36)
  %38 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %39 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %21
  %43 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %44 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @regulator_disable(i64 %45)
  br label %47

47:                                               ; preds = %42, %21
  %48 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %49 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %19, %9
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

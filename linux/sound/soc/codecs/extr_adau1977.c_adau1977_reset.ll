; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adau1977 = type { i32 }

@ADAU1977_REG_POWER = common dso_local global i32 0, align 4
@ADAU1977_POWER_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adau1977*)* @adau1977_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1977_reset(%struct.adau1977* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adau1977*, align 8
  %4 = alloca i32, align 4
  store %struct.adau1977* %0, %struct.adau1977** %3, align 8
  %5 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %6 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @regcache_cache_bypass(i32 %7, i32 1)
  %9 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %10 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ADAU1977_REG_POWER, align 4
  %13 = load i32, i32* @ADAU1977_POWER_RESET, align 4
  %14 = call i32 @regmap_write(i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %16 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @regcache_cache_bypass(i32 %17, i32 0)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @regcache_cache_bypass(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

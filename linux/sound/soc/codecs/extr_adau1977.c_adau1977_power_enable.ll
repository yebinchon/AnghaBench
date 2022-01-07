; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_power_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_power_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adau1977 = type { i32, i64, i64, i32, i32, i32 (i32)*, i32 }

@ADAU1977_REG_POWER = common dso_local global i32 0, align 4
@ADAU1977_POWER_PWUP = common dso_local global i32 0, align 4
@ADAU1977_REG_PLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adau1977*)* @adau1977_power_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1977_power_enable(%struct.adau1977* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adau1977*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adau1977* %0, %struct.adau1977** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %7 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %131

11:                                               ; preds = %1
  %12 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %13 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @regulator_enable(i64 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %131

20:                                               ; preds = %11
  %21 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %22 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %27 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @regulator_enable(i64 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %125

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %20
  %35 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %36 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @gpiod_set_value_cansleep(i32 %37, i32 1)
  %39 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %40 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @regcache_cache_only(i32 %41, i32 0)
  %43 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %44 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %43, i32 0, i32 5
  %45 = load i32 (i32)*, i32 (i32)** %44, align 8
  %46 = icmp ne i32 (i32)* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %34
  %48 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %49 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %48, i32 0, i32 5
  %50 = load i32 (i32)*, i32 (i32)** %49, align 8
  %51 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %52 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 %50(i32 %53)
  br label %55

55:                                               ; preds = %47, %34
  %56 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %57 = call i32 @adau1977_reset(%struct.adau1977* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %114

61:                                               ; preds = %55
  %62 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %63 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ADAU1977_REG_POWER, align 4
  %66 = load i32, i32* @ADAU1977_POWER_PWUP, align 4
  %67 = load i32, i32* @ADAU1977_POWER_PWUP, align 4
  %68 = call i32 @regmap_update_bits(i32 %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %114

72:                                               ; preds = %61
  %73 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %74 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @regcache_sync(i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %114

80:                                               ; preds = %72
  %81 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %82 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @ADAU1977_REG_PLL, align 4
  %85 = call i32 @regmap_read(i32 %83, i32 %84, i32* %4)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %114

89:                                               ; preds = %80
  %90 = load i32, i32* %4, align 4
  %91 = icmp eq i32 %90, 65
  br i1 %91, label %92, label %110

92:                                               ; preds = %89
  %93 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %94 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @regcache_cache_bypass(i32 %95, i32 1)
  %97 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %98 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ADAU1977_REG_PLL, align 4
  %101 = call i32 @regmap_write(i32 %99, i32 %100, i32 65)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  br label %114

105:                                              ; preds = %92
  %106 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %107 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @regcache_cache_bypass(i32 %108, i32 0)
  br label %110

110:                                              ; preds = %105, %89
  %111 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %112 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %2, align 4
  br label %131

114:                                              ; preds = %104, %88, %79, %71, %60
  %115 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %116 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %121 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @regulator_disable(i64 %122)
  br label %124

124:                                              ; preds = %119, %114
  br label %125

125:                                              ; preds = %124, %32
  %126 = load %struct.adau1977*, %struct.adau1977** %3, align 8
  %127 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @regulator_disable(i64 %128)
  %130 = load i32, i32* %5, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %125, %110, %18, %10
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @adau1977_reset(%struct.adau1977*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regcache_cache_bypass(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

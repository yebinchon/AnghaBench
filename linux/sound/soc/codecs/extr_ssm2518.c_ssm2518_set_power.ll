; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm2518.c_ssm2518_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm2518.c_ssm2518_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssm2518 = type { i32, i32 }

@SSM2518_REG_POWER1 = common dso_local global i32 0, align 4
@SSM2518_POWER1_SPWDN = common dso_local global i32 0, align 4
@SSM2518_POWER1_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssm2518*, i32)* @ssm2518_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssm2518_set_power(%struct.ssm2518* %0, i32 %1) #0 {
  %3 = alloca %struct.ssm2518*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ssm2518* %0, %struct.ssm2518** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = load %struct.ssm2518*, %struct.ssm2518** %3, align 8
  %10 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SSM2518_REG_POWER1, align 4
  %13 = load i32, i32* @SSM2518_POWER1_SPWDN, align 4
  %14 = load i32, i32* @SSM2518_POWER1_SPWDN, align 4
  %15 = call i32 @regmap_update_bits(i32 %11, i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ssm2518*, %struct.ssm2518** %3, align 8
  %17 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regcache_mark_dirty(i32 %18)
  br label %20

20:                                               ; preds = %8, %2
  %21 = load %struct.ssm2518*, %struct.ssm2518** %3, align 8
  %22 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @gpio_is_valid(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.ssm2518*, %struct.ssm2518** %3, align 8
  %28 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @gpio_set_value(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %20
  %33 = load %struct.ssm2518*, %struct.ssm2518** %3, align 8
  %34 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @regcache_cache_only(i32 %35, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %32
  %44 = load %struct.ssm2518*, %struct.ssm2518** %3, align 8
  %45 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SSM2518_REG_POWER1, align 4
  %48 = load i32, i32* @SSM2518_POWER1_SPWDN, align 4
  %49 = load i32, i32* @SSM2518_POWER1_RESET, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @regmap_update_bits(i32 %46, i32 %47, i32 %50, i32 0)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.ssm2518*, %struct.ssm2518** %3, align 8
  %53 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @regcache_sync(i32 %54)
  br label %56

56:                                               ; preds = %43, %32
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @regcache_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

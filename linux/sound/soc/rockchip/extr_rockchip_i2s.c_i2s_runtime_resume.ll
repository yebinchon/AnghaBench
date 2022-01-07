; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rockchip_i2s.c_i2s_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rockchip_i2s.c_i2s_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rk_i2s_dev = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"clock enable failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @i2s_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2s_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rk_i2s_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.rk_i2s_dev* @dev_get_drvdata(%struct.device* %6)
  store %struct.rk_i2s_dev* %7, %struct.rk_i2s_dev** %4, align 8
  %8 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %4, align 8
  %9 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_prepare_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %4, align 8
  %16 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %43

21:                                               ; preds = %1
  %22 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %4, align 8
  %23 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regcache_cache_only(i32 %24, i32 0)
  %26 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %4, align 8
  %27 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @regcache_mark_dirty(i32 %28)
  %30 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %4, align 8
  %31 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @regcache_sync(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %4, align 8
  %38 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @clk_disable_unprepare(i32 %39)
  br label %41

41:                                               ; preds = %36, %21
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %14
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.rk_i2s_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

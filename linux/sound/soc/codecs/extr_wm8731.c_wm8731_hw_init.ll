; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8731.c_wm8731_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8731.c_wm8731_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.wm8731_priv = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Failed to issue reset: %d\0A\00", align 1
@WM8731_PWR = common dso_local global i32 0, align 4
@WM8731_LOUT1V = common dso_local global i32 0, align 4
@WM8731_ROUT1V = common dso_local global i32 0, align 4
@WM8731_LINVOL = common dso_local global i32 0, align 4
@WM8731_RINVOL = common dso_local global i32 0, align 4
@WM8731_APANA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.wm8731_priv*)* @wm8731_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8731_hw_init(%struct.device* %0, %struct.wm8731_priv* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.wm8731_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.wm8731_priv* %1, %struct.wm8731_priv** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.wm8731_priv*, %struct.wm8731_priv** %4, align 8
  %7 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @wm8731_reset(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @dev_err(%struct.device* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %51

16:                                               ; preds = %2
  %17 = load %struct.wm8731_priv*, %struct.wm8731_priv** %4, align 8
  %18 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @WM8731_PWR, align 4
  %21 = call i32 @regmap_write(i32 %19, i32 %20, i32 127)
  %22 = load %struct.wm8731_priv*, %struct.wm8731_priv** %4, align 8
  %23 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @WM8731_LOUT1V, align 4
  %26 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 256, i32 0)
  %27 = load %struct.wm8731_priv*, %struct.wm8731_priv** %4, align 8
  %28 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WM8731_ROUT1V, align 4
  %31 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 256, i32 0)
  %32 = load %struct.wm8731_priv*, %struct.wm8731_priv** %4, align 8
  %33 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @WM8731_LINVOL, align 4
  %36 = call i32 @regmap_update_bits(i32 %34, i32 %35, i32 256, i32 0)
  %37 = load %struct.wm8731_priv*, %struct.wm8731_priv** %4, align 8
  %38 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @WM8731_RINVOL, align 4
  %41 = call i32 @regmap_update_bits(i32 %39, i32 %40, i32 256, i32 0)
  %42 = load %struct.wm8731_priv*, %struct.wm8731_priv** %4, align 8
  %43 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @WM8731_APANA, align 4
  %46 = call i32 @regmap_update_bits(i32 %44, i32 %45, i32 8, i32 0)
  %47 = load %struct.wm8731_priv*, %struct.wm8731_priv** %4, align 8
  %48 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @regcache_mark_dirty(i32 %49)
  br label %51

51:                                               ; preds = %16, %12
  %52 = load %struct.wm8731_priv*, %struct.wm8731_priv** %4, align 8
  %53 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ARRAY_SIZE(i32 %54)
  %56 = load %struct.wm8731_priv*, %struct.wm8731_priv** %4, align 8
  %57 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @regulator_bulk_disable(i32 %55, i32 %58)
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @wm8731_reset(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

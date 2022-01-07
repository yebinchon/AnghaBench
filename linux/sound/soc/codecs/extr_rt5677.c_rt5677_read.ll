; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.rt5677_priv = type { i32, i32, i64 }

@RT5677_PRIV_INDEX = common dso_local global i32 0, align 4
@RT5677_PRIV_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @rt5677_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5677_read(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.rt5677_priv*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.i2c_client*
  store %struct.i2c_client* %10, %struct.i2c_client** %7, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %12 = call %struct.rt5677_priv* @i2c_get_clientdata(%struct.i2c_client* %11)
  store %struct.rt5677_priv* %12, %struct.rt5677_priv** %8, align 8
  %13 = load %struct.rt5677_priv*, %struct.rt5677_priv** %8, align 8
  %14 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = icmp ugt i32 %18, 255
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load %struct.rt5677_priv*, %struct.rt5677_priv** %8, align 8
  %22 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.rt5677_priv*, %struct.rt5677_priv** %8, align 8
  %25 = load i32, i32* @RT5677_PRIV_INDEX, align 4
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 255
  %28 = call i32 @rt5677_dsp_mode_i2c_write(%struct.rt5677_priv* %24, i32 %25, i32 %27)
  %29 = load %struct.rt5677_priv*, %struct.rt5677_priv** %8, align 8
  %30 = load i32, i32* @RT5677_PRIV_DATA, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @rt5677_dsp_mode_i2c_read(%struct.rt5677_priv* %29, i32 %30, i32* %31)
  %33 = load %struct.rt5677_priv*, %struct.rt5677_priv** %8, align 8
  %34 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  br label %41

36:                                               ; preds = %17
  %37 = load %struct.rt5677_priv*, %struct.rt5677_priv** %8, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @rt5677_dsp_mode_i2c_read(%struct.rt5677_priv* %37, i32 %38, i32* %39)
  br label %41

41:                                               ; preds = %36, %20
  br label %49

42:                                               ; preds = %3
  %43 = load %struct.rt5677_priv*, %struct.rt5677_priv** %8, align 8
  %44 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @regmap_read(i32 %45, i32 %46, i32* %47)
  br label %49

49:                                               ; preds = %42, %41
  ret i32 0
}

declare dso_local %struct.rt5677_priv* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rt5677_dsp_mode_i2c_write(%struct.rt5677_priv*, i32, i32) #1

declare dso_local i32 @rt5677_dsp_mode_i2c_read(%struct.rt5677_priv*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

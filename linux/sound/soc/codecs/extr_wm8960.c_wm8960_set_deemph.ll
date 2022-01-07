; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8960.c_wm8960_set_deemph.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8960.c_wm8960_set_deemph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8960_priv = type { i64, i64 }

@deemph_settings = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"Set deemphasis %d\0A\00", align 1
@WM8960_DACCTL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8960_set_deemph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8960_set_deemph(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm8960_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = call %struct.wm8960_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.wm8960_priv* %8, %struct.wm8960_priv** %3, align 8
  %9 = load %struct.wm8960_priv*, %struct.wm8960_priv** %3, align 8
  %10 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  store i32 2, i32* %5, align 4
  br label %14

14:                                               ; preds = %44, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i64*, i64** @deemph_settings, align 8
  %17 = call i32 @ARRAY_SIZE(i64* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %14
  %20 = load i64*, i64** @deemph_settings, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.wm8960_priv*, %struct.wm8960_priv** %3, align 8
  %26 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = call i64 @abs(i64 %28)
  %30 = load i64*, i64** @deemph_settings, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.wm8960_priv*, %struct.wm8960_priv** %3, align 8
  %36 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = call i64 @abs(i64 %38)
  %40 = icmp slt i64 %29, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %19
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %41, %19
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %14

47:                                               ; preds = %14
  %48 = load i32, i32* %6, align 4
  %49 = shl i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %51

50:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %53 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @dev_dbg(i32 %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %58 = load i32, i32* @WM8960_DACCTL1, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %57, i32 %58, i32 6, i32 %59)
  ret i32 %60
}

declare dso_local %struct.wm8960_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

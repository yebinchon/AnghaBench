; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sta32x.c_sta32x_sync_coef_shadow.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sta32x.c_sta32x_sync_coef_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.sta32x_priv = type { i32*, i32 }

@STA32X_CFUD = common dso_local global i32 0, align 4
@STA32X_COEF_COUNT = common dso_local global i32 0, align 4
@STA32X_CFADDR2 = common dso_local global i32 0, align 4
@STA32X_B1CF1 = common dso_local global i32 0, align 4
@STA32X_B1CF2 = common dso_local global i32 0, align 4
@STA32X_B1CF3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @sta32x_sync_coef_shadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta32x_sync_coef_shadow(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.sta32x_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = call %struct.sta32x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.sta32x_priv* %7, %struct.sta32x_priv** %3, align 8
  %8 = load %struct.sta32x_priv*, %struct.sta32x_priv** %3, align 8
  %9 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @STA32X_CFUD, align 4
  %12 = call i32 @regmap_read(i32 %10, i32 %11, i32* %4)
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 240
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %80, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @STA32X_COEF_COUNT, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %83

19:                                               ; preds = %15
  %20 = load %struct.sta32x_priv*, %struct.sta32x_priv** %3, align 8
  %21 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @STA32X_CFADDR2, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @regmap_write(i32 %22, i32 %23, i32 %24)
  %26 = load %struct.sta32x_priv*, %struct.sta32x_priv** %3, align 8
  %27 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @STA32X_B1CF1, align 4
  %30 = load %struct.sta32x_priv*, %struct.sta32x_priv** %3, align 8
  %31 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = call i32 @regmap_write(i32 %28, i32 %29, i32 %38)
  %40 = load %struct.sta32x_priv*, %struct.sta32x_priv** %3, align 8
  %41 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @STA32X_B1CF2, align 4
  %44 = load %struct.sta32x_priv*, %struct.sta32x_priv** %3, align 8
  %45 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 8
  %52 = and i32 %51, 255
  %53 = call i32 @regmap_write(i32 %42, i32 %43, i32 %52)
  %54 = load %struct.sta32x_priv*, %struct.sta32x_priv** %3, align 8
  %55 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @STA32X_B1CF3, align 4
  %58 = load %struct.sta32x_priv*, %struct.sta32x_priv** %3, align 8
  %59 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 255
  %66 = call i32 @regmap_write(i32 %56, i32 %57, i32 %65)
  %67 = load %struct.sta32x_priv*, %struct.sta32x_priv** %3, align 8
  %68 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @STA32X_CFUD, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @regmap_write(i32 %69, i32 %70, i32 %71)
  %73 = load %struct.sta32x_priv*, %struct.sta32x_priv** %3, align 8
  %74 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @STA32X_CFUD, align 4
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, 1
  %79 = call i32 @regmap_write(i32 %75, i32 %76, i32 %78)
  br label %80

80:                                               ; preds = %19
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %15

83:                                               ; preds = %15
  ret i32 0
}

declare dso_local %struct.sta32x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

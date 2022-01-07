; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_set_adsp_clk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_set_adsp_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera_priv = type { i32*, %struct.madera*, %struct.wm_adsp* }
%struct.madera = type { i32 }
%struct.wm_adsp = type { i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Failed to read current DSP rate: %d\0A\00", align 1
@MADERA_DSP_RATE_MASK = common dso_local global i32 0, align 4
@MADERA_DSP_RATE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"DSP rate not changed\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"DSP rate changed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @madera_set_adsp_clk(%struct.madera_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.madera_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wm_adsp*, align 8
  %9 = alloca %struct.madera*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.madera_priv* %0, %struct.madera_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.madera_priv*, %struct.madera_priv** %5, align 8
  %14 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %13, i32 0, i32 2
  %15 = load %struct.wm_adsp*, %struct.wm_adsp** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %15, i64 %17
  store %struct.wm_adsp* %18, %struct.wm_adsp** %8, align 8
  %19 = load %struct.madera_priv*, %struct.madera_priv** %5, align 8
  %20 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %19, i32 0, i32 1
  %21 = load %struct.madera*, %struct.madera** %20, align 8
  store %struct.madera* %21, %struct.madera** %9, align 8
  %22 = load %struct.wm_adsp*, %struct.wm_adsp** %8, align 8
  %23 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.wm_adsp*, %struct.wm_adsp** %8, align 8
  %26 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @regmap_read(i32 %24, i32 %27, i32* %10)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %3
  %32 = load %struct.madera*, %struct.madera** %9, align 8
  %33 = getelementptr inbounds %struct.madera, %struct.madera* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %4, align 4
  br label %80

38:                                               ; preds = %3
  %39 = load i32, i32* @MADERA_DSP_RATE_MASK, align 4
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %10, align 4
  %42 = load %struct.madera_priv*, %struct.madera_priv** %5, align 8
  %43 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.wm_adsp*, %struct.wm_adsp** %8, align 8
  %46 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %44, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MADERA_DSP_RATE_SHIFT, align 4
  %53 = shl i32 %51, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %38
  %58 = load %struct.madera*, %struct.madera** %9, align 8
  %59 = getelementptr inbounds %struct.madera, %struct.madera* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_dbg(i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.madera_priv*, %struct.madera_priv** %5, align 8
  %63 = load %struct.wm_adsp*, %struct.wm_adsp** %8, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @madera_write_adsp_clk_setting(%struct.madera_priv* %62, %struct.wm_adsp* %63, i32 %64)
  store i32 %65, i32* %4, align 4
  br label %80

66:                                               ; preds = %38
  %67 = load %struct.madera*, %struct.madera** %9, align 8
  %68 = getelementptr inbounds %struct.madera, %struct.madera* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_dbg(i32 %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.madera_priv*, %struct.madera_priv** %5, align 8
  %72 = call i32 @madera_spin_sysclk(%struct.madera_priv* %71)
  %73 = load %struct.madera_priv*, %struct.madera_priv** %5, align 8
  %74 = load %struct.wm_adsp*, %struct.wm_adsp** %8, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @madera_write_adsp_clk_setting(%struct.madera_priv* %73, %struct.wm_adsp* %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load %struct.madera_priv*, %struct.madera_priv** %5, align 8
  %78 = call i32 @madera_spin_sysclk(%struct.madera_priv* %77)
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %66, %57, %31
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @madera_write_adsp_clk_setting(%struct.madera_priv*, %struct.wm_adsp*, i32) #1

declare dso_local i32 @madera_spin_sysclk(%struct.madera_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

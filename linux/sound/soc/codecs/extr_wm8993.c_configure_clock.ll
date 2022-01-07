; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8993.c_configure_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8993.c_configure_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8993_priv = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Using %dHz MCLK\0A\00", align 1
@WM8993_CLOCKING_2 = common dso_local global i32 0, align 4
@WM8993_MCLK_DIV = common dso_local global i32 0, align 4
@WM8993_SYSCLK_SRC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Using %dHz FLL clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"System clock not configured\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"CLK_SYS is %dHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @configure_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_clock(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.wm8993_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.wm8993_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.wm8993_priv* %7, %struct.wm8993_priv** %4, align 8
  %8 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %9 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %100 [
    i32 128, label %11
    i32 129, label %57
  ]

11:                                               ; preds = %1
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %16 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %20 = load i32, i32* @WM8993_CLOCKING_2, align 4
  %21 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @WM8993_MCLK_DIV, align 4
  %23 = load i32, i32* @WM8993_SYSCLK_SRC, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %29 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 13500000
  br i1 %31, label %32, label %42

32:                                               ; preds = %11
  %33 = load i32, i32* @WM8993_MCLK_DIV, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %37 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %38, 2
  %40 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %41 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  br label %52

42:                                               ; preds = %11
  %43 = load i32, i32* @WM8993_MCLK_DIV, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %48 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %51 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %42, %32
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %54 = load i32, i32* @WM8993_CLOCKING_2, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %53, i32 %54, i32 %55)
  br label %107

57:                                               ; preds = %1
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %59 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %62 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_dbg(i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %66 = load i32, i32* @WM8993_CLOCKING_2, align 4
  %67 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %65, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* @WM8993_SYSCLK_SRC, align 4
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  %71 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %72 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, 13500000
  br i1 %74, label %75, label %85

75:                                               ; preds = %57
  %76 = load i32, i32* @WM8993_MCLK_DIV, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %80 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = sdiv i32 %81, 2
  %83 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %84 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  br label %95

85:                                               ; preds = %57
  %86 = load i32, i32* @WM8993_MCLK_DIV, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %5, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %91 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %94 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %85, %75
  %96 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %97 = load i32, i32* @WM8993_CLOCKING_2, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %96, i32 %97, i32 %98)
  br label %107

100:                                              ; preds = %1
  %101 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %102 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dev_err(i32 %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %115

107:                                              ; preds = %95, %52
  %108 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %109 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %112 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @dev_dbg(i32 %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %107, %100
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.wm8993_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

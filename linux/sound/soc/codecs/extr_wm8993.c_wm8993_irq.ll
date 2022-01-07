; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8993.c_wm8993_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8993.c_wm8993_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8993_priv = type { i32, i32, i32 }

@WM8993_GPIO_CTRL_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to read interrupt status: %d\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@WM8993_GPIOCTRL_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to read interrupt mask: %d\0A\00", align 1
@WM8993_IRQ = common dso_local global i32 0, align 4
@WM8993_TEMPOK_EINT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Thermal warning\0A\00", align 1
@WM8993_FLL_LOCK_EINT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"FLL locked\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to ack interrupt: %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wm8993_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8993_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wm8993_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.wm8993_priv*
  store %struct.wm8993_priv* %11, %struct.wm8993_priv** %6, align 8
  %12 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %13 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @WM8993_GPIO_CTRL_1, align 4
  %16 = call i32 @regmap_read(i32 %14, i32 %15, i32* %8)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %21 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %92

26:                                               ; preds = %2
  %27 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %28 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WM8993_GPIOCTRL_2, align 4
  %31 = call i32 @regmap_read(i32 %29, i32 %30, i32* %7)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %36 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @IRQ_NONE, align 4
  store i32 %40, i32* %3, align 4
  br label %92

41:                                               ; preds = %26
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @WM8993_IRQ, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* @IRQ_NONE, align 4
  store i32 %51, i32* %3, align 4
  br label %92

52:                                               ; preds = %41
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @WM8993_TEMPOK_EINT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %59 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_crit(i32 %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %52
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @WM8993_FLL_LOCK_EINT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %69 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %72 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %73 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %72, i32 0, i32 2
  %74 = call i32 @complete(i32* %73)
  br label %75

75:                                               ; preds = %67, %62
  %76 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %77 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @WM8993_GPIO_CTRL_1, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @regmap_write(i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %75
  %85 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %86 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %84, %75
  %91 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %50, %34, %19
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_crit(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

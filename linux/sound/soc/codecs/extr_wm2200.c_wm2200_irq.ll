; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2200.c_wm2200_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2200.c_wm2200_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm2200_priv = type { i32, i32, i32 }

@WM2200_INTERRUPT_STATUS_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to read IRQ status: %d\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@WM2200_INTERRUPT_STATUS_2_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to read IRQ mask: %d\0A\00", align 1
@WM2200_FLL_LOCK_EINT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"FLL locked\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wm2200_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm2200_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wm2200_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.wm2200_priv*
  store %struct.wm2200_priv* %11, %struct.wm2200_priv** %6, align 8
  %12 = load %struct.wm2200_priv*, %struct.wm2200_priv** %6, align 8
  %13 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @WM2200_INTERRUPT_STATUS_2, align 4
  %16 = call i32 @regmap_read(i32 %14, i32 %15, i32* %7)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.wm2200_priv*, %struct.wm2200_priv** %6, align 8
  %21 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %70

26:                                               ; preds = %2
  %27 = load %struct.wm2200_priv*, %struct.wm2200_priv** %6, align 8
  %28 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WM2200_INTERRUPT_STATUS_2_MASK, align 4
  %31 = call i32 @regmap_read(i32 %29, i32 %30, i32* %8)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load %struct.wm2200_priv*, %struct.wm2200_priv** %6, align 8
  %36 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @dev_warn(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %34, %26
  %41 = load i32, i32* %8, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @WM2200_FLL_LOCK_EINT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %40
  %50 = load %struct.wm2200_priv*, %struct.wm2200_priv** %6, align 8
  %51 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.wm2200_priv*, %struct.wm2200_priv** %6, align 8
  %55 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %54, i32 0, i32 1
  %56 = call i32 @complete(i32* %55)
  br label %57

57:                                               ; preds = %49, %40
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load %struct.wm2200_priv*, %struct.wm2200_priv** %6, align 8
  %62 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @WM2200_INTERRUPT_STATUS_2, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @regmap_write(i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %67, i32* %3, align 4
  br label %70

68:                                               ; preds = %57
  %69 = load i32, i32* @IRQ_NONE, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %60, %19
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

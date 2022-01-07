; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-dma.c_aiodma_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-dma.c_aiodma_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.uniphier_aio_chip = type { i32, %struct.uniphier_aio* }
%struct.uniphier_aio = type { %struct.uniphier_aio_sub* }
%struct.uniphier_aio_sub = type { i64, i64, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @aiodma_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aiodma_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.uniphier_aio_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.uniphier_aio*, align 8
  %11 = alloca %struct.uniphier_aio_sub*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.platform_device*
  store %struct.platform_device* %13, %struct.platform_device** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %15 = call %struct.uniphier_aio_chip* @platform_get_drvdata(%struct.platform_device* %14)
  store %struct.uniphier_aio_chip* %15, %struct.uniphier_aio_chip** %6, align 8
  %16 = load i32, i32* @IRQ_NONE, align 4
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %75, %2
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %6, align 8
  %20 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %78

23:                                               ; preds = %17
  %24 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %6, align 8
  %25 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %24, i32 0, i32 1
  %26 = load %struct.uniphier_aio*, %struct.uniphier_aio** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %26, i64 %28
  store %struct.uniphier_aio* %29, %struct.uniphier_aio** %10, align 8
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %71, %23
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.uniphier_aio*, %struct.uniphier_aio** %10, align 8
  %33 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %32, i32 0, i32 0
  %34 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %33, align 8
  %35 = call i32 @ARRAY_SIZE(%struct.uniphier_aio_sub* %34)
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %74

37:                                               ; preds = %30
  %38 = load %struct.uniphier_aio*, %struct.uniphier_aio** %10, align 8
  %39 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %38, i32 0, i32 0
  %40 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %40, i64 %42
  store %struct.uniphier_aio_sub* %43, %struct.uniphier_aio_sub** %11, align 8
  %44 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %11, align 8
  %45 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %11, align 8
  %50 = call i32 @aiodma_rb_is_irq(%struct.uniphier_aio_sub* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48, %37
  br label %71

53:                                               ; preds = %48
  %54 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %11, align 8
  %55 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %11, align 8
  %60 = call i32 @aiodma_pcm_irq(%struct.uniphier_aio_sub* %59)
  br label %61

61:                                               ; preds = %58, %53
  %62 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %11, align 8
  %63 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %11, align 8
  %68 = call i32 @aiodma_compr_irq(%struct.uniphier_aio_sub* %67)
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %69, %52
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %30

74:                                               ; preds = %30
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %17

78:                                               ; preds = %17
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local %struct.uniphier_aio_chip* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.uniphier_aio_sub*) #1

declare dso_local i32 @aiodma_rb_is_irq(%struct.uniphier_aio_sub*) #1

declare dso_local i32 @aiodma_pcm_irq(%struct.uniphier_aio_sub*) #1

declare dso_local i32 @aiodma_compr_irq(%struct.uniphier_aio_sub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

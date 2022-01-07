; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs5535audio/extr_cs5535audio.c_snd_cs5535audio_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs5535audio/extr_cs5535audio.c_snd_cs5535audio_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs5535audio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@ACC_IRQ_STATUS = common dso_local global i32 0, align 4
@ACC_GPIO_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unexpected irq src: 0x%x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_cs5535audio_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs5535audio_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.cs5535audio*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.cs5535audio*
  store %struct.cs5535audio* %10, %struct.cs5535audio** %8, align 8
  %11 = load %struct.cs5535audio*, %struct.cs5535audio** %8, align 8
  %12 = icmp eq %struct.cs5535audio* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %3, align 4
  br label %67

15:                                               ; preds = %2
  %16 = load %struct.cs5535audio*, %struct.cs5535audio** %8, align 8
  %17 = load i32, i32* @ACC_IRQ_STATUS, align 4
  %18 = call i32 @cs_readw(%struct.cs5535audio* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %67

23:                                               ; preds = %15
  store i8 0, i8* %7, align 1
  br label %24

24:                                               ; preds = %62, %23
  %25 = load i8, i8* %7, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %65

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = load i8, i8* %7, align 1
  %31 = zext i8 %30 to i32
  %32 = shl i32 1, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %28
  %36 = load i8, i8* %7, align 1
  %37 = zext i8 %36 to i32
  switch i32 %37, label %52 [
    i32 129, label %38
    i32 128, label %42
    i32 131, label %46
    i32 130, label %49
  ]

38:                                               ; preds = %35
  %39 = load %struct.cs5535audio*, %struct.cs5535audio** %8, align 8
  %40 = load i32, i32* @ACC_GPIO_STATUS, align 4
  %41 = call i32 @cs_readl(%struct.cs5535audio* %39, i32 %40)
  br label %60

42:                                               ; preds = %35
  %43 = load %struct.cs5535audio*, %struct.cs5535audio** %8, align 8
  %44 = load i32, i32* @ACC_GPIO_STATUS, align 4
  %45 = call i32 @cs_readl(%struct.cs5535audio* %43, i32 %44)
  br label %60

46:                                               ; preds = %35
  %47 = load %struct.cs5535audio*, %struct.cs5535audio** %8, align 8
  %48 = call i32 @process_bm0_irq(%struct.cs5535audio* %47)
  br label %60

49:                                               ; preds = %35
  %50 = load %struct.cs5535audio*, %struct.cs5535audio** %8, align 8
  %51 = call i32 @process_bm1_irq(%struct.cs5535audio* %50)
  br label %60

52:                                               ; preds = %35
  %53 = load %struct.cs5535audio*, %struct.cs5535audio** %8, align 8
  %54 = getelementptr inbounds %struct.cs5535audio, %struct.cs5535audio* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %52, %49, %46, %42, %38
  br label %61

61:                                               ; preds = %60, %28
  br label %62

62:                                               ; preds = %61
  %63 = load i8, i8* %7, align 1
  %64 = add i8 %63, 1
  store i8 %64, i8* %7, align 1
  br label %24

65:                                               ; preds = %24
  %66 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %21, %13
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @cs_readw(%struct.cs5535audio*, i32) #1

declare dso_local i32 @cs_readl(%struct.cs5535audio*, i32) #1

declare dso_local i32 @process_bm0_irq(%struct.cs5535audio*) #1

declare dso_local i32 @process_bm1_irq(%struct.cs5535audio*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rme32 = type { i32, i64, i64, i64 }

@RME32_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@RME32_RCR_IRQ = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@RME32_IO_CONFIRM_ACTION_IRQ = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_rme32_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme32_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rme32*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.rme32*
  store %struct.rme32* %8, %struct.rme32** %6, align 8
  %9 = load %struct.rme32*, %struct.rme32** %6, align 8
  %10 = getelementptr inbounds %struct.rme32, %struct.rme32* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RME32_IO_CONTROL_REGISTER, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  %15 = load %struct.rme32*, %struct.rme32** %6, align 8
  %16 = getelementptr inbounds %struct.rme32, %struct.rme32* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.rme32*, %struct.rme32** %6, align 8
  %18 = getelementptr inbounds %struct.rme32, %struct.rme32* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RME32_RCR_IRQ, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %54

25:                                               ; preds = %2
  %26 = load %struct.rme32*, %struct.rme32** %6, align 8
  %27 = getelementptr inbounds %struct.rme32, %struct.rme32* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.rme32*, %struct.rme32** %6, align 8
  %32 = getelementptr inbounds %struct.rme32, %struct.rme32* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @snd_pcm_period_elapsed(i64 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.rme32*, %struct.rme32** %6, align 8
  %37 = getelementptr inbounds %struct.rme32, %struct.rme32* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.rme32*, %struct.rme32** %6, align 8
  %42 = getelementptr inbounds %struct.rme32, %struct.rme32* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @snd_pcm_period_elapsed(i64 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.rme32*, %struct.rme32** %6, align 8
  %47 = getelementptr inbounds %struct.rme32, %struct.rme32* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @RME32_IO_CONFIRM_ACTION_IRQ, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 0, i64 %50)
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %23
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @snd_pcm_period_elapsed(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

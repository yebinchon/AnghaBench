; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/bcm/extr_cygnus-pcm.c_cygnus_dma_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/bcm/extr_cygnus-pcm.c_cygnus_dma_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cygnus_audio = type { i64 }

@INTH_R5F_STATUS_OFFSET = common dso_local global i64 0, align 8
@ANY_PLAYBACK_IRQ = common dso_local global i32 0, align 4
@ANY_CAPTURE_IRQ = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@INTH_R5F_CLEAR_OFFSET = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cygnus_dma_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cygnus_dma_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cygnus_audio*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.cygnus_audio*
  store %struct.cygnus_audio* %9, %struct.cygnus_audio** %7, align 8
  %10 = load %struct.cygnus_audio*, %struct.cygnus_audio** %7, align 8
  %11 = getelementptr inbounds %struct.cygnus_audio, %struct.cygnus_audio* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @INTH_R5F_STATUS_OFFSET, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @ANY_PLAYBACK_IRQ, align 4
  %18 = load i32, i32* @ANY_CAPTURE_IRQ, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %60

24:                                               ; preds = %2
  %25 = load i32, i32* @ANY_PLAYBACK_IRQ, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.cygnus_audio*, %struct.cygnus_audio** %7, align 8
  %31 = call i32 @handle_playback_irq(%struct.cygnus_audio* %30)
  %32 = load i32, i32* @ANY_PLAYBACK_IRQ, align 4
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %32, %33
  %35 = load %struct.cygnus_audio*, %struct.cygnus_audio** %7, align 8
  %36 = getelementptr inbounds %struct.cygnus_audio, %struct.cygnus_audio* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @INTH_R5F_CLEAR_OFFSET, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  br label %41

41:                                               ; preds = %29, %24
  %42 = load i32, i32* @ANY_CAPTURE_IRQ, align 4
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load %struct.cygnus_audio*, %struct.cygnus_audio** %7, align 8
  %48 = call i32 @handle_capture_irq(%struct.cygnus_audio* %47)
  %49 = load i32, i32* @ANY_CAPTURE_IRQ, align 4
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %49, %50
  %52 = load %struct.cygnus_audio*, %struct.cygnus_audio** %7, align 8
  %53 = getelementptr inbounds %struct.cygnus_audio, %struct.cygnus_audio* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @INTH_R5F_CLEAR_OFFSET, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 %51, i64 %56)
  br label %58

58:                                               ; preds = %46, %41
  %59 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %22
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @handle_playback_irq(%struct.cygnus_audio*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @handle_capture_irq(%struct.cygnus_audio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

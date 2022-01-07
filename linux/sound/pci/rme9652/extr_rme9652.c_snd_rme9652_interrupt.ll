; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rme9652 = type { %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@RME9652_status_register = common dso_local global i32 0, align 4
@RME9652_IRQ = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@RME9652_irq_clear = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_rme9652_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme9652_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_rme9652*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.snd_rme9652*
  store %struct.snd_rme9652* %8, %struct.snd_rme9652** %6, align 8
  %9 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %10 = load i32, i32* @RME9652_status_register, align 4
  %11 = call i32 @rme9652_read(%struct.snd_rme9652* %9, i32 %10)
  %12 = load i32, i32* @RME9652_IRQ, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @IRQ_NONE, align 4
  store i32 %16, i32* %3, align 4
  br label %54

17:                                               ; preds = %2
  %18 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %19 = load i32, i32* @RME9652_irq_clear, align 4
  %20 = call i32 @rme9652_write(%struct.snd_rme9652* %18, i32 %19, i32 0)
  %21 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %22 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %17
  %26 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %27 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @snd_pcm_period_elapsed(i32 %34)
  br label %36

36:                                               ; preds = %25, %17
  %37 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %38 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %43 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @snd_pcm_period_elapsed(i32 %50)
  br label %52

52:                                               ; preds = %41, %36
  %53 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @rme9652_read(%struct.snd_rme9652*, i32) #1

declare dso_local i32 @rme9652_write(%struct.snd_rme9652*, i32, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

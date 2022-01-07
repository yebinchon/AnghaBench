; ModuleID = '/home/carl/AnghaBench/linux/sound/sh/extr_aica.c_aica_period_elapsed.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sh/extr_aica.c_aica_period_elapsed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card_aica = type { i32, i32, i32, i32, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.TYPE_2__*, %struct.snd_pcm_runtime* }
%struct.TYPE_2__ = type { %struct.snd_card_aica* }
%struct.snd_pcm_runtime = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@AICA_CONTROL_CHANNEL_SAMPLE_NUMBER = common dso_local global i32 0, align 4
@AICA_PERIOD_SIZE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@dreamcastcard = common dso_local global %struct.snd_card_aica* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @aica_period_elapsed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aica_period_elapsed(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.snd_card_aica*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.snd_card_aica*, %struct.snd_card_aica** %3, align 8
  %8 = ptrtoint %struct.snd_card_aica* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @timer, align 4
  %11 = call %struct.snd_card_aica* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.snd_card_aica* %11, %struct.snd_card_aica** %3, align 8
  %12 = load %struct.snd_card_aica*, %struct.snd_card_aica** %3, align 8
  %13 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %12, i32 0, i32 4
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %13, align 8
  store %struct.snd_pcm_substream* %14, %struct.snd_pcm_substream** %4, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 1
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  store %struct.snd_pcm_runtime* %17, %struct.snd_pcm_runtime** %6, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.snd_card_aica*, %struct.snd_card_aica** %21, align 8
  store %struct.snd_card_aica* %22, %struct.snd_card_aica** %3, align 8
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %24 = load i32, i32* @AICA_CONTROL_CHANNEL_SAMPLE_NUMBER, align 4
  %25 = call i32 @readl(i32 %24)
  %26 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %23, i32 %25)
  %27 = load i32, i32* @AICA_PERIOD_SIZE, align 4
  %28 = sdiv i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.snd_card_aica*, %struct.snd_card_aica** %3, align 8
  %31 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %1
  %35 = load %struct.snd_card_aica*, %struct.snd_card_aica** %3, align 8
  %36 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %35, i32 0, i32 3
  %37 = load i64, i64* @jiffies, align 8
  %38 = add nsw i64 %37, 1
  %39 = call i32 @mod_timer(i32* %36, i64 %38)
  br label %64

40:                                               ; preds = %1
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.snd_card_aica*, %struct.snd_card_aica** %3, align 8
  %48 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.snd_card_aica*, %struct.snd_card_aica** %3, align 8
  %51 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load %struct.snd_card_aica*, %struct.snd_card_aica** %3, align 8
  %59 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %49
  %61 = load %struct.snd_card_aica*, %struct.snd_card_aica** %3, align 8
  %62 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %61, i32 0, i32 2
  %63 = call i32 @schedule_work(i32* %62)
  br label %64

64:                                               ; preds = %60, %34
  ret void
}

declare dso_local %struct.snd_card_aica* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

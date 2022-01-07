; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_playback_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_playback_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs4231 = type { i32*, i32, i32 }
%struct.snd_pcm_hw_params = type { i32 }

@CS4231_PLAYBK_FORMAT = common dso_local global i32 0, align 4
@CS4231_IFACE_CTRL = common dso_local global i64 0, align 8
@CS4231_RECORD_ENABLE = common dso_local global i32 0, align 4
@CS4231_REC_FORMAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_cs4231*, %struct.snd_pcm_hw_params*, i8)* @snd_cs4231_playback_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs4231_playback_format(%struct.snd_cs4231* %0, %struct.snd_pcm_hw_params* %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.snd_cs4231*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store %struct.snd_cs4231* %0, %struct.snd_cs4231** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store i8 %2, i8* %6, align 1
  %8 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %9 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %12 = call i32 @snd_cs4231_calibrate_mute(%struct.snd_cs4231* %11, i32 1)
  %13 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %14 = call i32 @snd_cs4231_mce_up(%struct.snd_cs4231* %13)
  %15 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %16 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %15, i32 0, i32 2
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %20 = load i32, i32* @CS4231_PLAYBK_FORMAT, align 4
  %21 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %22 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @CS4231_IFACE_CTRL, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CS4231_RECORD_ENABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %3
  %31 = load i8, i8* %6, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 240
  %34 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %35 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @CS4231_REC_FORMAT, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 15
  %41 = or i32 %33, %40
  br label %45

42:                                               ; preds = %3
  %43 = load i8, i8* %6, align 1
  %44 = zext i8 %43 to i32
  br label %45

45:                                               ; preds = %42, %30
  %46 = phi i32 [ %41, %30 ], [ %44, %42 ]
  %47 = trunc i32 %46 to i8
  %48 = call i32 @snd_cs4231_out(%struct.snd_cs4231* %19, i32 %20, i8 zeroext %47)
  %49 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %50 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %49, i32 0, i32 2
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %54 = call i32 @snd_cs4231_mce_down(%struct.snd_cs4231* %53)
  %55 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %56 = call i32 @snd_cs4231_calibrate_mute(%struct.snd_cs4231* %55, i32 0)
  %57 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %58 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_cs4231_calibrate_mute(%struct.snd_cs4231*, i32) #1

declare dso_local i32 @snd_cs4231_mce_up(%struct.snd_cs4231*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_cs4231_out(%struct.snd_cs4231*, i32, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_cs4231_mce_down(%struct.snd_cs4231*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

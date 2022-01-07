; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_synth.c_snd_emux_timer_callback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_synth.c_snd_emux_timer_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { i32, i32, i32, i32, %struct.TYPE_2__, %struct.snd_emux_voice* }
%struct.TYPE_2__ = type { i32 (%struct.snd_emux_voice*)* }
%struct.snd_emux_voice = type { i64, i64 }
%struct.timer_list = type { i32 }

@tlist = common dso_local global i32 0, align 4
@SNDRV_EMUX_ST_PENDING = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@SNDRV_EMUX_ST_RELEASED = common dso_local global i64 0, align 8
@emu = common dso_local global %struct.snd_emux* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emux_timer_callback(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.snd_emux*, align 8
  %4 = alloca %struct.snd_emux_voice*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %8 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %9 = ptrtoint %struct.snd_emux* %8 to i32
  %10 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %11 = load i32, i32* @tlist, align 4
  %12 = call %struct.snd_emux* @from_timer(i32 %9, %struct.timer_list* %10, i32 %11)
  store %struct.snd_emux* %12, %struct.snd_emux** %3, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %14 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %13, i32 0, i32 2
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %56, %1
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %20 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %17
  %24 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %25 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %24, i32 0, i32 5
  %26 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %26, i64 %28
  store %struct.snd_emux_voice* %29, %struct.snd_emux_voice** %4, align 8
  %30 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %31 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SNDRV_EMUX_ST_PENDING, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %23
  %36 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %37 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @jiffies, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %54

44:                                               ; preds = %35
  %45 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %46 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.snd_emux_voice*)*, i32 (%struct.snd_emux_voice*)** %47, align 8
  %49 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %50 = call i32 %48(%struct.snd_emux_voice* %49)
  %51 = load i64, i64* @SNDRV_EMUX_ST_RELEASED, align 8
  %52 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %53 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %44, %41
  br label %55

55:                                               ; preds = %54, %23
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %17

59:                                               ; preds = %17
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %64 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %63, i32 0, i32 3
  %65 = load i64, i64* @jiffies, align 8
  %66 = add nsw i64 %65, 1
  %67 = call i32 @mod_timer(i32* %64, i64 %66)
  %68 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %69 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  br label %73

70:                                               ; preds = %59
  %71 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %72 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %62
  %74 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %75 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %74, i32 0, i32 2
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  ret void
}

declare dso_local %struct.snd_emux* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

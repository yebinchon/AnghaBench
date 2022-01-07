; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer_instance = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_TIMER_IFLG_SLAVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_timer_start(%struct.snd_timer_instance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_timer_instance*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_timer_instance* %0, %struct.snd_timer_instance** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %7 = icmp eq %struct.snd_timer_instance* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp ult i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %28

14:                                               ; preds = %8
  %15 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %16 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SNDRV_TIMER_IFLG_SLAVE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %23 = call i32 @snd_timer_start_slave(%struct.snd_timer_instance* %22, i32 1)
  store i32 %23, i32* %3, align 4
  br label %28

24:                                               ; preds = %14
  %25 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @snd_timer_start1(%struct.snd_timer_instance* %25, i32 1, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %21, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @snd_timer_start_slave(%struct.snd_timer_instance*, i32) #1

declare dso_local i32 @snd_timer_start1(%struct.snd_timer_instance*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_stop_slave.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_stop_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer_instance = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@slave_active_lock = common dso_local global i32 0, align 4
@SNDRV_TIMER_IFLG_RUNNING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SNDRV_TIMER_EVENT_STOP = common dso_local global i32 0, align 4
@SNDRV_TIMER_EVENT_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_timer_instance*, i32)* @snd_timer_stop_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_timer_stop_slave(%struct.snd_timer_instance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_timer_instance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.snd_timer_instance* %0, %struct.snd_timer_instance** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @slave_active_lock, i64 %7)
  %9 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %10 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SNDRV_TIMER_IFLG_RUNNING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* @slave_active_lock, i64 %16)
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %61

20:                                               ; preds = %2
  %21 = load i32, i32* @SNDRV_TIMER_IFLG_RUNNING, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %24 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %28 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %58

31:                                               ; preds = %20
  %32 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %33 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %38 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %37, i32 0, i32 3
  %39 = call i32 @list_del_init(i32* %38)
  %40 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %41 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %40, i32 0, i32 2
  %42 = call i32 @list_del_init(i32* %41)
  %43 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = load i32, i32* @SNDRV_TIMER_EVENT_STOP, align 4
  br label %50

48:                                               ; preds = %31
  %49 = load i32, i32* @SNDRV_TIMER_EVENT_PAUSE, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = call i32 @snd_timer_notify1(%struct.snd_timer_instance* %43, i32 %51)
  %53 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %54 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock(i32* %56)
  br label %58

58:                                               ; preds = %50, %20
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* @slave_active_lock, i64 %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %15
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @snd_timer_notify1(%struct.snd_timer_instance*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

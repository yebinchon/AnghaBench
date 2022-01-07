; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_start_slave.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_start_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer_instance = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@slave_active_lock = common dso_local global i32 0, align 4
@SNDRV_TIMER_IFLG_DEAD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_TIMER_IFLG_RUNNING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SNDRV_TIMER_EVENT_START = common dso_local global i32 0, align 4
@SNDRV_TIMER_EVENT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_timer_instance*, i32)* @snd_timer_start_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_timer_start_slave(%struct.snd_timer_instance* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_timer_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.snd_timer_instance* %0, %struct.snd_timer_instance** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @slave_active_lock, i64 %7)
  %9 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %10 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SNDRV_TIMER_IFLG_DEAD, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  br label %72

18:                                               ; preds = %2
  %19 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %20 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SNDRV_TIMER_IFLG_RUNNING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %72

28:                                               ; preds = %18
  %29 = load i32, i32* @SNDRV_TIMER_IFLG_RUNNING, align 4
  %30 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %31 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %35 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %38, label %71

38:                                               ; preds = %28
  %39 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %40 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %43, label %71

43:                                               ; preds = %38
  %44 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %45 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %50 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %49, i32 0, i32 3
  %51 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %52 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = call i32 @list_add_tail(i32* %50, i32* %54)
  %56 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %43
  %60 = load i32, i32* @SNDRV_TIMER_EVENT_START, align 4
  br label %63

61:                                               ; preds = %43
  %62 = load i32, i32* @SNDRV_TIMER_EVENT_CONTINUE, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = call i32 @snd_timer_notify1(%struct.snd_timer_instance* %56, i32 %64)
  %66 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %67 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock(i32* %69)
  br label %71

71:                                               ; preds = %63, %38, %28
  store i32 1, i32* %6, align 4
  br label %72

72:                                               ; preds = %71, %25, %15
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* @slave_active_lock, i64 %73)
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @snd_timer_notify1(%struct.snd_timer_instance*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

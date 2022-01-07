; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_loopback_timer_function.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_loopback_timer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loopback_pcm = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@dpcm = common dso_local global %struct.loopback_pcm* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @loopback_timer_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loopback_timer_function(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.loopback_pcm*, align 8
  %4 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %6 = ptrtoint %struct.loopback_pcm* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.loopback_pcm* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.loopback_pcm* %9, %struct.loopback_pcm** %3, align 8
  %10 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %11 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %17 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = call i32 @loopback_pos_update(%struct.TYPE_4__* %18)
  %20 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %21 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %19, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %1
  %29 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %30 = call i32 @loopback_timer_start(%struct.loopback_pcm* %29)
  %31 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %32 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %28
  %36 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %37 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %39 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %45 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = call i32 @snd_pcm_period_elapsed(%struct.TYPE_3__* %46)
  br label %56

48:                                               ; preds = %28
  br label %49

49:                                               ; preds = %48, %1
  %50 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %51 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  br label %56

56:                                               ; preds = %49, %35
  ret void
}

declare dso_local %struct.loopback_pcm* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @loopback_pos_update(%struct.TYPE_4__*) #1

declare dso_local i32 @loopback_timer_start(%struct.loopback_pcm*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

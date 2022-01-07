; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_pcm.c_emu8k_pcm_timer_func.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_pcm.c_emu8k_pcm_timer_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu8k_pcm = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@rec = common dso_local global %struct.snd_emu8k_pcm* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @emu8k_pcm_timer_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emu8k_pcm_timer_func(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.snd_emu8k_pcm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %7 = ptrtoint %struct.snd_emu8k_pcm* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer, align 4
  %10 = call %struct.snd_emu8k_pcm* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.snd_emu8k_pcm* %10, %struct.snd_emu8k_pcm** %3, align 8
  %11 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %12 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %11, i32 0, i32 4
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %15 = call i32 @emu8k_get_curpos(%struct.snd_emu8k_pcm* %14, i32 0)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %18 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %24 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  %27 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %28 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %26, %29
  store i32 %30, i32* %5, align 4
  br label %37

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %34 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %31, %21
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %40 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %45 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %47 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %46, i32 0, i32 6
  %48 = load i64, i64* @jiffies, align 8
  %49 = add nsw i64 %48, 1
  %50 = call i32 @mod_timer(i32* %47, i64 %49)
  %51 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %52 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %55 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %53, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %37
  %59 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %60 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %63 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = srem i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %67 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %66, i32 0, i32 4
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %70 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @snd_pcm_period_elapsed(i32 %71)
  br label %77

73:                                               ; preds = %37
  %74 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %75 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %74, i32 0, i32 4
  %76 = call i32 @spin_unlock(i32* %75)
  br label %77

77:                                               ; preds = %73, %58
  ret void
}

declare dso_local %struct.snd_emu8k_pcm* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @emu8k_get_curpos(%struct.snd_emu8k_pcm*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

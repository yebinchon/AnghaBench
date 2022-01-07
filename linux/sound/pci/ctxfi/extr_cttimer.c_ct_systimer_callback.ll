; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cttimer.c_ct_systimer_callback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cttimer.c_ct_systimer_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_timer_instance = type { i32, i32, i32, i64, %struct.ct_atc_pcm*, %struct.snd_pcm_substream* }
%struct.ct_atc_pcm = type { i32 (%struct.ct_atc_pcm*)* }
%struct.snd_pcm_substream = type { %struct.TYPE_2__*, %struct.snd_pcm_runtime* }
%struct.TYPE_2__ = type { i32 (%struct.snd_pcm_substream*)* }
%struct.snd_pcm_runtime = type { i32, i32, i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ti = common dso_local global %struct.ct_timer_instance* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ct_systimer_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ct_systimer_callback(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ct_timer_instance*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.ct_atc_pcm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %13 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %3, align 8
  %14 = ptrtoint %struct.ct_timer_instance* %13 to i32
  %15 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %16 = load i32, i32* @timer, align 4
  %17 = call %struct.ct_timer_instance* @from_timer(i32 %14, %struct.timer_list* %15, i32 %16)
  store %struct.ct_timer_instance* %17, %struct.ct_timer_instance** %3, align 8
  %18 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %3, align 8
  %19 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %18, i32 0, i32 5
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %19, align 8
  store %struct.snd_pcm_substream* %20, %struct.snd_pcm_substream** %4, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 1
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %22, align 8
  store %struct.snd_pcm_runtime* %23, %struct.snd_pcm_runtime** %5, align 8
  %24 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %3, align 8
  %25 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %24, i32 0, i32 4
  %26 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %25, align 8
  store %struct.ct_atc_pcm* %26, %struct.ct_atc_pcm** %6, align 8
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %36, align 8
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %39 = call i32 %37(%struct.snd_pcm_substream* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %8, align 4
  %42 = add i32 %40, %41
  %43 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %3, align 8
  %44 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub i32 %42, %45
  %47 = load i32, i32* %8, align 4
  %48 = urem i32 %46, %47
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp uge i32 %49, %50
  br i1 %51, label %62, label %52

52:                                               ; preds = %1
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %7, align 4
  %55 = udiv i32 %53, %54
  %56 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %3, align 8
  %57 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = udiv i32 %58, %59
  %61 = icmp ne i32 %55, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %52, %1
  %63 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %64 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %63, i32 0, i32 0
  %65 = load i32 (%struct.ct_atc_pcm*)*, i32 (%struct.ct_atc_pcm*)** %64, align 8
  %66 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %67 = call i32 %65(%struct.ct_atc_pcm* %66)
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %3, align 8
  %70 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %62, %52
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %7, align 4
  %75 = urem i32 %73, %74
  %76 = sub i32 %72, %75
  %77 = load i32, i32* @HZ, align 4
  %78 = mul i32 %76, %77
  %79 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %80 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  %83 = add i32 %78, %82
  %84 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %85 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = udiv i32 %83, %86
  %88 = load i32, i32* @HZ, align 4
  %89 = mul i32 %88, 5
  %90 = udiv i32 %89, 1000
  %91 = add i32 %87, %90
  store i32 %91, i32* %12, align 4
  %92 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %3, align 8
  %93 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %92, i32 0, i32 1
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @spin_lock_irqsave(i32* %93, i64 %94)
  %96 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %3, align 8
  %97 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %71
  %101 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %3, align 8
  %102 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %101, i32 0, i32 2
  %103 = load i64, i64* @jiffies, align 8
  %104 = load i32, i32* %12, align 4
  %105 = zext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = call i32 @mod_timer(i32* %102, i64 %106)
  br label %108

108:                                              ; preds = %100, %71
  %109 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %3, align 8
  %110 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %109, i32 0, i32 1
  %111 = load i64, i64* %9, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  ret void
}

declare dso_local %struct.ct_timer_instance* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

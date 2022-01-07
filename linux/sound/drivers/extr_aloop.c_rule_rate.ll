; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_rule_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_rule_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { i32, %struct.loopback_pcm* }
%struct.loopback_pcm = type { %struct.TYPE_4__*, %struct.loopback_cable* }
%struct.TYPE_4__ = type { i32 }
%struct.loopback_cable = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.snd_interval = type { i64, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @rule_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rule_rate(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca %struct.snd_pcm_hw_rule*, align 8
  %5 = alloca %struct.loopback_pcm*, align 8
  %6 = alloca %struct.loopback_cable*, align 8
  %7 = alloca %struct.snd_interval, align 8
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %4, align 8
  %8 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %8, i32 0, i32 1
  %10 = load %struct.loopback_pcm*, %struct.loopback_pcm** %9, align 8
  store %struct.loopback_pcm* %10, %struct.loopback_pcm** %5, align 8
  %11 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %12 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %11, i32 0, i32 1
  %13 = load %struct.loopback_cable*, %struct.loopback_cable** %12, align 8
  store %struct.loopback_cable* %13, %struct.loopback_cable** %6, align 8
  %14 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %15 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %20 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %7, i32 0, i32 4
  store i32 %22, i32* %23, align 4
  %24 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %25 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %7, i32 0, i32 3
  store i32 %27, i32* %28, align 8
  %29 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %30 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %7, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %7, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %7, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %38 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @hw_param_interval(%struct.snd_pcm_hw_params* %37, i32 %40)
  %42 = call i32 @snd_interval_refine(i32 %41, %struct.snd_interval* %7)
  ret i32 %42
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_interval_refine(i32, %struct.snd_interval*) #1

declare dso_local i32 @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_timer_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_timer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer = type { i32 }
%struct.snd_wss = type { i32, i32* }

@CS4231_TIMER_ENABLE = common dso_local global i32 0, align 4
@CS4231_ALT_FEATURE_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_timer*)* @snd_wss_timer_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_wss_timer_stop(%struct.snd_timer* %0) #0 {
  %2 = alloca %struct.snd_timer*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_wss*, align 8
  store %struct.snd_timer* %0, %struct.snd_timer** %2, align 8
  %5 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %6 = call %struct.snd_wss* @snd_timer_chip(%struct.snd_timer* %5)
  store %struct.snd_wss* %6, %struct.snd_wss** %4, align 8
  %7 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %8 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %7, i32 0, i32 0
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i32, i32* @CS4231_TIMER_ENABLE, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %14 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @CS4231_ALT_FEATURE_1, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %12
  store i32 %19, i32* %17, align 4
  %20 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %21 = load i64, i64* @CS4231_ALT_FEATURE_1, align 8
  %22 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %23 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @CS4231_ALT_FEATURE_1, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @snd_wss_out(%struct.snd_wss* %20, i64 %21, i32 %27)
  %29 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %30 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %29, i32 0, i32 0
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  ret i32 0
}

declare dso_local %struct.snd_wss* @snd_timer_chip(%struct.snd_timer*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_wss_out(%struct.snd_wss*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

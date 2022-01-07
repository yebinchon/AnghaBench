; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_timer.c_snd_gf1_timers_done.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_timer.c_snd_gf1_timers_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32* }

@SNDRV_GF1_HANDLER_TIMER1 = common dso_local global i32 0, align 4
@SNDRV_GF1_HANDLER_TIMER2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_gf1_timers_done(%struct.snd_gus_card* %0) #0 {
  %2 = alloca %struct.snd_gus_card*, align 8
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %2, align 8
  %3 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %4 = load i32, i32* @SNDRV_GF1_HANDLER_TIMER1, align 4
  %5 = load i32, i32* @SNDRV_GF1_HANDLER_TIMER2, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @snd_gf1_set_default_handlers(%struct.snd_gus_card* %3, i32 %6)
  %8 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %9 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %15 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %18 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @snd_device_free(i32 %16, i32* %20)
  %22 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %23 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %13, %1
  %26 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %27 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %33 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %36 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @snd_device_free(i32 %34, i32* %38)
  %40 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %41 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %31, %25
  ret void
}

declare dso_local i32 @snd_gf1_set_default_handlers(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @snd_device_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

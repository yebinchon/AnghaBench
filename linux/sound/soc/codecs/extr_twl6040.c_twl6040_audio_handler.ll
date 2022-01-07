; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl6040.c_twl6040_audio_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl6040.c_twl6040_audio_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.twl6040_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@system_power_efficient_wq = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @twl6040_audio_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6040_audio_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.twl6040_data*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.snd_soc_component*
  store %struct.snd_soc_component* %8, %struct.snd_soc_component** %5, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %10 = call %struct.twl6040_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.twl6040_data* %10, %struct.twl6040_data** %6, align 8
  %11 = load i32, i32* @system_power_efficient_wq, align 4
  %12 = load %struct.twl6040_data*, %struct.twl6040_data** %6, align 8
  %13 = getelementptr inbounds %struct.twl6040_data, %struct.twl6040_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @msecs_to_jiffies(i32 200)
  %16 = call i32 @queue_delayed_work(i32 %11, i32* %14, i32 %15)
  %17 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %17
}

declare dso_local %struct.twl6040_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

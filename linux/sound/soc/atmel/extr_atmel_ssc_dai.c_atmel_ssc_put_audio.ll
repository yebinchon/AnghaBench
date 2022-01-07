; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_ssc_dai.c_atmel_ssc_put_audio.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_ssc_dai.c_atmel_ssc_put_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ssc_device* }
%struct.ssc_device = type { i32 }

@ssc_info = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atmel_ssc_put_audio(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssc_device*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssc_info, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.ssc_device*, %struct.ssc_device** %8, align 8
  store %struct.ssc_device* %9, %struct.ssc_device** %3, align 8
  %10 = load %struct.ssc_device*, %struct.ssc_device** %3, align 8
  %11 = call i32 @ssc_free(%struct.ssc_device* %10)
  ret void
}

declare dso_local i32 @ssc_free(%struct.ssc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

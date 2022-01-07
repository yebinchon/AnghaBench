; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/extr_i2c.c_snd_i2c_probeaddr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/extr_i2c.c_snd_i2c_probeaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_i2c_bus = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_i2c_probeaddr(%struct.snd_i2c_bus* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.snd_i2c_bus*, align 8
  %4 = alloca i16, align 2
  store %struct.snd_i2c_bus* %0, %struct.snd_i2c_bus** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %3, align 8
  %6 = getelementptr inbounds %struct.snd_i2c_bus, %struct.snd_i2c_bus* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to i32 (%struct.snd_i2c_bus*, i16)**
  %10 = load i32 (%struct.snd_i2c_bus*, i16)*, i32 (%struct.snd_i2c_bus*, i16)** %9, align 8
  %11 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %3, align 8
  %12 = load i16, i16* %4, align 2
  %13 = call i32 %10(%struct.snd_i2c_bus* %11, i16 zeroext %12)
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

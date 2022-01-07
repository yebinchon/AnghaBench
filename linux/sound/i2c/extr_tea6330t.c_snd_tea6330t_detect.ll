; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/extr_tea6330t.c_snd_tea6330t_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/extr_tea6330t.c_snd_tea6330t_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_i2c_bus = type { i32 }

@TEA6330T_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_tea6330t_detect(%struct.snd_i2c_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_i2c_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_i2c_bus* %0, %struct.snd_i2c_bus** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %3, align 8
  %7 = call i32 @snd_i2c_lock(%struct.snd_i2c_bus* %6)
  %8 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %3, align 8
  %9 = load i32, i32* @TEA6330T_ADDR, align 4
  %10 = call i32 @snd_i2c_probeaddr(%struct.snd_i2c_bus* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %3, align 8
  %12 = call i32 @snd_i2c_unlock(%struct.snd_i2c_bus* %11)
  %13 = load i32, i32* %5, align 4
  ret i32 %13
}

declare dso_local i32 @snd_i2c_lock(%struct.snd_i2c_bus*) #1

declare dso_local i32 @snd_i2c_probeaddr(%struct.snd_i2c_bus*, i32) #1

declare dso_local i32 @snd_i2c_unlock(%struct.snd_i2c_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

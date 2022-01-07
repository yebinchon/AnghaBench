; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_rme9652_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_rme9652_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rme9652 = type { i32 }

@RME9652_start_bit = common dso_local global i32 0, align 4
@RME9652_IE = common dso_local global i32 0, align 4
@RME9652_control_register = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rme9652*)* @rme9652_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rme9652_stop(%struct.snd_rme9652* %0) #0 {
  %2 = alloca %struct.snd_rme9652*, align 8
  store %struct.snd_rme9652* %0, %struct.snd_rme9652** %2, align 8
  %3 = load i32, i32* @RME9652_start_bit, align 4
  %4 = load i32, i32* @RME9652_IE, align 4
  %5 = or i32 %3, %4
  %6 = xor i32 %5, -1
  %7 = load %struct.snd_rme9652*, %struct.snd_rme9652** %2, align 8
  %8 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load %struct.snd_rme9652*, %struct.snd_rme9652** %2, align 8
  %12 = load i32, i32* @RME9652_control_register, align 4
  %13 = load %struct.snd_rme9652*, %struct.snd_rme9652** %2, align 8
  %14 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @rme9652_write(%struct.snd_rme9652* %11, i32 %12, i32 %15)
  ret void
}

declare dso_local i32 @rme9652_write(%struct.snd_rme9652*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

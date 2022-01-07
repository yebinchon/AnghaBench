; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_maudio.c_special_clk_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_maudio.c_special_clk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { %struct.special_params* }
%struct.special_params = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_bebob*, i32*)* @special_clk_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @special_clk_get(%struct.snd_bebob* %0, i32* %1) #0 {
  %3 = alloca %struct.snd_bebob*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.special_params*, align 8
  store %struct.snd_bebob* %0, %struct.snd_bebob** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %7 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %6, i32 0, i32 0
  %8 = load %struct.special_params*, %struct.special_params** %7, align 8
  store %struct.special_params* %8, %struct.special_params** %5, align 8
  %9 = load %struct.special_params*, %struct.special_params** %5, align 8
  %10 = getelementptr inbounds %struct.special_params, %struct.special_params* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %4, align 8
  store i32 %11, i32* %12, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

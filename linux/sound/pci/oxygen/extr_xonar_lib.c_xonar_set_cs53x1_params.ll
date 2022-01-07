; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_lib.c_xonar_set_cs53x1_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_lib.c_xonar_set_cs53x1_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@GPIO_CS53x1_M_SINGLE = common dso_local global i32 0, align 4
@GPIO_CS53x1_M_DOUBLE = common dso_local global i32 0, align 4
@GPIO_CS53x1_M_QUAD = common dso_local global i32 0, align 4
@OXYGEN_GPIO_DATA = common dso_local global i32 0, align 4
@GPIO_CS53x1_M_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xonar_set_cs53x1_params(%struct.oxygen* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %6 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %7 = call i32 @params_rate(%struct.snd_pcm_hw_params* %6)
  %8 = icmp sle i32 %7, 54000
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @GPIO_CS53x1_M_SINGLE, align 4
  store i32 %10, i32* %5, align 4
  br label %20

11:                                               ; preds = %2
  %12 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %13 = call i32 @params_rate(%struct.snd_pcm_hw_params* %12)
  %14 = icmp sle i32 %13, 108000
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @GPIO_CS53x1_M_DOUBLE, align 4
  store i32 %16, i32* %5, align 4
  br label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @GPIO_CS53x1_M_QUAD, align 4
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %17, %15
  br label %20

20:                                               ; preds = %19, %9
  %21 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %22 = load i32, i32* @OXYGEN_GPIO_DATA, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @GPIO_CS53x1_M_MASK, align 4
  %25 = call i32 @oxygen_write16_masked(%struct.oxygen* %21, i32 %22, i32 %23, i32 %24)
  ret void
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @oxygen_write16_masked(%struct.oxygen*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

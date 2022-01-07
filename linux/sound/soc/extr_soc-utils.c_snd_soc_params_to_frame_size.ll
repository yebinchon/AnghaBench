; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-utils.c_snd_soc_params_to_frame_size.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-utils.c_snd_soc_params_to_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  %5 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %6 = call i32 @params_format(%struct.snd_pcm_hw_params* %5)
  %7 = call i32 @snd_pcm_format_width(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %17

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %15 = call i32 @params_channels(%struct.snd_pcm_hw_params* %14)
  %16 = call i32 @snd_soc_calc_frame_size(i32 %13, i32 %15, i32 1)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %12, %10
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_calc_frame_size(i32, i32, i32) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

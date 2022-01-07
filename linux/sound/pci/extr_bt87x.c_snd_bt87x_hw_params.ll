; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_bt87x.c_snd_bt87x_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_bt87x.c_snd_bt87x_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_bt87x = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_bt87x_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_bt87x_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_bt87x*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = call %struct.snd_bt87x* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_bt87x* %9, %struct.snd_bt87x** %6, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %12 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %11)
  %13 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %10, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load %struct.snd_bt87x*, %struct.snd_bt87x** %6, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %22 = call i32 @params_periods(%struct.snd_pcm_hw_params* %21)
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %24 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %23)
  %25 = call i32 @snd_bt87x_create_risc(%struct.snd_bt87x* %19, %struct.snd_pcm_substream* %20, i32 %22, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %18, %16
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.snd_bt87x* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_bt87x_create_risc(%struct.snd_bt87x*, %struct.snd_pcm_substream*, i32, i32) #1

declare dso_local i32 @params_periods(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

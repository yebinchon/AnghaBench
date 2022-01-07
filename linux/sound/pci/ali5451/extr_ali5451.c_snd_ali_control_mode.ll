; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_control_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_control_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ali_control_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ali_control_mode(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 0
  %7 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  store %struct.snd_pcm_runtime* %7, %struct.snd_pcm_runtime** %4, align 8
  store i32 1, i32* %3, align 4
  %8 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @snd_pcm_format_width(i32 %10)
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, 8
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @snd_pcm_format_unsigned(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, 2
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %16
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @snd_pcm_format_unsigned(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

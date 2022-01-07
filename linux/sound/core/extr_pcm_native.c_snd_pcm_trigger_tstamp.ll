; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_trigger_tstamp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_trigger_tstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_pcm_substream*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*)* @snd_pcm_trigger_tstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_pcm_trigger_tstamp(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %4, i32 0, i32 0
  %6 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  store %struct.snd_pcm_runtime* %6, %struct.snd_pcm_runtime** %3, align 8
  %7 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %7, i32 0, i32 0
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %10 = icmp eq %struct.snd_pcm_substream* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %45

12:                                               ; preds = %1
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 0
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %14, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %17 = icmp eq %struct.snd_pcm_substream* %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 1
  %27 = call i32 @snd_pcm_gettime(%struct.snd_pcm_runtime* %24, i32* %26)
  br label %28

28:                                               ; preds = %23, %18
  br label %42

29:                                               ; preds = %12
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 0
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %31, align 8
  call void @snd_pcm_trigger_tstamp(%struct.snd_pcm_substream* %32)
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 0
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %34, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %35, i32 0, i32 0
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %36, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %29, %28
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %43, i32 0, i32 0
  store %struct.snd_pcm_substream* null, %struct.snd_pcm_substream** %44, align 8
  br label %45

45:                                               ; preds = %42, %11
  ret void
}

declare dso_local i32 @snd_pcm_gettime(%struct.snd_pcm_runtime*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

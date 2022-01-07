; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_pcm_accessible_state.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_pcm_accessible_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EPIPE = common dso_local global i32 0, align 4
@ESTRPIPE = common dso_local global i32 0, align 4
@EBADFD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_runtime*)* @pcm_accessible_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_accessible_state(%struct.snd_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_runtime* %0, %struct.snd_pcm_runtime** %3, align 8
  %4 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %16 [
    i32 131, label %9
    i32 130, label %9
    i32 132, label %9
    i32 128, label %10
    i32 129, label %13
  ]

9:                                                ; preds = %1, %1, %1
  store i32 0, i32* %2, align 4
  br label %19

10:                                               ; preds = %1
  %11 = load i32, i32* @EPIPE, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @ESTRPIPE, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EBADFD, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %16, %13, %10, %9
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

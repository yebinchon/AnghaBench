; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sis7019.c___sis_alloc_playback_voice.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sis7019.c___sis_alloc_playback_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.voice = type { i32 }
%struct.sis7019 = type { %struct.voice* }

@VOICE_IN_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.voice* (%struct.sis7019*)* @__sis_alloc_playback_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.voice* @__sis_alloc_playback_voice(%struct.sis7019* %0) #0 {
  %2 = alloca %struct.sis7019*, align 8
  %3 = alloca %struct.voice*, align 8
  %4 = alloca i32, align 4
  store %struct.sis7019* %0, %struct.sis7019** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %28, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 64
  br i1 %7, label %8, label %31

8:                                                ; preds = %5
  %9 = load %struct.sis7019*, %struct.sis7019** %2, align 8
  %10 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %9, i32 0, i32 0
  %11 = load %struct.voice*, %struct.voice** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.voice, %struct.voice* %11, i64 %13
  store %struct.voice* %14, %struct.voice** %3, align 8
  %15 = load %struct.voice*, %struct.voice** %3, align 8
  %16 = getelementptr inbounds %struct.voice, %struct.voice* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @VOICE_IN_USE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %8
  br label %28

22:                                               ; preds = %8
  %23 = load i32, i32* @VOICE_IN_USE, align 4
  %24 = load %struct.voice*, %struct.voice** %3, align 8
  %25 = getelementptr inbounds %struct.voice, %struct.voice* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %32

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %5

31:                                               ; preds = %5
  store %struct.voice* null, %struct.voice** %3, align 8
  br label %32

32:                                               ; preds = %31, %22
  %33 = load %struct.voice*, %struct.voice** %3, align 8
  ret %struct.voice* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

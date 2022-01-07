; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_release_file.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_release_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_oss_file = type { %struct.snd_pcm_substream** }
%struct.snd_pcm_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_oss_file*)* @snd_pcm_oss_release_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_release_file(%struct.snd_pcm_oss_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_oss_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.snd_pcm_oss_file* %0, %struct.snd_pcm_oss_file** %3, align 8
  %6 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %3, align 8
  %7 = icmp ne %struct.snd_pcm_oss_file* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %27, %9
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_oss_file, %struct.snd_pcm_oss_file* %14, i32 0, i32 0
  %16 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %16, i64 %18
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %19, align 8
  store %struct.snd_pcm_substream* %20, %struct.snd_pcm_substream** %5, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %22 = icmp ne %struct.snd_pcm_substream* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %25 = call i32 @snd_pcm_release_substream(%struct.snd_pcm_substream* %24)
  br label %26

26:                                               ; preds = %23, %13
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %10

30:                                               ; preds = %10
  %31 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %3, align 8
  %32 = call i32 @kfree(%struct.snd_pcm_oss_file* %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %8
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @snd_pcm_release_substream(%struct.snd_pcm_substream*) #1

declare dso_local i32 @kfree(%struct.snd_pcm_oss_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

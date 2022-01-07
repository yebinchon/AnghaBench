; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_set_fragment.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_set_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_oss_file = type { %struct.snd_pcm_substream** }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_oss_file*, i32)* @snd_pcm_oss_set_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_set_fragment(%struct.snd_pcm_oss_file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_oss_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_substream*, align 8
  %9 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_oss_file* %0, %struct.snd_pcm_oss_file** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %12

12:                                               ; preds = %47, %2
  %13 = load i32, i32* %7, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %12
  %16 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %4, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_oss_file, %struct.snd_pcm_oss_file* %16, i32 0, i32 0
  %18 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %18, i64 %20
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %21, align 8
  store %struct.snd_pcm_substream* %22, %struct.snd_pcm_substream** %8, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %24 = icmp eq %struct.snd_pcm_substream* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %47

26:                                               ; preds = %15
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 0
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %28, align 8
  store %struct.snd_pcm_runtime* %29, %struct.snd_pcm_runtime** %9, align 8
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %31 = call i32 @lock_params(%struct.snd_pcm_runtime* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %52

36:                                               ; preds = %26
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @snd_pcm_oss_set_fragment1(%struct.snd_pcm_substream* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %41 = call i32 @unlock_params(%struct.snd_pcm_runtime* %40)
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %52

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %25
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %7, align 4
  br label %12

50:                                               ; preds = %12
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %44, %34
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @lock_params(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @snd_pcm_oss_set_fragment1(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @unlock_params(%struct.snd_pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

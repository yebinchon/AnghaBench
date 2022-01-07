; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_open_file.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.snd_pcm_file* }
%struct.snd_pcm_file = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32, i32 }
%struct.snd_pcm = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pcm_release_private = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.snd_pcm*, i32)* @snd_pcm_open_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_open_file(%struct.file* %0, %struct.snd_pcm* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_file*, align 8
  %9 = alloca %struct.snd_pcm_substream*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.snd_pcm* %1, %struct.snd_pcm** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call i32 @snd_pcm_open_substream(%struct.snd_pcm* %11, i32 %12, %struct.file* %13, %struct.snd_pcm_substream** %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %45

19:                                               ; preds = %3
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.snd_pcm_file* @kzalloc(i32 8, i32 %20)
  store %struct.snd_pcm_file* %21, %struct.snd_pcm_file** %8, align 8
  %22 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %8, align 8
  %23 = icmp eq %struct.snd_pcm_file* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %26 = call i32 @snd_pcm_release_substream(%struct.snd_pcm_substream* %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %45

29:                                               ; preds = %19
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %31 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %8, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_file, %struct.snd_pcm_file* %31, i32 0, i32 0
  store %struct.snd_pcm_substream* %30, %struct.snd_pcm_substream** %32, align 8
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32, i32* @pcm_release_private, align 4
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %29
  %42 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %8, align 8
  %43 = load %struct.file*, %struct.file** %5, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  store %struct.snd_pcm_file* %42, %struct.snd_pcm_file** %44, align 8
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %41, %24, %17
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @snd_pcm_open_substream(%struct.snd_pcm*, i32, %struct.file*, %struct.snd_pcm_substream**) #1

declare dso_local %struct.snd_pcm_file* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_pcm_release_substream(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

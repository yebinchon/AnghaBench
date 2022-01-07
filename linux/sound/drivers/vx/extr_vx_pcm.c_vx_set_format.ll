; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_pcm.c_vx_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_pcm.c_vx_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.vx_pipe = type { i32 }
%struct.snd_pcm_runtime = type { i32, i32, i32 }

@HEADER_FMT_BASE = common dso_local global i32 0, align 4
@HEADER_FMT_MONO = common dso_local global i32 0, align 4
@HEADER_FMT_INTEL = common dso_local global i32 0, align 4
@HEADER_FMT_UPTO32 = common dso_local global i32 0, align 4
@HEADER_FMT_UPTO11 = common dso_local global i32 0, align 4
@HEADER_FMT_16BITS = common dso_local global i32 0, align 4
@HEADER_FMT_24BITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*, %struct.vx_pipe*, %struct.snd_pcm_runtime*)* @vx_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_set_format(%struct.vx_core* %0, %struct.vx_pipe* %1, %struct.snd_pcm_runtime* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vx_core*, align 8
  %6 = alloca %struct.vx_pipe*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %5, align 8
  store %struct.vx_pipe* %1, %struct.vx_pipe** %6, align 8
  store %struct.snd_pcm_runtime* %2, %struct.snd_pcm_runtime** %7, align 8
  %9 = load i32, i32* @HEADER_FMT_BASE, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @HEADER_FMT_MONO, align 4
  %16 = load i32, i32* %8, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %14, %3
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @snd_pcm_format_little_endian(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @HEADER_FMT_INTEL, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %24, %18
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %31, 32000
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 11025
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @HEADER_FMT_UPTO32, align 4
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %52

42:                                               ; preds = %33, %28
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sle i32 %45, 11025
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @HEADER_FMT_UPTO11, align 4
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %47, %42
  br label %52

52:                                               ; preds = %51, %38
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @snd_pcm_format_physical_width(i32 %55)
  switch i32 %56, label %65 [
    i32 16, label %57
    i32 24, label %61
  ]

57:                                               ; preds = %52
  %58 = load i32, i32* @HEADER_FMT_16BITS, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %69

61:                                               ; preds = %52
  %62 = load i32, i32* @HEADER_FMT_24BITS, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %69

65:                                               ; preds = %52
  %66 = call i32 (...) @snd_BUG()
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %74

69:                                               ; preds = %61, %57
  %70 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %71 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @vx_set_stream_format(%struct.vx_core* %70, %struct.vx_pipe* %71, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %69, %65
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i64 @snd_pcm_format_little_endian(i32) #1

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @vx_set_stream_format(%struct.vx_core*, %struct.vx_pipe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

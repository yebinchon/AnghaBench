; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, i32, i32, %struct.snd_pcm_str*, %struct.snd_pcm* }
%struct.snd_pcm_str = type { i64, i64 }
%struct.snd_pcm = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_info = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_info(%struct.snd_pcm_substream* %0, %struct.snd_pcm_info* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_info*, align 8
  %5 = alloca %struct.snd_pcm*, align 8
  %6 = alloca %struct.snd_pcm_str*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_info* %1, %struct.snd_pcm_info** %4, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 4
  %9 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  store %struct.snd_pcm* %9, %struct.snd_pcm** %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 3
  %12 = load %struct.snd_pcm_str*, %struct.snd_pcm_str** %11, align 8
  store %struct.snd_pcm_str* %12, %struct.snd_pcm_str** %6, align 8
  %13 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %14 = call i32 @memset(%struct.snd_pcm_info* %13, i32 0, i32 56)
  %15 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %16 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %15, i32 0, i32 5
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_info, %struct.snd_pcm_info* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 4
  %22 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %23 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_info, %struct.snd_pcm_info* %25, i32 0, i32 9
  store i32 %24, i32* %26, align 8
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_info, %struct.snd_pcm_info* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 4
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_info, %struct.snd_pcm_info* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  %37 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_info, %struct.snd_pcm_info* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %41 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @strlcpy(i32 %39, i32 %42, i32 4)
  %44 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_info, %struct.snd_pcm_info* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %48 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @strlcpy(i32 %46, i32 %49, i32 4)
  %51 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %52 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_info, %struct.snd_pcm_info* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %57 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_info, %struct.snd_pcm_info* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.snd_pcm_str*, %struct.snd_pcm_str** %6, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_str, %struct.snd_pcm_str* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_info, %struct.snd_pcm_info* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load %struct.snd_pcm_str*, %struct.snd_pcm_str** %6, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_str, %struct.snd_pcm_str* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.snd_pcm_str*, %struct.snd_pcm_str** %6, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_str, %struct.snd_pcm_str* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_info, %struct.snd_pcm_info* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_info, %struct.snd_pcm_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @strlcpy(i32 %77, i32 %80, i32 4)
  ret i32 0
}

declare dso_local i32 @memset(%struct.snd_pcm_info*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

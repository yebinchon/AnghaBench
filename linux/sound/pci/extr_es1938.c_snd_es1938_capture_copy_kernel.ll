; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_capture_copy_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_capture_copy_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i8* }
%struct.es1938 = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, i64, i8*, i64)* @snd_es1938_capture_copy_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1938_capture_copy_kernel(%struct.snd_pcm_substream* %0, i32 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.snd_pcm_runtime*, align 8
  %13 = alloca %struct.es1938*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  store %struct.snd_pcm_runtime* %16, %struct.snd_pcm_runtime** %12, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %18 = call %struct.es1938* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %17)
  store %struct.es1938* %18, %struct.es1938** %13, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %11, align 8
  %21 = add i64 %19, %20
  %22 = load %struct.es1938*, %struct.es1938** %13, align 8
  %23 = getelementptr inbounds %struct.es1938, %struct.es1938* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ugt i64 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @snd_BUG_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %71

32:                                               ; preds = %5
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %11, align 8
  %35 = add i64 %33, %34
  %36 = load %struct.es1938*, %struct.es1938** %13, align 8
  %37 = getelementptr inbounds %struct.es1938, %struct.es1938* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load i8*, i8** %10, align 8
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @memcpy(i8* %41, i8* %47, i64 %48)
  br label %70

50:                                               ; preds = %32
  %51 = load i8*, i8** %10, align 8
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i64, i64* %11, align 8
  %59 = sub i64 %58, 1
  %60 = call i32 @memcpy(i8* %51, i8* %57, i64 %59)
  %61 = load i8*, i8** %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = getelementptr inbounds i8, i8* %63, i64 -1
  %65 = load i8, i8* %64, align 1
  %66 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  store i8 %65, i8* %69, align 1
  br label %70

70:                                               ; preds = %50, %40
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %70, %29
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.es1938* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

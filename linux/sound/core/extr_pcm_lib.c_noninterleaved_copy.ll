; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_noninterleaved_copy.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_noninterleaved_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, i8*, i32, i32, i32 (%struct.snd_pcm_substream*, i32, i32, i8*, i32)*)* @noninterleaved_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noninterleaved_copy(%struct.snd_pcm_substream* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 (%struct.snd_pcm_substream*, i32, i32, i8*, i32)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_substream*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32 (%struct.snd_pcm_substream*, i32, i32, i8*, i32)*, align 8
  %14 = alloca %struct.snd_pcm_runtime*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 (%struct.snd_pcm_substream*, i32, i32, i8*, i32)* %5, i32 (%struct.snd_pcm_substream*, i32, i32, i8*, i32)** %13, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 0
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %20, align 8
  store %struct.snd_pcm_runtime* %21, %struct.snd_pcm_runtime** %14, align 8
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %15, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = bitcast i8* %25 to i8**
  store i8** %26, i8*** %16, align 8
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @samples_to_bytes(%struct.snd_pcm_runtime* %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @samples_to_bytes(%struct.snd_pcm_runtime* %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @samples_to_bytes(%struct.snd_pcm_runtime* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  store i32 0, i32* %17, align 4
  br label %36

36:                                               ; preds = %71, %6
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %76

40:                                               ; preds = %36
  %41 = load i8*, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i8**, i8*** %16, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %43, %40
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @fill_silence(%struct.snd_pcm_substream* %48, i32 %49, i32 %50, i32* null, i32 %51)
  store i32 %52, i32* %18, align 4
  br label %65

53:                                               ; preds = %43
  %54 = load i32 (%struct.snd_pcm_substream*, i32, i32, i8*, i32)*, i32 (%struct.snd_pcm_substream*, i32, i32, i8*, i32)** %13, align 8
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i8**, i8*** %16, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr i8, i8* %59, i64 %61
  %63 = load i32, i32* %12, align 4
  %64 = call i32 %54(%struct.snd_pcm_substream* %55, i32 %56, i32 %57, i8* %62, i32 %63)
  store i32 %64, i32* %18, align 4
  br label %65

65:                                               ; preds = %53, %47
  %66 = load i32, i32* %18, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* %18, align 4
  store i32 %69, i32* %7, align 4
  br label %77

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %17, align 4
  %74 = load i8**, i8*** %16, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i32 1
  store i8** %75, i8*** %16, align 8
  br label %36

76:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %76, %68
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @samples_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @fill_silence(%struct.snd_pcm_substream*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

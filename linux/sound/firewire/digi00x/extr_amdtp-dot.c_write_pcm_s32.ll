; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_amdtp-dot.c_write_pcm_s32.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_amdtp-dot.c_write_pcm_s32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32, i32, %struct.amdtp_dot* }
%struct.amdtp_dot = type { i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdtp_stream*, %struct.snd_pcm_substream*, i32*, i32, i32)* @write_pcm_s32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_pcm_s32(%struct.amdtp_stream* %0, %struct.snd_pcm_substream* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.amdtp_stream*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.amdtp_dot*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_pcm_runtime*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %6, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %20 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %19, i32 0, i32 2
  %21 = load %struct.amdtp_dot*, %struct.amdtp_dot** %20, align 8
  store %struct.amdtp_dot* %21, %struct.amdtp_dot** %11, align 8
  %22 = load %struct.amdtp_dot*, %struct.amdtp_dot** %11, align 8
  %23 = getelementptr inbounds %struct.amdtp_dot, %struct.amdtp_dot* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 0
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %26, align 8
  store %struct.snd_pcm_runtime* %27, %struct.snd_pcm_runtime** %13, align 8
  %28 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %29 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = add i32 %30, %31
  store i32 %32, i32* %14, align 4
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %14, align 4
  %37 = urem i32 %36, %35
  store i32 %37, i32* %14, align 4
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %42, i32 %43)
  %45 = sext i32 %44 to i64
  %46 = getelementptr i8, i8* %41, i64 %45
  %47 = bitcast i8* %46 to i32*
  store i32* %47, i32** %16, align 8
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sub i32 %50, %51
  store i32 %52, i32* %15, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %8, align 8
  store i32 0, i32* %17, align 4
  br label %55

55:                                               ; preds = %103, %5
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %106

59:                                               ; preds = %55
  store i32 0, i32* %18, align 4
  br label %60

60:                                               ; preds = %83, %59
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %60
  %65 = load i32*, i32** %16, align 8
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 8
  %68 = or i32 %67, 1073741824
  %69 = call i32 @cpu_to_be32(i32 %68)
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %18, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %69, i32* %73, align 4
  %74 = load %struct.amdtp_dot*, %struct.amdtp_dot** %11, align 8
  %75 = getelementptr inbounds %struct.amdtp_dot, %struct.amdtp_dot* %74, i32 0, i32 1
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %18, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = call i32 @dot_encode_step(i32* %75, i32* %79)
  %81 = load i32*, i32** %16, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %16, align 8
  br label %83

83:                                               ; preds = %64
  %84 = load i32, i32* %18, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %18, align 4
  br label %60

86:                                               ; preds = %60
  %87 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %88 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %8, align 8
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %15, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %86
  %97 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %98 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = bitcast i8* %100 to i32*
  store i32* %101, i32** %16, align 8
  br label %102

102:                                              ; preds = %96, %86
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %17, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %17, align 4
  br label %55

106:                                              ; preds = %55
  ret void
}

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @dot_encode_step(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

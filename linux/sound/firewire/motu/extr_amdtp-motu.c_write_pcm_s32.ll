; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_amdtp-motu.c_write_pcm_s32.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_amdtp-motu.c_write_pcm_s32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32, i32, %struct.amdtp_motu* }
%struct.amdtp_motu = type { i32, i32 }
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
  %11 = alloca %struct.amdtp_motu*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_pcm_runtime*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %6, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %21 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %20, i32 0, i32 2
  %22 = load %struct.amdtp_motu*, %struct.amdtp_motu** %21, align 8
  store %struct.amdtp_motu* %22, %struct.amdtp_motu** %11, align 8
  %23 = load %struct.amdtp_motu*, %struct.amdtp_motu** %11, align 8
  %24 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %27, align 8
  store %struct.snd_pcm_runtime* %28, %struct.snd_pcm_runtime** %13, align 8
  %29 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %30 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = add i32 %31, %32
  store i32 %33, i32* %14, align 4
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %14, align 4
  %38 = urem i32 %37, %36
  store i32 %38, i32* %14, align 4
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %43, i32 %44)
  %46 = sext i32 %45 to i64
  %47 = getelementptr i8, i8* %42, i64 %46
  %48 = bitcast i8* %47 to i32*
  store i32* %48, i32** %17, align 8
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sub i32 %51, %52
  store i32 %53, i32* %15, align 4
  store i32 0, i32* %18, align 4
  br label %54

54:                                               ; preds = %112, %5
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %115

58:                                               ; preds = %54
  %59 = load i32*, i32** %8, align 8
  %60 = load %struct.amdtp_motu*, %struct.amdtp_motu** %11, align 8
  %61 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  store i32* %64, i32** %16, align 8
  store i32 0, i32* %19, align 4
  br label %65

65:                                               ; preds = %92, %58
  %66 = load i32, i32* %19, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %95

69:                                               ; preds = %65
  %70 = load i32*, i32** %17, align 8
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 24
  %73 = and i32 %72, 255
  %74 = load i32*, i32** %16, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %73, i32* %75, align 4
  %76 = load i32*, i32** %17, align 8
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 16
  %79 = and i32 %78, 255
  %80 = load i32*, i32** %16, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 %79, i32* %81, align 4
  %82 = load i32*, i32** %17, align 8
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 8
  %85 = and i32 %84, 255
  %86 = load i32*, i32** %16, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  store i32 %85, i32* %87, align 4
  %88 = load i32*, i32** %16, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  store i32* %89, i32** %16, align 8
  %90 = load i32*, i32** %17, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %17, align 8
  br label %92

92:                                               ; preds = %69
  %93 = load i32, i32* %19, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %19, align 4
  br label %65

95:                                               ; preds = %65
  %96 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %97 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %8, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %8, align 8
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %15, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %95
  %106 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %107 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i8*
  %110 = bitcast i8* %109 to i32*
  store i32* %110, i32** %17, align 8
  br label %111

111:                                              ; preds = %105, %95
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %18, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %18, align 4
  br label %54

115:                                              ; preds = %54
  ret void
}

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

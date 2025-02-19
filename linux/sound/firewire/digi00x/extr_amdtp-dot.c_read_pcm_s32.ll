; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_amdtp-dot.c_read_pcm_s32.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_amdtp-dot.c_read_pcm_s32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32, i32, %struct.amdtp_dot* }
%struct.amdtp_dot = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdtp_stream*, %struct.snd_pcm_substream*, i32*, i32, i32)* @read_pcm_s32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_pcm_s32(%struct.amdtp_stream* %0, %struct.snd_pcm_substream* %1, i32* %2, i32 %3, i32 %4) #0 {
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

55:                                               ; preds = %95, %5
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %98

59:                                               ; preds = %55
  store i32 0, i32* %18, align 4
  br label %60

60:                                               ; preds = %75, %59
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %18, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @be32_to_cpu(i32 %69)
  %71 = shl i32 %70, 8
  %72 = load i32*, i32** %16, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32*, i32** %16, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %16, align 8
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %18, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %18, align 4
  br label %60

78:                                               ; preds = %60
  %79 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %80 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %8, align 8
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %15, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %78
  %89 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %90 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = bitcast i8* %92 to i32*
  store i32* %93, i32** %16, align 8
  br label %94

94:                                               ; preds = %88, %78
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %17, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %17, align 4
  br label %55

98:                                               ; preds = %55
  ret void
}

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

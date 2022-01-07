; ModuleID = '/home/carl/AnghaBench/linux/sound/mips/extr_sgio2audio.c_snd_sgio2audio_dma_push_frag.c'
source_filename = "/home/carl/AnghaBench/linux/sound/mips/extr_sgio2audio.c_snd_sgio2audio_dma_push_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.snd_sgio2audio = type { %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32, i32, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i8*, i64, i32 }

@CHANNEL_RING_SHIFT = common dso_local global i32 0, align 4
@mace = common dso_local global %struct.TYPE_12__* null, align 8
@CHANNEL_LEFT_SHIFT = common dso_local global i32 0, align 4
@CHANNEL_RIGHT_SHIFT = common dso_local global i32 0, align 4
@CHANNEL_RING_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sgio2audio*, i32, i32)* @snd_sgio2audio_dma_push_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sgio2audio_dma_push_frag(%struct.snd_sgio2audio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_sgio2audio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_sgio2audio* %0, %struct.snd_sgio2audio** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %19 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %4, align 8
  %20 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %27, align 8
  store %struct.snd_pcm_runtime* %28, %struct.snd_pcm_runtime** %18, align 8
  %29 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %4, align 8
  %30 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i64, i64* %17, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %4, align 8
  %39 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @CHANNEL_RING_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = zext i32 %43 to i64
  %45 = or i64 %40, %44
  store i64 %45, i64* %10, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mace, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = call i64 @readq(i32* %54)
  store i64 %55, i64* %11, align 8
  %56 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %18, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %13, align 8
  %59 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %4, align 8
  %60 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %59, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %14, align 4
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %18, align 8
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %18, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %67, i32 %70)
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %12, align 8
  %74 = load i32, i32* %6, align 4
  %75 = lshr i32 %74, 3
  %76 = zext i32 %75 to i64
  %77 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %4, align 8
  %78 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %77, i32 0, i32 0
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, %76
  store i64 %85, i64* %83, align 8
  %86 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %4, align 8
  %87 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %86, i32 0, i32 0
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %18, align 8
  %95 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp sge i64 %93, %96
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %7, align 4
  %99 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %18, align 8
  %100 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %4, align 8
  %103 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %102, i32 0, i32 0
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = srem i64 %109, %101
  store i64 %110, i64* %108, align 8
  br label %111

111:                                              ; preds = %114, %3
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %154

114:                                              ; preds = %111
  %115 = load i8*, i8** %13, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = bitcast i8* %118 to i32*
  store i32* %119, i32** %16, align 8
  %120 = load i64, i64* %10, align 8
  %121 = load i64, i64* %11, align 8
  %122 = add i64 %120, %121
  %123 = inttoptr i64 %122 to i32*
  store i32* %123, i32** %15, align 8
  %124 = load i32*, i32** %16, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %8, align 4
  %127 = load i32*, i32** %16, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %8, align 4
  %131 = and i32 %130, 16777215
  %132 = load i32, i32* @CHANNEL_LEFT_SHIFT, align 4
  %133 = shl i32 %131, %132
  %134 = load i32, i32* %9, align 4
  %135 = and i32 %134, 16777215
  %136 = load i32, i32* @CHANNEL_RIGHT_SHIFT, align 4
  %137 = shl i32 %135, %136
  %138 = or i32 %133, %137
  %139 = load i32*, i32** %15, align 8
  store i32 %138, i32* %139, align 4
  %140 = load i64, i64* %11, align 8
  %141 = add i64 %140, 4
  %142 = load i64, i64* @CHANNEL_RING_MASK, align 8
  %143 = and i64 %141, %142
  store i64 %143, i64* %11, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = add i64 %145, 8
  %147 = load i64, i64* %12, align 8
  %148 = and i64 %146, %147
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %14, align 4
  %150 = load i32, i32* %6, align 4
  %151 = zext i32 %150 to i64
  %152 = sub i64 %151, 4
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %6, align 4
  br label %111

154:                                              ; preds = %111
  %155 = load i64, i64* %11, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mace, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = load i32, i32* %5, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = call i32 @writeq(i64 %155, i32* %164)
  %166 = load i32, i32* %14, align 4
  %167 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %4, align 8
  %168 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %167, i32 0, i32 0
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %168, align 8
  %170 = load i32, i32* %5, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  store i32 %166, i32* %173, align 8
  %174 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %4, align 8
  %175 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %174, i32 0, i32 0
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %175, align 8
  %177 = load i32, i32* %5, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 1
  %181 = load i64, i64* %17, align 8
  %182 = call i32 @spin_unlock_irqrestore(i32* %180, i64 %181)
  %183 = load i32, i32* %7, align 4
  ret i32 %183
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @readq(i32*) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @writeq(i64, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

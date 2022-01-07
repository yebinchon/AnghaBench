; ModuleID = '/home/carl/AnghaBench/linux/sound/mips/extr_sgio2audio.c_snd_sgio2audio_dma_pull_frag.c'
source_filename = "/home/carl/AnghaBench/linux/sound/mips/extr_sgio2audio.c_snd_sgio2audio_dma_pull_frag.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sgio2audio*, i32, i32)* @snd_sgio2audio_dma_pull_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sgio2audio_dma_pull_frag(%struct.snd_sgio2audio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_sgio2audio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_sgio2audio* %0, %struct.snd_sgio2audio** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %18 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %4, align 8
  %19 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %26, align 8
  store %struct.snd_pcm_runtime* %27, %struct.snd_pcm_runtime** %17, align 8
  %28 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %4, align 8
  %29 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i64, i64* %16, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %4, align 8
  %38 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @CHANNEL_RING_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = or i64 %39, %43
  store i64 %44, i64* %8, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mace, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = call i64 @readq(i32* %53)
  store i64 %54, i64* %9, align 8
  %55 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %17, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %11, align 8
  %58 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %4, align 8
  %59 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %12, align 4
  %66 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %17, align 8
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %17, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %66, i32 %69)
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %10, align 8
  %73 = load i32, i32* %6, align 4
  %74 = lshr i32 %73, 3
  %75 = zext i32 %74 to i64
  %76 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %4, align 8
  %77 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %76, i32 0, i32 0
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %75
  store i64 %84, i64* %82, align 8
  %85 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %4, align 8
  %86 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %85, i32 0, i32 0
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %17, align 8
  %94 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp sge i64 %92, %95
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %7, align 4
  %98 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %17, align 8
  %99 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %4, align 8
  %102 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %101, i32 0, i32 0
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = srem i64 %108, %100
  store i64 %109, i64* %107, align 8
  br label %110

110:                                              ; preds = %113, %3
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %151

113:                                              ; preds = %110
  %114 = load i64, i64* %8, align 8
  %115 = load i64, i64* %9, align 8
  %116 = add i64 %114, %115
  %117 = inttoptr i64 %116 to i32*
  store i32* %117, i32** %13, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = bitcast i8* %121 to i32*
  store i32* %122, i32** %14, align 8
  %123 = load i32*, i32** %13, align 8
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* @CHANNEL_LEFT_SHIFT, align 4
  %127 = ashr i32 %125, %126
  %128 = and i32 %127, 65535
  %129 = load i32*, i32** %14, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @CHANNEL_RIGHT_SHIFT, align 4
  %133 = ashr i32 %131, %132
  %134 = and i32 %133, 65535
  %135 = load i32*, i32** %14, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  store i32 %134, i32* %136, align 4
  %137 = load i64, i64* %9, align 8
  %138 = add i64 %137, 4
  %139 = load i64, i64* @CHANNEL_RING_MASK, align 8
  %140 = and i64 %138, %139
  store i64 %140, i64* %9, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = add i64 %142, 8
  %144 = load i64, i64* %10, align 8
  %145 = and i64 %143, %144
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %6, align 4
  %148 = zext i32 %147 to i64
  %149 = sub i64 %148, 4
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %6, align 4
  br label %110

151:                                              ; preds = %110
  %152 = load i64, i64* %9, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mace, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = load i32, i32* %5, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = call i32 @writeq(i64 %152, i32* %161)
  %163 = load i32, i32* %12, align 4
  %164 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %4, align 8
  %165 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %164, i32 0, i32 0
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = load i32, i32* %5, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  store i32 %163, i32* %170, align 8
  %171 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %4, align 8
  %172 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %171, i32 0, i32 0
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = load i32, i32* %5, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  %178 = load i64, i64* %16, align 8
  %179 = call i32 @spin_unlock_irqrestore(i32* %177, i64 %178)
  %180 = load i32, i32* %7, align 4
  ret i32 %180
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

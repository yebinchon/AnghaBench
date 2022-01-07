; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_pcm_prepare_playback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_pcm_prepare_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, i32, i64, i32, i32, %struct.snd_ca0106_pcm* }
%struct.snd_ca0106_pcm = type { i32 }
%struct.snd_ca0106 = type { %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32*, i64 }
%struct.TYPE_3__ = type { i32 }

@HCFG_PLAYBACK_S32_LE = common dso_local global i32 0, align 4
@HCFG = common dso_local global i64 0, align 8
@PLAYBACK_LIST_ADDR = common dso_local global i32 0, align 4
@PLAYBACK_LIST_SIZE = common dso_local global i32 0, align 4
@PLAYBACK_LIST_PTR = common dso_local global i32 0, align 4
@PLAYBACK_DMA_ADDR = common dso_local global i32 0, align 4
@PLAYBACK_PERIOD_SIZE = common dso_local global i32 0, align 4
@PLAYBACK_POINTER = common dso_local global i32 0, align 4
@PLAYBACK_MUTE = common dso_local global i32 0, align 4
@SPCS0 = common dso_local global i32 0, align 4
@SPCS_CHANNELNUM_LEFT = common dso_local global i32 0, align 4
@SPCS_CLKACCY_1000PPM = common dso_local global i32 0, align 4
@SPCS_COPYRIGHT = common dso_local global i32 0, align 4
@SPCS_EMPHASIS_NONE = common dso_local global i32 0, align 4
@SPCS_GENERATIONSTATUS = common dso_local global i32 0, align 4
@SPCS_SAMPLERATE_48 = common dso_local global i32 0, align 4
@SPCS_SOURCENUM_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ca0106_pcm_prepare_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ca0106_pcm_prepare_playback(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_ca0106*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_ca0106_pcm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %20 = call %struct.snd_ca0106* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %19)
  store %struct.snd_ca0106* %20, %struct.snd_ca0106** %3, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 0
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %22, align 8
  store %struct.snd_pcm_runtime* %23, %struct.snd_pcm_runtime** %4, align 8
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 8
  %26 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %25, align 8
  store %struct.snd_ca0106_pcm* %26, %struct.snd_ca0106_pcm** %5, align 8
  %27 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %5, align 8
  %28 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %31 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = mul nsw i32 128, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %7, align 8
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %39, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @HCFG_PLAYBACK_S32_LE, align 4
  store i32 %44, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %45 = load i32, i32* %6, align 4
  %46 = shl i32 %45, 1
  %47 = shl i32 196608, %46
  store i32 %47, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 50528256, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %64 [
    i32 44100, label %51
    i32 48000, label %55
    i32 96000, label %56
    i32 192000, label %60
  ]

51:                                               ; preds = %1
  %52 = load i32, i32* %6, align 4
  %53 = shl i32 %52, 1
  %54 = shl i32 65536, %53
  store i32 %54, i32* %13, align 4
  store i32 16842752, i32* %16, align 4
  br label %65

55:                                               ; preds = %1
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  br label %65

56:                                               ; preds = %1
  %57 = load i32, i32* %6, align 4
  %58 = shl i32 %57, 1
  %59 = shl i32 131072, %58
  store i32 %59, i32* %13, align 4
  store i32 33685504, i32* %16, align 4
  br label %65

60:                                               ; preds = %1
  %61 = load i32, i32* %6, align 4
  %62 = shl i32 %61, 1
  %63 = shl i32 196608, %62
  store i32 %63, i32* %13, align 4
  store i32 50528256, i32* %16, align 4
  br label %65

64:                                               ; preds = %1
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  br label %65

65:                                               ; preds = %64, %60, %56, %55, %51
  %66 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %72 [
    i32 129, label %69
    i32 128, label %70
  ]

69:                                               ; preds = %65
  store i32 0, i32* %10, align 4
  br label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @HCFG_PLAYBACK_S32_LE, align 4
  store i32 %71, i32* %10, align 4
  br label %73

72:                                               ; preds = %65
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %72, %70, %69
  %74 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %75 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @HCFG, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @inl(i64 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %9, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %88 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @HCFG, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @outl(i32 %86, i64 %91)
  %93 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %94 = call i32 @snd_ca0106_ptr_read(%struct.snd_ca0106* %93, i32 64, i32 0)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %12, align 4
  %97 = xor i32 %96, -1
  %98 = and i32 %95, %97
  %99 = load i32, i32* %13, align 4
  %100 = or i32 %98, %99
  store i32 %100, i32* %14, align 4
  %101 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %101, i32 64, i32 0, i32 %102)
  %104 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %105 = call i32 @snd_ca0106_ptr_read(%struct.snd_ca0106* %104, i32 113, i32 0)
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %15, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  %110 = load i32, i32* %16, align 4
  %111 = or i32 %109, %110
  store i32 %111, i32* %17, align 4
  %112 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %113 = load i32, i32* %17, align 4
  %114 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %112, i32 113, i32 0, i32 %113)
  store i32 0, i32* %18, align 4
  br label %115

115:                                              ; preds = %142, %73
  %116 = load i32, i32* %18, align 4
  %117 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %118 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %145

121:                                              ; preds = %115
  %122 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %123 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* %8, align 4
  %127 = mul nsw i32 %125, %126
  %128 = add nsw i32 %124, %127
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %18, align 4
  %131 = mul nsw i32 %130, 2
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  store i32 %128, i32* %133, align 4
  %134 = load i32, i32* %8, align 4
  %135 = shl i32 %134, 16
  %136 = load i32*, i32** %7, align 8
  %137 = load i32, i32* %18, align 4
  %138 = mul nsw i32 %137, 2
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %136, i64 %140
  store i32 %135, i32* %141, align 4
  br label %142

142:                                              ; preds = %121
  %143 = load i32, i32* %18, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %18, align 4
  br label %115

145:                                              ; preds = %115
  %146 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %147 = load i32, i32* @PLAYBACK_LIST_ADDR, align 4
  %148 = load i32, i32* %6, align 4
  %149 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %150 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = mul nsw i32 128, %153
  %155 = add nsw i32 %152, %154
  %156 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %146, i32 %147, i32 %148, i32 %155)
  %157 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %158 = load i32, i32* @PLAYBACK_LIST_SIZE, align 4
  %159 = load i32, i32* %6, align 4
  %160 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %161 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %162, 1
  %164 = shl i32 %163, 19
  %165 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %157, i32 %158, i32 %159, i32 %164)
  %166 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %167 = load i32, i32* @PLAYBACK_LIST_PTR, align 4
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %166, i32 %167, i32 %168, i32 0)
  %170 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %171 = load i32, i32* @PLAYBACK_DMA_ADDR, align 4
  %172 = load i32, i32* %6, align 4
  %173 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %174 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %170, i32 %171, i32 %172, i32 %175)
  %177 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %178 = load i32, i32* @PLAYBACK_PERIOD_SIZE, align 4
  %179 = load i32, i32* %6, align 4
  %180 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %181 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %182 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %180, i32 %183)
  %185 = shl i32 %184, 16
  %186 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %177, i32 %178, i32 %179, i32 %185)
  %187 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %188 = load i32, i32* @PLAYBACK_PERIOD_SIZE, align 4
  %189 = load i32, i32* %6, align 4
  %190 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %187, i32 %188, i32 %189, i32 0)
  %191 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %192 = load i32, i32* @PLAYBACK_POINTER, align 4
  %193 = load i32, i32* %6, align 4
  %194 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %191, i32 %192, i32 %193, i32 0)
  %195 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %195, i32 7, i32 %196, i32 0)
  %198 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %199 = load i32, i32* %6, align 4
  %200 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %198, i32 8, i32 %199, i32 0)
  %201 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %202 = load i32, i32* @PLAYBACK_MUTE, align 4
  %203 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %201, i32 %202, i32 0, i32 0)
  ret i32 0
}

declare dso_local %struct.snd_ca0106* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @snd_ca0106_ptr_read(%struct.snd_ca0106*, i32, i32) #1

declare dso_local i32 @snd_ca0106_ptr_write(%struct.snd_ca0106*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

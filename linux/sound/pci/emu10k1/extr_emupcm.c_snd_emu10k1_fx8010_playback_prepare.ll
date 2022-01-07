; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_fx8010_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_fx8010_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 }
%struct.snd_emu10k1 = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.snd_emu10k1_fx8010_pcm* }
%struct.snd_emu10k1_fx8010_pcm = type { i32, i32, i64*, i64, i64, i64, i64, i64, i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@TANKMEMADDRREGBASE = common dso_local global i64 0, align 8
@TANKMEMADDRREG_READ = common dso_local global i32 0, align 4
@TANKMEMADDRREG_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_emu10k1_fx8010_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_fx8010_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_emu10k1_fx8010_pcm*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_emu10k1* %8, %struct.snd_emu10k1** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %4, align 8
  %12 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %13 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %14, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %15, i64 %18
  store %struct.snd_emu10k1_fx8010_pcm* %19, %struct.snd_emu10k1_fx8010_pcm** %5, align 8
  %20 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %5, align 8
  %21 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %20, i32 0, i32 11
  %22 = call i32 @memset(%struct.TYPE_4__* %21, i32 0, i32 8)
  %23 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %5, align 8
  %24 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %25, 2
  %27 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %5, align 8
  %28 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %27, i32 0, i32 11
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %31 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %30)
  %32 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %5, align 8
  %33 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %5, align 8
  %36 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @INITIAL_TRAM_POS(i32 %37)
  %39 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %5, align 8
  %40 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %39, i32 0, i32 10
  store i32 %38, i32* %40, align 8
  %41 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %5, align 8
  %42 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %41, i32 0, i32 9
  store i64 0, i64* %42, align 8
  %43 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %44 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %45 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %5, align 8
  %48 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %47, i32 0, i32 8
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %43, i64 %50, i32 0, i32 0)
  %52 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %53 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %54 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %5, align 8
  %57 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %52, i64 %59, i32 0, i32 0)
  %61 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %62 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %63 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %5, align 8
  %66 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %61, i64 %68, i32 0, i32 %71)
  %73 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %74 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %75 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %5, align 8
  %78 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %73, i64 %80, i32 0, i32 0)
  %82 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %83 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %84 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %5, align 8
  %87 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %91 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %82, i64 %89, i32 0, i32 %92)
  %94 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %95 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %96 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %5, align 8
  %99 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %97, %100
  %102 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %103 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %94, i64 %101, i32 0, i32 %104)
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %138, %1
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %5, align 8
  %109 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ult i32 %107, %110
  br i1 %111, label %112, label %141

112:                                              ; preds = %106
  %113 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %114 = load i64, i64* @TANKMEMADDRREGBASE, align 8
  %115 = add nsw i64 %114, 128
  %116 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %5, align 8
  %117 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %116, i32 0, i32 2
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %115, %122
  %124 = load i32, i32* @TANKMEMADDRREG_READ, align 4
  %125 = load i32, i32* @TANKMEMADDRREG_ALIGN, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %129 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.snd_emu10k1_fx8010_pcm*, %struct.snd_emu10k1_fx8010_pcm** %5, align 8
  %132 = getelementptr inbounds %struct.snd_emu10k1_fx8010_pcm, %struct.snd_emu10k1_fx8010_pcm* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = udiv i32 %130, %133
  %135 = mul i32 %127, %134
  %136 = add i32 %126, %135
  %137 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %113, i64 %123, i32 0, i32 %136)
  br label %138

138:                                              ; preds = %112
  %139 = load i32, i32* %6, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %6, align 4
  br label %106

141:                                              ; preds = %106
  ret i32 0
}

declare dso_local %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @INITIAL_TRAM_POS(i32) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_pcm.c_snd_vortex_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_pcm.c_snd_vortex_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, %struct.snd_pcm_substream*, i32, i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_11__*, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Vortex: pcm page alloc failed!\0A\00", align 1
@VORTEX_PCM_WT = common dso_local global i32 0, align 4
@VORTEX_PCM_ADB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_vortex_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vortex_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = call %struct.TYPE_13__* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %6, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %7, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %19 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %20 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %19)
  %21 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %18, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %178

32:                                               ; preds = %2
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = call i32 @spin_lock_irq(i32* %34)
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @VORTEX_PCM_TYPE(i32 %38)
  %40 = load i32, i32* @VORTEX_PCM_WT, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %136

42:                                               ; preds = %32
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @VORTEX_PCM_TYPE(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %48 = icmp ne %struct.TYPE_14__* %47, null
  br i1 %48, label %49, label %67

49:                                               ; preds = %42
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @vortex_adb_allocroute(%struct.TYPE_13__* %50, i32 %53, i32 %56, i32 %59, i32 %62, i64 %65)
  br label %67

67:                                               ; preds = %49, %42
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %70 = call i32 @params_channels(%struct.snd_pcm_hw_params* %69)
  %71 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %72 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @vortex_adb_allocroute(%struct.TYPE_13__* %68, i32 -1, i32 %70, i32 %73, i32 %74, i64 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %67
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = call i32 @spin_unlock_irq(i32* %83)
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %3, align 4
  br label %178

86:                                               ; preds = %67
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i64 %91
  %93 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %94 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %93, i32 0, i32 1
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  store %struct.TYPE_14__* %92, %struct.TYPE_14__** %96, align 8
  store %struct.TYPE_14__* %92, %struct.TYPE_14__** %7, align 8
  %97 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 2
  store %struct.snd_pcm_substream* %97, %struct.snd_pcm_substream** %99, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %103 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %102)
  %104 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %105 = call i32 @params_periods(%struct.snd_pcm_hw_params* %104)
  %106 = call i32 @vortex_adbdma_setbuffers(%struct.TYPE_13__* %100, i32 %101, i32 %103, i32 %105)
  %107 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %108 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @VORTEX_PCM_TYPE(i32 %109)
  %111 = load i32, i32* @VORTEX_PCM_ADB, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %135

113:                                              ; preds = %86
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %118 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  store i32 1, i32* %121, align 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %129 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @vortex_notify_pcm_vol_change(%struct.TYPE_15__* %124, i32 %133, i32 1)
  br label %135

135:                                              ; preds = %113, %86
  br label %174

136:                                              ; preds = %32
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %138 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %139 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %142 = call i32 @params_channels(%struct.snd_pcm_hw_params* %141)
  %143 = call i32 @vortex_wt_allocroute(%struct.TYPE_13__* %137, i64 %140, i32 %142)
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %148 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i64 %149
  %151 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %152 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %151, i32 0, i32 1
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  store %struct.TYPE_14__* %150, %struct.TYPE_14__** %154, align 8
  store %struct.TYPE_14__* %150, %struct.TYPE_14__** %7, align 8
  %155 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %156 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 2
  store %struct.snd_pcm_substream* %161, %struct.snd_pcm_substream** %163, align 8
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %165 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %166 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = trunc i64 %167 to i32
  %169 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %170 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %169)
  %171 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %172 = call i32 @params_periods(%struct.snd_pcm_hw_params* %171)
  %173 = call i32 @vortex_wtdma_setbuffers(%struct.TYPE_13__* %164, i32 %168, i32 %170, i32 %172)
  br label %174

174:                                              ; preds = %136, %135
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  %177 = call i32 @spin_unlock_irq(i32* %176)
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %174, %81, %24
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local %struct.TYPE_13__* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @VORTEX_PCM_TYPE(i32) #1

declare dso_local i32 @vortex_adb_allocroute(%struct.TYPE_13__*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @vortex_adbdma_setbuffers(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_periods(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @vortex_notify_pcm_vol_change(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @vortex_wt_allocroute(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i32 @vortex_wtdma_setbuffers(%struct.TYPE_13__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

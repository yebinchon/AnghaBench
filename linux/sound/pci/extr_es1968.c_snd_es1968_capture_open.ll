; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_capture_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_6__, %struct.esschan* }
%struct.esschan = type { i32*, i32, %struct.TYPE_5__*, i32, %struct.snd_pcm_substream*, i64, i64* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.es1968 = type { i32, i32 }

@ESM_APU_PCM_CAPTURE = common dso_local global i32 0, align 4
@ESM_APU_PCM_RATECONV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ESM_MODE_CAPTURE = common dso_local global i32 0, align 4
@ESM_MIXBUF_SIZE = common dso_local global i32 0, align 4
@snd_es1968_capture = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_es1968_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1968_capture_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.es1968*, align 8
  %6 = alloca %struct.esschan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %4, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = call %struct.es1968* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %12)
  store %struct.es1968* %13, %struct.es1968** %5, align 8
  %14 = load %struct.es1968*, %struct.es1968** %5, align 8
  %15 = load i32, i32* @ESM_APU_PCM_CAPTURE, align 4
  %16 = call i32 @snd_es1968_alloc_apu_pair(%struct.es1968* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %148

21:                                               ; preds = %1
  %22 = load %struct.es1968*, %struct.es1968** %5, align 8
  %23 = load i32, i32* @ESM_APU_PCM_RATECONV, align 4
  %24 = call i32 @snd_es1968_alloc_apu_pair(%struct.es1968* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.es1968*, %struct.es1968** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @snd_es1968_free_apu_pair(%struct.es1968* %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %2, align 4
  br label %148

32:                                               ; preds = %21
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.esschan* @kzalloc(i32 56, i32 %33)
  store %struct.esschan* %34, %struct.esschan** %6, align 8
  %35 = load %struct.esschan*, %struct.esschan** %6, align 8
  %36 = icmp ne %struct.esschan* %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = load %struct.es1968*, %struct.es1968** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @snd_es1968_free_apu_pair(%struct.es1968* %38, i32 %39)
  %41 = load %struct.es1968*, %struct.es1968** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @snd_es1968_free_apu_pair(%struct.es1968* %41, i32 %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %148

46:                                               ; preds = %32
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.esschan*, %struct.esschan** %6, align 8
  %49 = getelementptr inbounds %struct.esschan, %struct.esschan* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  %54 = load %struct.esschan*, %struct.esschan** %6, align 8
  %55 = getelementptr inbounds %struct.esschan, %struct.esschan* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.esschan*, %struct.esschan** %6, align 8
  %60 = getelementptr inbounds %struct.esschan, %struct.esschan* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  %65 = load %struct.esschan*, %struct.esschan** %6, align 8
  %66 = getelementptr inbounds %struct.esschan, %struct.esschan* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  store i32 %64, i32* %68, align 4
  %69 = load %struct.esschan*, %struct.esschan** %6, align 8
  %70 = getelementptr inbounds %struct.esschan, %struct.esschan* %69, i32 0, i32 6
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  store i64 0, i64* %72, align 8
  %73 = load %struct.esschan*, %struct.esschan** %6, align 8
  %74 = getelementptr inbounds %struct.esschan, %struct.esschan* %73, i32 0, i32 6
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.esschan*, %struct.esschan** %6, align 8
  %78 = getelementptr inbounds %struct.esschan, %struct.esschan* %77, i32 0, i32 6
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 2
  store i64 0, i64* %80, align 8
  %81 = load %struct.esschan*, %struct.esschan** %6, align 8
  %82 = getelementptr inbounds %struct.esschan, %struct.esschan* %81, i32 0, i32 6
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 3
  store i64 0, i64* %84, align 8
  %85 = load %struct.esschan*, %struct.esschan** %6, align 8
  %86 = getelementptr inbounds %struct.esschan, %struct.esschan* %85, i32 0, i32 5
  store i64 0, i64* %86, align 8
  %87 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %88 = load %struct.esschan*, %struct.esschan** %6, align 8
  %89 = getelementptr inbounds %struct.esschan, %struct.esschan* %88, i32 0, i32 4
  store %struct.snd_pcm_substream* %87, %struct.snd_pcm_substream** %89, align 8
  %90 = load i32, i32* @ESM_MODE_CAPTURE, align 4
  %91 = load %struct.esschan*, %struct.esschan** %6, align 8
  %92 = getelementptr inbounds %struct.esschan, %struct.esschan* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load %struct.es1968*, %struct.es1968** %5, align 8
  %94 = load i32, i32* @ESM_MIXBUF_SIZE, align 4
  %95 = call %struct.TYPE_5__* @snd_es1968_new_memory(%struct.es1968* %93, i32 %94)
  %96 = load %struct.esschan*, %struct.esschan** %6, align 8
  %97 = getelementptr inbounds %struct.esschan, %struct.esschan* %96, i32 0, i32 2
  store %struct.TYPE_5__* %95, %struct.TYPE_5__** %97, align 8
  %98 = icmp eq %struct.TYPE_5__* %95, null
  br i1 %98, label %99, label %110

99:                                               ; preds = %46
  %100 = load %struct.es1968*, %struct.es1968** %5, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @snd_es1968_free_apu_pair(%struct.es1968* %100, i32 %101)
  %103 = load %struct.es1968*, %struct.es1968** %5, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @snd_es1968_free_apu_pair(%struct.es1968* %103, i32 %104)
  %106 = load %struct.esschan*, %struct.esschan** %6, align 8
  %107 = call i32 @kfree(%struct.esschan* %106)
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %148

110:                                              ; preds = %46
  %111 = load %struct.esschan*, %struct.esschan** %6, align 8
  %112 = getelementptr inbounds %struct.esschan, %struct.esschan* %111, i32 0, i32 2
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ESM_MIXBUF_SIZE, align 4
  %118 = call i32 @memset(i32 %116, i32 0, i32 %117)
  %119 = load %struct.esschan*, %struct.esschan** %6, align 8
  %120 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %121 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %120, i32 0, i32 1
  store %struct.esschan* %119, %struct.esschan** %121, align 8
  %122 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %123 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %122, i32 0, i32 0
  %124 = bitcast %struct.TYPE_6__* %123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 bitcast (%struct.TYPE_6__* @snd_es1968_capture to i8*), i64 16, i1 false)
  %125 = load %struct.es1968*, %struct.es1968** %5, align 8
  %126 = call i64 @calc_available_memory_size(%struct.es1968* %125)
  %127 = sub nsw i64 %126, 1024
  %128 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %129 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i64 %127, i64* %130, align 8
  %131 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %132 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  store i64 %127, i64* %133, align 8
  %134 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %135 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %136 = call i32 @snd_pcm_hw_constraint_pow2(%struct.snd_pcm_runtime* %134, i32 0, i32 %135)
  %137 = load %struct.es1968*, %struct.es1968** %5, align 8
  %138 = getelementptr inbounds %struct.es1968, %struct.es1968* %137, i32 0, i32 0
  %139 = call i32 @spin_lock_irq(i32* %138)
  %140 = load %struct.esschan*, %struct.esschan** %6, align 8
  %141 = getelementptr inbounds %struct.esschan, %struct.esschan* %140, i32 0, i32 1
  %142 = load %struct.es1968*, %struct.es1968** %5, align 8
  %143 = getelementptr inbounds %struct.es1968, %struct.es1968* %142, i32 0, i32 1
  %144 = call i32 @list_add(i32* %141, i32* %143)
  %145 = load %struct.es1968*, %struct.es1968** %5, align 8
  %146 = getelementptr inbounds %struct.es1968, %struct.es1968* %145, i32 0, i32 0
  %147 = call i32 @spin_unlock_irq(i32* %146)
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %110, %99, %37, %27, %19
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.es1968* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_es1968_alloc_apu_pair(%struct.es1968*, i32) #1

declare dso_local i32 @snd_es1968_free_apu_pair(%struct.es1968*, i32) #1

declare dso_local %struct.esschan* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_5__* @snd_es1968_new_memory(%struct.es1968*, i32) #1

declare dso_local i32 @kfree(%struct.esschan*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @calc_available_memory_size(%struct.es1968*) #1

declare dso_local i32 @snd_pcm_hw_constraint_pow2(%struct.snd_pcm_runtime*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

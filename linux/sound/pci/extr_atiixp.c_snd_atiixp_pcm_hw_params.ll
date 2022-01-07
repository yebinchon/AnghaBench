; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.atiixp_dma* }
%struct.atiixp_dma = type { i64, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.atiixp = type { %struct.ac97_pcm** }
%struct.ac97_pcm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_atiixp_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_atiixp_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.atiixp*, align 8
  %7 = alloca %struct.atiixp_dma*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ac97_pcm*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = call %struct.atiixp* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.atiixp* %11, %struct.atiixp** %6, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.atiixp_dma*, %struct.atiixp_dma** %15, align 8
  store %struct.atiixp_dma* %16, %struct.atiixp_dma** %7, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %19 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %18)
  %20 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %17, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %93

25:                                               ; preds = %2
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %32 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %34 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %33)
  %35 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %36 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.atiixp*, %struct.atiixp** %6, align 8
  %38 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %40 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %41 = call i32 @params_periods(%struct.snd_pcm_hw_params* %40)
  %42 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %43 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %42)
  %44 = call i32 @atiixp_build_dma_packets(%struct.atiixp* %37, %struct.atiixp_dma* %38, %struct.snd_pcm_substream* %39, i32 %41, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %25
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %93

49:                                               ; preds = %25
  %50 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %51 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp uge i64 %52, 0
  br i1 %53, label %54, label %91

54:                                               ; preds = %49
  %55 = load %struct.atiixp*, %struct.atiixp** %6, align 8
  %56 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %55, i32 0, i32 0
  %57 = load %struct.ac97_pcm**, %struct.ac97_pcm*** %56, align 8
  %58 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %59 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.ac97_pcm*, %struct.ac97_pcm** %57, i64 %60
  %62 = load %struct.ac97_pcm*, %struct.ac97_pcm** %61, align 8
  store %struct.ac97_pcm* %62, %struct.ac97_pcm** %9, align 8
  %63 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %64 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %54
  %68 = load %struct.ac97_pcm*, %struct.ac97_pcm** %9, align 8
  %69 = call i32 @snd_ac97_pcm_close(%struct.ac97_pcm* %68)
  %70 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %71 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %70, i32 0, i32 1
  store i32 0, i32* %71, align 8
  br label %72

72:                                               ; preds = %67, %54
  %73 = load %struct.ac97_pcm*, %struct.ac97_pcm** %9, align 8
  %74 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %75 = call i32 @params_rate(%struct.snd_pcm_hw_params* %74)
  %76 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %77 = call i32 @params_channels(%struct.snd_pcm_hw_params* %76)
  %78 = load %struct.ac97_pcm*, %struct.ac97_pcm** %9, align 8
  %79 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @snd_ac97_pcm_open(%struct.ac97_pcm* %73, i32 %75, i32 %77, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %72
  %88 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %89 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %88, i32 0, i32 1
  store i32 1, i32* %89, align 8
  br label %90

90:                                               ; preds = %87, %72
  br label %91

91:                                               ; preds = %90, %49
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %47, %23
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.atiixp* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @atiixp_build_dma_packets(%struct.atiixp*, %struct.atiixp_dma*, %struct.snd_pcm_substream*, i32, i32) #1

declare dso_local i32 @params_periods(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_ac97_pcm_close(%struct.ac97_pcm*) #1

declare dso_local i32 @snd_ac97_pcm_open(%struct.ac97_pcm*, i32, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

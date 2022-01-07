; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-stream.c_hda_dsp_stream_setup_bdl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-stream.c_hda_dsp_stream_setup_bdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sof_intel_hda_dev* }
%struct.sof_intel_hda_dev = type { i64 }
%struct.snd_dma_buffer = type { i32 }
%struct.hdac_stream = type { i32, i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.sof_intel_dsp_bdl = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"period_bytes:0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"periods:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hda_dsp_stream_setup_bdl(%struct.snd_sof_dev* %0, %struct.snd_dma_buffer* %1, %struct.hdac_stream* %2) #0 {
  %4 = alloca %struct.snd_sof_dev*, align 8
  %5 = alloca %struct.snd_dma_buffer*, align 8
  %6 = alloca %struct.hdac_stream*, align 8
  %7 = alloca %struct.sof_intel_hda_dev*, align 8
  %8 = alloca %struct.sof_intel_dsp_bdl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %4, align 8
  store %struct.snd_dma_buffer* %1, %struct.snd_dma_buffer** %5, align 8
  store %struct.hdac_stream* %2, %struct.hdac_stream** %6, align 8
  %15 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %16 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %18, align 8
  store %struct.sof_intel_hda_dev* %19, %struct.sof_intel_hda_dev** %7, align 8
  %20 = load %struct.hdac_stream*, %struct.hdac_stream** %6, align 8
  %21 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %24 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %3
  %31 = load %struct.hdac_stream*, %struct.hdac_stream** %6, align 8
  %32 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %30, %3
  %35 = load %struct.hdac_stream*, %struct.hdac_stream** %6, align 8
  %36 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %41 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.hdac_stream*, %struct.hdac_stream** %6, align 8
  %46 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = srem i32 %47, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %34
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %52, %34
  %56 = load %struct.hdac_stream*, %struct.hdac_stream** %6, align 8
  %57 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.sof_intel_dsp_bdl*
  store %struct.sof_intel_dsp_bdl* %60, %struct.sof_intel_dsp_bdl** %8, align 8
  store i32 0, i32* %10, align 4
  %61 = load %struct.hdac_stream*, %struct.hdac_stream** %6, align 8
  %62 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %61, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %7, align 8
  %64 = getelementptr inbounds %struct.sof_intel_hda_dev, %struct.sof_intel_hda_dev* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %55
  %68 = load %struct.hdac_stream*, %struct.hdac_stream** %6, align 8
  %69 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  br label %75

74:                                               ; preds = %55
  br label %75

75:                                               ; preds = %74, %67
  %76 = phi i32 [ %73, %67 ], [ 0, %74 ]
  store i32 %76, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %105, %75
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %108

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %12, align 4
  %84 = sub nsw i32 %83, 1
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %91 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %5, align 8
  %92 = load %struct.hdac_stream*, %struct.hdac_stream** %6, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @hda_setup_bdle(%struct.snd_sof_dev* %90, %struct.snd_dma_buffer* %91, %struct.hdac_stream* %92, %struct.sof_intel_dsp_bdl** %8, i32 %93, i32 %94, i32 0)
  store i32 %95, i32* %10, align 4
  br label %104

96:                                               ; preds = %86, %81
  %97 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %98 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %5, align 8
  %99 = load %struct.hdac_stream*, %struct.hdac_stream** %6, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @hda_setup_bdle(%struct.snd_sof_dev* %97, %struct.snd_dma_buffer* %98, %struct.hdac_stream* %99, %struct.sof_intel_dsp_bdl** %8, i32 %100, i32 %101, i32 %102)
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %96, %89
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %77

108:                                              ; preds = %77
  %109 = load i32, i32* %10, align 4
  ret i32 %109
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @hda_setup_bdle(%struct.snd_sof_dev*, %struct.snd_dma_buffer*, %struct.hdac_stream*, %struct.sof_intel_dsp_bdl**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

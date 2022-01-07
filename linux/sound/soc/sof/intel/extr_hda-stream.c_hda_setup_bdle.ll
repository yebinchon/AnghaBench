; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-stream.c_hda_setup_bdle.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-stream.c_hda_setup_bdle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }
%struct.snd_dma_buffer = type { i32 }
%struct.hdac_stream = type { i64 }
%struct.sof_intel_dsp_bdl = type { i8*, i8*, i8*, i8* }
%struct.hdac_bus = type { i64 }

@HDA_DSP_MAX_BDL_ENTRIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"error: stream frags exceeded\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"bdl, frags:%d, chunk size:0x%x;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_dev*, %struct.snd_dma_buffer*, %struct.hdac_stream*, %struct.sof_intel_dsp_bdl**, i32, i32, i32)* @hda_setup_bdle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_setup_bdle(%struct.snd_sof_dev* %0, %struct.snd_dma_buffer* %1, %struct.hdac_stream* %2, %struct.sof_intel_dsp_bdl** %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_sof_dev*, align 8
  %10 = alloca %struct.snd_dma_buffer*, align 8
  %11 = alloca %struct.hdac_stream*, align 8
  %12 = alloca %struct.sof_intel_dsp_bdl**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.hdac_bus*, align 8
  %17 = alloca %struct.sof_intel_dsp_bdl*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %9, align 8
  store %struct.snd_dma_buffer* %1, %struct.snd_dma_buffer** %10, align 8
  store %struct.hdac_stream* %2, %struct.hdac_stream** %11, align 8
  store %struct.sof_intel_dsp_bdl** %3, %struct.sof_intel_dsp_bdl*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %9, align 8
  %22 = call %struct.hdac_bus* @sof_to_bus(%struct.snd_sof_dev* %21)
  store %struct.hdac_bus* %22, %struct.hdac_bus** %16, align 8
  %23 = load %struct.sof_intel_dsp_bdl**, %struct.sof_intel_dsp_bdl*** %12, align 8
  %24 = load %struct.sof_intel_dsp_bdl*, %struct.sof_intel_dsp_bdl** %23, align 8
  store %struct.sof_intel_dsp_bdl* %24, %struct.sof_intel_dsp_bdl** %17, align 8
  br label %25

25:                                               ; preds = %89, %7
  %26 = load i32, i32* %14, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %110

28:                                               ; preds = %25
  %29 = load %struct.hdac_stream*, %struct.hdac_stream** %11, align 8
  %30 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HDA_DSP_MAX_BDL_ENTRIES, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %9, align 8
  %36 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %114

41:                                               ; preds = %28
  %42 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %10, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @snd_sgbuf_get_addr(%struct.snd_dma_buffer* %42, i32 %43)
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %18, align 4
  %46 = call i32 @lower_32_bits(i32 %45)
  %47 = call i8* @cpu_to_le32(i32 %46)
  %48 = load %struct.sof_intel_dsp_bdl*, %struct.sof_intel_dsp_bdl** %17, align 8
  %49 = getelementptr inbounds %struct.sof_intel_dsp_bdl, %struct.sof_intel_dsp_bdl* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %18, align 4
  %51 = call i32 @upper_32_bits(i32 %50)
  %52 = call i8* @cpu_to_le32(i32 %51)
  %53 = load %struct.sof_intel_dsp_bdl*, %struct.sof_intel_dsp_bdl** %17, align 8
  %54 = getelementptr inbounds %struct.sof_intel_dsp_bdl, %struct.sof_intel_dsp_bdl* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %10, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @snd_sgbuf_get_chunk_size(%struct.snd_dma_buffer* %55, i32 %56, i32 %57)
  store i32 %58, i32* %19, align 4
  %59 = load %struct.hdac_bus*, %struct.hdac_bus** %16, align 8
  %60 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %41
  %64 = load i32, i32* %13, align 4
  %65 = and i32 %64, 4095
  %66 = sub nsw i32 4096, %65
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* %20, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %20, align 4
  store i32 %71, i32* %19, align 4
  br label %72

72:                                               ; preds = %70, %63
  br label %73

73:                                               ; preds = %72, %41
  %74 = load i32, i32* %19, align 4
  %75 = call i8* @cpu_to_le32(i32 %74)
  %76 = load %struct.sof_intel_dsp_bdl*, %struct.sof_intel_dsp_bdl** %17, align 8
  %77 = getelementptr inbounds %struct.sof_intel_dsp_bdl, %struct.sof_intel_dsp_bdl* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* %14, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %73
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83, %73
  br label %89

87:                                               ; preds = %83
  %88 = call i8* @cpu_to_le32(i32 1)
  br label %89

89:                                               ; preds = %87, %86
  %90 = phi i8* [ null, %86 ], [ %88, %87 ]
  %91 = load %struct.sof_intel_dsp_bdl*, %struct.sof_intel_dsp_bdl** %17, align 8
  %92 = getelementptr inbounds %struct.sof_intel_dsp_bdl, %struct.sof_intel_dsp_bdl* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load %struct.sof_intel_dsp_bdl*, %struct.sof_intel_dsp_bdl** %17, align 8
  %94 = getelementptr inbounds %struct.sof_intel_dsp_bdl, %struct.sof_intel_dsp_bdl* %93, i32 1
  store %struct.sof_intel_dsp_bdl* %94, %struct.sof_intel_dsp_bdl** %17, align 8
  %95 = load %struct.hdac_stream*, %struct.hdac_stream** %11, align 8
  %96 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %96, align 8
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %13, align 4
  %102 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %9, align 8
  %103 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.hdac_stream*, %struct.hdac_stream** %11, align 8
  %106 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %19, align 4
  %109 = call i32 @dev_vdbg(i32 %104, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %107, i32 %108)
  br label %25

110:                                              ; preds = %25
  %111 = load %struct.sof_intel_dsp_bdl*, %struct.sof_intel_dsp_bdl** %17, align 8
  %112 = load %struct.sof_intel_dsp_bdl**, %struct.sof_intel_dsp_bdl*** %12, align 8
  store %struct.sof_intel_dsp_bdl* %111, %struct.sof_intel_dsp_bdl** %112, align 8
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %110, %34
  %115 = load i32, i32* %8, align 4
  ret i32 %115
}

declare dso_local %struct.hdac_bus* @sof_to_bus(%struct.snd_sof_dev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_sgbuf_get_addr(%struct.snd_dma_buffer*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @snd_sgbuf_get_chunk_size(%struct.snd_dma_buffer*, i32, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

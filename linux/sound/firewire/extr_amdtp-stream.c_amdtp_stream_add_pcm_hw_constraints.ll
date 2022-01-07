; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_amdtp_stream_add_pcm_hw_constraints.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_amdtp_stream_add_pcm_hw_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32 }
%struct.snd_pcm_runtime = type { %struct.snd_pcm_hardware }
%struct.snd_pcm_hardware = type { i32, i32, i32, i32, i32, i32, i32 }

@SNDRV_PCM_INFO_BATCH = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_BLOCK_TRANSFER = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_INTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_JOINT_DUPLEX = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_MMAP = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_MMAP_VALID = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_TIME = common dso_local global i32 0, align 4
@CIP_BLOCKING = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@apply_constraint_to_size = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdtp_stream_add_pcm_hw_constraints(%struct.amdtp_stream* %0, %struct.snd_pcm_runtime* %1) #0 {
  %3 = alloca %struct.amdtp_stream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_pcm_hardware*, align 8
  %6 = alloca i32, align 4
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %3, align 8
  store %struct.snd_pcm_runtime* %1, %struct.snd_pcm_runtime** %4, align 8
  %7 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %7, i32 0, i32 0
  store %struct.snd_pcm_hardware* %8, %struct.snd_pcm_hardware** %5, align 8
  %9 = load i32, i32* @SNDRV_PCM_INFO_BATCH, align 4
  %10 = load i32, i32* @SNDRV_PCM_INFO_BLOCK_TRANSFER, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SNDRV_PCM_INFO_INTERLEAVED, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SNDRV_PCM_INFO_JOINT_DUPLEX, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SNDRV_PCM_INFO_MMAP, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SNDRV_PCM_INFO_MMAP_VALID, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %22, i32 0, i32 1
  store i32 2, i32* %23, align 4
  %24 = load i32, i32* @UINT_MAX, align 4
  %25 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 4
  %27 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 4, %29
  %31 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 2048
  %37 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %49 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_TIME, align 4
  %50 = load i32, i32* @UINT_MAX, align 4
  %51 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %48, i32 %49, i32 5000, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %2
  br label %84

55:                                               ; preds = %2
  %56 = load %struct.amdtp_stream*, %struct.amdtp_stream** %3, align 8
  %57 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CIP_BLOCKING, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  br label %84

63:                                               ; preds = %55
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %65 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %66 = load i32, i32* @apply_constraint_to_size, align 4
  %67 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %68 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %69 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %64, i32 0, i32 %65, i32 %66, i32* null, i32 %67, i32 %68, i32 -1)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %84

73:                                               ; preds = %63
  %74 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %75 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %76 = load i32, i32* @apply_constraint_to_size, align 4
  %77 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %78 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %79 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %74, i32 0, i32 %75, i32 %76, i32* null, i32 %77, i32 %78, i32 -1)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %84

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83, %82, %72, %62, %54
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

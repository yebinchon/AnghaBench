; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_reset_buf_state.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_reset_buf_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_client = type { i32, %struct.audio_port_data* }
%struct.audio_port_data = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio_client*)* @q6asm_reset_buf_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @q6asm_reset_buf_state(%struct.audio_client* %0) #0 {
  %2 = alloca %struct.audio_client*, align 8
  %3 = alloca %struct.audio_port_data*, align 8
  %4 = alloca i64, align 8
  store %struct.audio_client* %0, %struct.audio_client** %2, align 8
  store %struct.audio_port_data* null, %struct.audio_port_data** %3, align 8
  %5 = load %struct.audio_client*, %struct.audio_client** %2, align 8
  %6 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %5, i32 0, i32 0
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.audio_client*, %struct.audio_client** %2, align 8
  %10 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %9, i32 0, i32 1
  %11 = load %struct.audio_port_data*, %struct.audio_port_data** %10, align 8
  %12 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %13 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %11, i64 %12
  store %struct.audio_port_data* %13, %struct.audio_port_data** %3, align 8
  %14 = load %struct.audio_port_data*, %struct.audio_port_data** %3, align 8
  %15 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.audio_client*, %struct.audio_client** %2, align 8
  %17 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %16, i32 0, i32 1
  %18 = load %struct.audio_port_data*, %struct.audio_port_data** %17, align 8
  %19 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %20 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %18, i64 %19
  store %struct.audio_port_data* %20, %struct.audio_port_data** %3, align 8
  %21 = load %struct.audio_port_data*, %struct.audio_port_data** %3, align 8
  %22 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.audio_client*, %struct.audio_client** %2, align 8
  %24 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %23, i32 0, i32 0
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

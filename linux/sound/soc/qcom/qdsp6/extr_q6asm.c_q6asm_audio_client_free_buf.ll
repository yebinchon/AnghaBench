; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_audio_client_free_buf.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_audio_client_free_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_client = type { i32 }
%struct.audio_port_data = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio_client*, %struct.audio_port_data*)* @q6asm_audio_client_free_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @q6asm_audio_client_free_buf(%struct.audio_client* %0, %struct.audio_port_data* %1) #0 {
  %3 = alloca %struct.audio_client*, align 8
  %4 = alloca %struct.audio_port_data*, align 8
  %5 = alloca i64, align 8
  store %struct.audio_client* %0, %struct.audio_client** %3, align 8
  store %struct.audio_port_data* %1, %struct.audio_port_data** %4, align 8
  %6 = load %struct.audio_client*, %struct.audio_client** %3, align 8
  %7 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.audio_port_data*, %struct.audio_port_data** %4, align 8
  %11 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.audio_port_data*, %struct.audio_port_data** %4, align 8
  %13 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @kfree(i32* %14)
  %16 = load %struct.audio_port_data*, %struct.audio_port_data** %4, align 8
  %17 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  %18 = load %struct.audio_client*, %struct.audio_client** %3, align 8
  %19 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %18, i32 0, i32 0
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

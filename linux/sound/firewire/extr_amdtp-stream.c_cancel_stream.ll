; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_cancel_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_cancel_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32, i32 }

@SNDRV_PCM_POS_XRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdtp_stream*)* @cancel_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cancel_stream(%struct.amdtp_stream* %0) #0 {
  %2 = alloca %struct.amdtp_stream*, align 8
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %2, align 8
  %3 = load %struct.amdtp_stream*, %struct.amdtp_stream** %2, align 8
  %4 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %3, i32 0, i32 0
  store i32 -1, i32* %4, align 4
  %5 = call i64 (...) @in_interrupt()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.amdtp_stream*, %struct.amdtp_stream** %2, align 8
  %9 = call i32 @amdtp_stream_pcm_abort(%struct.amdtp_stream* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.amdtp_stream*, %struct.amdtp_stream** %2, align 8
  %12 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SNDRV_PCM_POS_XRUN, align 4
  %15 = call i32 @WRITE_ONCE(i32 %13, i32 %14)
  ret void
}

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @amdtp_stream_pcm_abort(%struct.amdtp_stream*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

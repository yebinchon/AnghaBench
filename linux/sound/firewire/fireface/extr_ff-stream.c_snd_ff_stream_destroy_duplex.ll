; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-stream.c_snd_ff_stream_destroy_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-stream.c_snd_ff_stream_destroy_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ff = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_ff_stream_destroy_duplex(%struct.snd_ff* %0) #0 {
  %2 = alloca %struct.snd_ff*, align 8
  store %struct.snd_ff* %0, %struct.snd_ff** %2, align 8
  %3 = load %struct.snd_ff*, %struct.snd_ff** %2, align 8
  %4 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %3, i32 0, i32 2
  %5 = call i32 @amdtp_domain_destroy(i32* %4)
  %6 = load %struct.snd_ff*, %struct.snd_ff** %2, align 8
  %7 = load %struct.snd_ff*, %struct.snd_ff** %2, align 8
  %8 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %7, i32 0, i32 1
  %9 = call i32 @destroy_stream(%struct.snd_ff* %6, i32* %8)
  %10 = load %struct.snd_ff*, %struct.snd_ff** %2, align 8
  %11 = load %struct.snd_ff*, %struct.snd_ff** %2, align 8
  %12 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %11, i32 0, i32 0
  %13 = call i32 @destroy_stream(%struct.snd_ff* %10, i32* %12)
  ret void
}

declare dso_local i32 @amdtp_domain_destroy(i32*) #1

declare dso_local i32 @destroy_stream(%struct.snd_ff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

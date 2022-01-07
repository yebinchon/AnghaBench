; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-stream.c_destroy_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-stream.c_destroy_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tscm = type { i32, i32, %struct.amdtp_stream }
%struct.amdtp_stream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_tscm*, %struct.amdtp_stream*)* @destroy_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_stream(%struct.snd_tscm* %0, %struct.amdtp_stream* %1) #0 {
  %3 = alloca %struct.snd_tscm*, align 8
  %4 = alloca %struct.amdtp_stream*, align 8
  store %struct.snd_tscm* %0, %struct.snd_tscm** %3, align 8
  store %struct.amdtp_stream* %1, %struct.amdtp_stream** %4, align 8
  %5 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %6 = call i32 @amdtp_stream_destroy(%struct.amdtp_stream* %5)
  %7 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %8 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %9 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %8, i32 0, i32 2
  %10 = icmp eq %struct.amdtp_stream* %7, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %13 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %12, i32 0, i32 1
  %14 = call i32 @fw_iso_resources_destroy(i32* %13)
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %17 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %16, i32 0, i32 0
  %18 = call i32 @fw_iso_resources_destroy(i32* %17)
  br label %19

19:                                               ; preds = %15, %11
  ret void
}

declare dso_local i32 @amdtp_stream_destroy(%struct.amdtp_stream*) #1

declare dso_local i32 @fw_iso_resources_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux.c_sf_sample_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux.c_sf_sample_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.snd_emux.0*)* }
%struct.snd_emux.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sf_sample_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sf_sample_reset(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.snd_emux*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.snd_emux*
  store %struct.snd_emux* %5, %struct.snd_emux** %3, align 8
  %6 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %7 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.snd_emux.0*)*, i32 (%struct.snd_emux.0*)** %8, align 8
  %10 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %11 = bitcast %struct.snd_emux* %10 to %struct.snd_emux.0*
  %12 = call i32 %9(%struct.snd_emux.0* %11)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux.c_sf_sample_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux.c_sf_sample_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sf_sample = type { i32 }
%struct.snd_util_memhdr = type { i32 }
%struct.snd_emux = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.snd_emux.0*, %struct.snd_sf_sample*, %struct.snd_util_memhdr*)* }
%struct.snd_emux.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.snd_sf_sample*, %struct.snd_util_memhdr*)* @sf_sample_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sf_sample_free(i8* %0, %struct.snd_sf_sample* %1, %struct.snd_util_memhdr* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_sf_sample*, align 8
  %6 = alloca %struct.snd_util_memhdr*, align 8
  %7 = alloca %struct.snd_emux*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.snd_sf_sample* %1, %struct.snd_sf_sample** %5, align 8
  store %struct.snd_util_memhdr* %2, %struct.snd_util_memhdr** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.snd_emux*
  store %struct.snd_emux* %9, %struct.snd_emux** %7, align 8
  %10 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %11 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.snd_emux.0*, %struct.snd_sf_sample*, %struct.snd_util_memhdr*)*, i32 (%struct.snd_emux.0*, %struct.snd_sf_sample*, %struct.snd_util_memhdr*)** %12, align 8
  %14 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %15 = bitcast %struct.snd_emux* %14 to %struct.snd_emux.0*
  %16 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %5, align 8
  %17 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %6, align 8
  %18 = call i32 %13(%struct.snd_emux.0* %15, %struct.snd_sf_sample* %16, %struct.snd_util_memhdr* %17)
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

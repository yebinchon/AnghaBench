; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_patch.c_snd_emu8000_sample_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_patch.c_snd_emu8000_sample_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { i32 }
%struct.snd_sf_sample = type { i32* }
%struct.snd_util_memhdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu8000_sample_free(%struct.snd_emux* %0, %struct.snd_sf_sample* %1, %struct.snd_util_memhdr* %2) #0 {
  %4 = alloca %struct.snd_emux*, align 8
  %5 = alloca %struct.snd_sf_sample*, align 8
  %6 = alloca %struct.snd_util_memhdr*, align 8
  store %struct.snd_emux* %0, %struct.snd_emux** %4, align 8
  store %struct.snd_sf_sample* %1, %struct.snd_sf_sample** %5, align 8
  store %struct.snd_util_memhdr* %2, %struct.snd_util_memhdr** %6, align 8
  %7 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %5, align 8
  %8 = getelementptr inbounds %struct.snd_sf_sample, %struct.snd_sf_sample* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %6, align 8
  %13 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %5, align 8
  %14 = getelementptr inbounds %struct.snd_sf_sample, %struct.snd_sf_sample* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @snd_util_mem_free(%struct.snd_util_memhdr* %12, i32* %15)
  %17 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %5, align 8
  %18 = getelementptr inbounds %struct.snd_sf_sample, %struct.snd_sf_sample* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %11, %3
  ret i32 0
}

declare dso_local i32 @snd_util_mem_free(%struct.snd_util_memhdr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

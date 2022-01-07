; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_soundfont.c_snd_soundfont_remove_samples.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_soundfont.c_snd_soundfont_remove_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sf_list = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soundfont_remove_samples(%struct.snd_sf_list* %0) #0 {
  %2 = alloca %struct.snd_sf_list*, align 8
  store %struct.snd_sf_list* %0, %struct.snd_sf_list** %2, align 8
  %3 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %4 = call i32 @lock_preset(%struct.snd_sf_list* %3)
  %5 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %6 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32 (i32)*, i32 (i32)** %7, align 8
  %9 = icmp ne i32 (i32)* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %12 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32 (i32)*, i32 (i32)** %13, align 8
  %15 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %16 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %14(i32 %18)
  br label %20

20:                                               ; preds = %10, %1
  %21 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %22 = call i32 @snd_sf_clear(%struct.snd_sf_list* %21)
  %23 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %24 = call i32 @unlock_preset(%struct.snd_sf_list* %23)
  ret i32 0
}

declare dso_local i32 @lock_preset(%struct.snd_sf_list*) #1

declare dso_local i32 @snd_sf_clear(%struct.snd_sf_list*) #1

declare dso_local i32 @unlock_preset(%struct.snd_sf_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

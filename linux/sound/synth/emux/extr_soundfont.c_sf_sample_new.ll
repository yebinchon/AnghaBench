; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_soundfont.c_sf_sample_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_soundfont.c_sf_sample_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sf_sample = type { %struct.snd_sf_sample* }
%struct.snd_sf_list = type { i32 }
%struct.snd_soundfont = type { %struct.snd_sf_sample* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_sf_sample* (%struct.snd_sf_list*, %struct.snd_soundfont*)* @sf_sample_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_sf_sample* @sf_sample_new(%struct.snd_sf_list* %0, %struct.snd_soundfont* %1) #0 {
  %3 = alloca %struct.snd_sf_sample*, align 8
  %4 = alloca %struct.snd_sf_list*, align 8
  %5 = alloca %struct.snd_soundfont*, align 8
  %6 = alloca %struct.snd_sf_sample*, align 8
  store %struct.snd_sf_list* %0, %struct.snd_sf_list** %4, align 8
  store %struct.snd_soundfont* %1, %struct.snd_soundfont** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.snd_sf_sample* @kzalloc(i32 8, i32 %7)
  store %struct.snd_sf_sample* %8, %struct.snd_sf_sample** %6, align 8
  %9 = icmp eq %struct.snd_sf_sample* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.snd_sf_sample* null, %struct.snd_sf_sample** %3, align 8
  br label %25

11:                                               ; preds = %2
  %12 = load %struct.snd_soundfont*, %struct.snd_soundfont** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %12, i32 0, i32 0
  %14 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %13, align 8
  %15 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  %16 = getelementptr inbounds %struct.snd_sf_sample, %struct.snd_sf_sample* %15, i32 0, i32 0
  store %struct.snd_sf_sample* %14, %struct.snd_sf_sample** %16, align 8
  %17 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  %18 = load %struct.snd_soundfont*, %struct.snd_soundfont** %5, align 8
  %19 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %18, i32 0, i32 0
  store %struct.snd_sf_sample* %17, %struct.snd_sf_sample** %19, align 8
  %20 = load %struct.snd_sf_list*, %struct.snd_sf_list** %4, align 8
  %21 = load %struct.snd_soundfont*, %struct.snd_soundfont** %5, align 8
  %22 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  %23 = call i32 @set_sample_counter(%struct.snd_sf_list* %20, %struct.snd_soundfont* %21, %struct.snd_sf_sample* %22)
  %24 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  store %struct.snd_sf_sample* %24, %struct.snd_sf_sample** %3, align 8
  br label %25

25:                                               ; preds = %11, %10
  %26 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %3, align 8
  ret %struct.snd_sf_sample* %26
}

declare dso_local %struct.snd_sf_sample* @kzalloc(i32, i32) #1

declare dso_local i32 @set_sample_counter(%struct.snd_sf_list*, %struct.snd_soundfont*, %struct.snd_sf_sample*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

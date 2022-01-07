; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi_emul.c_snd_midi_channel_init_set.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi_emul.c_snd_midi_channel_init_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_channel = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_midi_channel* (i32)* @snd_midi_channel_init_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_midi_channel* @snd_midi_channel_init_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_midi_channel*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.snd_midi_channel* @kmalloc_array(i32 %5, i32 4, i32 %6)
  store %struct.snd_midi_channel* %7, %struct.snd_midi_channel** %3, align 8
  %8 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %3, align 8
  %9 = icmp ne %struct.snd_midi_channel* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %22, %10
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %16, i64 %18
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @snd_midi_channel_init(%struct.snd_midi_channel* %19, i32 %20)
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %11

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %3, align 8
  ret %struct.snd_midi_channel* %27
}

declare dso_local %struct.snd_midi_channel* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @snd_midi_channel_init(%struct.snd_midi_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
